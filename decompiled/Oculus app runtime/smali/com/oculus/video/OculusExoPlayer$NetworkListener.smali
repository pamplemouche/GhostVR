.class Lcom/oculus/video/OculusExoPlayer$NetworkListener;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;
.implements Lcom/oculus/video/upstream/HttpConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;",
        "Lcom/oculus/video/upstream/HttpConnectionListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

.field private eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

.field private transferListener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->transferListener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    .line 141
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/video/OculusExoPlayer$1;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/oculus/video/OculusExoPlayer$NetworkListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBandwidthSample(IJJ)V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 161
    invoke-interface/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    :cond_0
    return-void
.end method

.method public onBytesTransferred(Ljava/lang/Object;I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->transferListener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onConnect(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    .line 168
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    if-eqz v0, :cond_0

    .line 173
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    move-object v3, v0

    .line 178
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/oculus/video/VideoPlayer$EventListener;->onHttpConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public onTransferEnd(Ljava/lang/Object;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->transferListener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p1}, Lcom/oculus/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTransferStart(Ljava/lang/Object;Lcom/oculus/android/exoplayer2/upstream/DataSpec;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->transferListener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/oculus/android/exoplayer2/upstream/DataSpec;)V

    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    .line 154
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->transferListener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    .line 155
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    return-void
.end method

.method reset(Lcom/oculus/video/VideoPlayer$EventListener;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/VideoPlayer$EventListener;",
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;",
            ")V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    .line 148
    iput-object p2, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->transferListener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    .line 149
    iput-object p3, p0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    return-void
.end method
