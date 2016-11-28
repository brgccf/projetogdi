package code.gdi;

import code.gdi.exceptions.RepositorioInvalidoException;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import code.gdi.javafx.EventsTimeline;
import code.gdi.javafx.StageTools;

import java.util.Optional;
import java.util.Properties;

public class Main extends Application {
    private static final boolean developerMode = true;
    private static final boolean waitOnExcept = false;

    public static void main(String[] args) {
        launch(args);
    }

    public static boolean isWaitOnExcept() {
        return waitOnExcept;
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        Thread.setDefaultUncaughtExceptionHandler((t, e) -> {
            if (developerMode)
                e.printStackTrace();
            try {
                StageTools.exception((Exception) e, waitOnExcept);
            } catch (Exception e1) {
                EventsTimeline eventsTimeline = new EventsTimeline();
                eventsTimeline.add(event -> {
                    StageTools.exception(new RepositorioInvalidoException(), false);
                }, 2048);
                for (int i = 0; i < 32; i++)
                    eventsTimeline.add(event -> {
                        primaryStage.close();
                    }, 128);
                eventsTimeline.play();
            }
        });

        primaryStage.setOnCloseRequest(event -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle(null);
            alert.setHeaderText("Você tem certeza que deseja sair?");
            alert.setContentText(null);

            Button exitButton = (Button) alert.getDialogPane().lookupButton(ButtonType.OK);
            exitButton.setText("Sair");

            Optional<ButtonType> result = alert.showAndWait();
            if (result.isPresent() && result.get() == ButtonType.OK)
                primaryStage.close();
            else
                event.consume();
        });

        Properties messages = new Properties();
        messages.loadFromXML(getClass().getResourceAsStream("/values/messages.xml"));
        FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("/scenes/main.fxml"));
        Parent root = fxmlLoader.load();
        root.minHeight(Double.parseDouble(messages.getProperty("minHeight")));
        root.minWidth(Double.parseDouble(messages.getProperty("minWidth")));
        Scene scene = new Scene(
                root,
                Double.parseDouble(messages.getProperty("prefWidth")),
                Double.parseDouble(messages.getProperty("prefHeight"))
        );
        primaryStage.setScene(scene);
        primaryStage.setTitle(messages.getProperty("app_name"));
        primaryStage.setMaxWidth(Double.parseDouble(messages.getProperty("maxWidth")));
        primaryStage.setMaxHeight(Double.parseDouble(messages.getProperty("maxHeight")));
        try {
            new StageTools().setupOSXStage(primaryStage);
        } catch (Exception ignored) {
        }
        primaryStage.setMinWidth(Double.parseDouble(messages.getProperty("minWidth")));
        primaryStage.setMinHeight(Double.parseDouble(messages.getProperty("minHeight")));
        primaryStage.show();
    }
}
