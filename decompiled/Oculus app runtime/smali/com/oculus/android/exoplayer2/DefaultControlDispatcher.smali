.class public Lcom/oculus/android/exoplayer2/DefaultControlDispatcher;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/ControlDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSeekTo(Lcom/oculus/android/exoplayer2/Player;IJ)Z
    .locals 0

    .line 34
    invoke-interface {p1, p2, p3, p4}, Lcom/oculus/android/exoplayer2/Player;->seekTo(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetPlayWhenReady(Lcom/oculus/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 28
    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetRepeatMode(Lcom/oculus/android/exoplayer2/Player;I)Z
    .locals 0

    .line 40
    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/Player;->setRepeatMode(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetShuffleModeEnabled(Lcom/oculus/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 46
    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method
