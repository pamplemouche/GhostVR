.class public interface abstract Lorg/webrtc/VideoCapturer;
.super Ljava/lang/Object;
.source "VideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoCapturer$NativeObserver;,
        Lorg/webrtc/VideoCapturer$CapturerObserver;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getSupportedFormats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSurfaceTextureHelper()Lorg/webrtc/SurfaceTextureHelper;
.end method

.method public abstract startCapture(IIILandroid/content/Context;Lorg/webrtc/VideoCapturer$CapturerObserver;)V
.end method

.method public abstract stopCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
