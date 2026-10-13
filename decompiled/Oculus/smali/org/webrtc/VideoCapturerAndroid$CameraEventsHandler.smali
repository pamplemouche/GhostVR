.class public interface abstract Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;
.super Ljava/lang/Object;
.source "VideoCapturerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoCapturerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraEventsHandler"
.end annotation


# virtual methods
.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraError(Ljava/lang/String;)V
.end method

.method public abstract onCameraFreezed(Ljava/lang/String;)V
.end method

.method public abstract onCameraOpening(I)V
.end method

.method public abstract onFirstFrameAvailable()V
.end method
