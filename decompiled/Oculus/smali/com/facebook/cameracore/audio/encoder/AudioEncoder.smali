.class public interface abstract Lcom/facebook/cameracore/audio/encoder/AudioEncoder;
.super Ljava/lang/Object;
.source "AudioEncoder.java"

# interfaces
.implements Lcom/facebook/cameracore/audio/common/AudioPipelineOutput;
.implements Lcom/facebook/cameracore/common/MediaFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;,
        Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;
    }
.end annotation


# virtual methods
.method public abstract inputData([BIJ)V
.end method

.method public abstract prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end method

.method public abstract start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end method

.method public abstract stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end method
