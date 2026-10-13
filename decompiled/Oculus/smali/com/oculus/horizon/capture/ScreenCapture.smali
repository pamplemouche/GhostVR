.class public Lcom/oculus/horizon/capture/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCaptureDelegate:Lcom/oculus/horizon/capture/CaptureDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oculus/horizon/capture/ScreenCapture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/capture/ScreenCapture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;Z)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1, p2}, Lcom/oculus/horizon/capture/CaptureDelegateFactory;->create(Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;Z)Lcom/oculus/horizon/capture/CaptureDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/capture/ScreenCapture;->mCaptureDelegate:Lcom/oculus/horizon/capture/CaptureDelegate;

    .line 29
    return-void
.end method


# virtual methods
.method public onAudioSampleAvailable([BI)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/capture/ScreenCapture;->mCaptureDelegate:Lcom/oculus/horizon/capture/CaptureDelegate;

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/capture/CaptureDelegate;->onAudioSampleAvailable([BI)V

    .line 48
    return-void
.end method

.method public startRecordVideo(Ljava/io/File;IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/capture/ScreenCapture;->mCaptureDelegate:Lcom/oculus/horizon/capture/CaptureDelegate;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oculus/horizon/capture/CaptureDelegate;->startRecordVideo(Ljava/io/File;IIII)V

    .line 40
    return-void
.end method

.method public stopRecordVideo()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/capture/ScreenCapture;->mCaptureDelegate:Lcom/oculus/horizon/capture/CaptureDelegate;

    invoke-interface {v0}, Lcom/oculus/horizon/capture/CaptureDelegate;->stopRecordVideo()V

    .line 44
    return-void
.end method
