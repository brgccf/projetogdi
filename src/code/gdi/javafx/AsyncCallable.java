package code.gdi.javafx;

import code.gdi.Main;
import javafx.application.Platform;

import java.util.concurrent.Callable;

/**
 * Created by Pedro Tôrres on 5/10/16.
 * © 2016 Singularity Systems
 */
public class AsyncCallable extends Thread {
    private static Runnable emptyRunnable = () -> {
    };

    public AsyncCallable(Callable callable, boolean waitOnCatch, Runnable onCatch, Runnable onFinally) {
        super(() -> {
            try {
                callable.call();
            } catch (Exception e) {
                Platform.runLater(() -> StageTools.exception(e, waitOnCatch));
                onCatch.run();
            } finally {
                onFinally.run();
            }
        });
    }

    public AsyncCallable(Callable callable, boolean waitOnCatch, Runnable onCatch) {
        this(callable, waitOnCatch, onCatch, AsyncCallable.emptyRunnable);
    }

    public AsyncCallable(Callable callable, boolean waitOnCatch) {
        this(callable, waitOnCatch, AsyncCallable.emptyRunnable, AsyncCallable.emptyRunnable);
    }

    public AsyncCallable(Callable callable) {
        this(callable, Main.isWaitOnExcept(), AsyncCallable.emptyRunnable, AsyncCallable.emptyRunnable);
    }
}
