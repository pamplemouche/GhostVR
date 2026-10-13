.class public interface abstract Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder;
.super Ljava/lang/Object;
.source "SurfaceVideoEncoder.java"

# interfaces
.implements Lcom/facebook/cameracore/common/MediaFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$State;,
        Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoder$Callback;
    }
.end annotation


# virtual methods
.method public abstract getInputSurface()Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end method

.method public abstract start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end method

.method public abstract stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end method
