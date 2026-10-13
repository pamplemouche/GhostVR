.class final Lcom/facebook/cameracore/muxing/MuxerFactory;
.super Ljava/lang/Object;
.source "MuxerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMuxer()Lcom/facebook/cameracore/muxing/Muxer;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;

    invoke-direct {v0}, Lcom/facebook/cameracore/muxing/PlatformMuxerImpl;-><init>()V

    return-object v0
.end method

.method public static getVideoOnlyMuxer()Lcom/facebook/cameracore/muxing/Muxer;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;

    invoke-direct {v0}, Lcom/facebook/cameracore/muxing/VideoOnlyMuxer;-><init>()V

    return-object v0
.end method
