.class public Lorg/webrtc/RtpReceiver;
.super Ljava/lang/Object;
.source "RtpReceiver.java"


# instance fields
.field private cachedTrack:Lorg/webrtc/MediaStreamTrack;

.field final nativeRtpReceiver:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lorg/webrtc/RtpReceiver;->nativeRtpReceiver:J

    .line 21
    invoke-static {p1, p2}, Lorg/webrtc/RtpReceiver;->nativeGetTrack(J)J

    move-result-wide v0

    .line 23
    new-instance v2, Lorg/webrtc/MediaStreamTrack;

    invoke-direct {v2, v0, v1}, Lorg/webrtc/MediaStreamTrack;-><init>(J)V

    iput-object v2, p0, Lorg/webrtc/RtpReceiver;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    .line 24
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeGetTrack(J)J
.end method

.method private static native nativeId(J)Ljava/lang/String;
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/webrtc/RtpReceiver;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/MediaStreamTrack;->dispose()V

    .line 36
    iget-wide v0, p0, Lorg/webrtc/RtpReceiver;->nativeRtpReceiver:J

    invoke-static {v0, v1}, Lorg/webrtc/RtpReceiver;->free(J)V

    .line 37
    return-void
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/webrtc/RtpReceiver;->nativeRtpReceiver:J

    invoke-static {v0, v1}, Lorg/webrtc/RtpReceiver;->nativeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public track()Lorg/webrtc/MediaStreamTrack;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/webrtc/RtpReceiver;->cachedTrack:Lorg/webrtc/MediaStreamTrack;

    return-object v0
.end method
