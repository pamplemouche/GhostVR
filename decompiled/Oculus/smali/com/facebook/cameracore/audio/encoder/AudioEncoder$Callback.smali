.class public interface abstract Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;
.super Ljava/lang/Object;
.source "AudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/audio/encoder/AudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onDataAvailable(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method
