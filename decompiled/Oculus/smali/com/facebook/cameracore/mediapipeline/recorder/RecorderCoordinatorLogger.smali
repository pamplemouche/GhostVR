.class public interface abstract Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorLogger;
.super Ljava/lang/Object;
.source "RecorderCoordinatorLogger.java"


# virtual methods
.method public abstract logEventFailed(I)V
.end method

.method public abstract logEventFinished(I)V
.end method

.method public abstract logEventStarted(I)V
.end method

.method public abstract logWaterfallError(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract logWaterfallEvent(Ljava/lang/String;Ljava/util/Map;)V
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
