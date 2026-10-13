.class final Lcom/oculus/horizon/capture/CaptureDelegateFactory;
.super Ljava/lang/Object;
.source "CaptureDelegateFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;Z)Lcom/oculus/horizon/capture/CaptureDelegate;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/capture/LegacyCapture;-><init>(Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;Z)V

    return-object v0
.end method
