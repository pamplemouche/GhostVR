.class public interface abstract Lcom/facebook/cameracore/recording/RecordingController;
.super Ljava/lang/Object;
.source "RecordingController.java"


# virtual methods
.method public abstract prepare(Ljava/util/List;Lcom/facebook/cameracore/common/StateCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/cameracore/common/StateCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startRecording(Ljava/io/File;Lcom/facebook/cameracore/recording/common/RecordingCallback;)V
.end method

.method public abstract stopRecording()V
.end method
