.class public interface abstract Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;
.super Ljava/lang/Object;
.source "VideoOutputProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;Landroid/view/Surface;)V
    .param p2    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;)V
.end method
