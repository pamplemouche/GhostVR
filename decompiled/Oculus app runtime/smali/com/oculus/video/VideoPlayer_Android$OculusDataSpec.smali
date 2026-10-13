.class public Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;
.super Lcom/oculus/android/exoplayer2/upstream/DataSpec;
.source "VideoPlayer_Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoPlayer_Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OculusDataSpec"
.end annotation


# instance fields
.field public final ipAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/video/VideoPlayer_Android;


# direct methods
.method public constructor <init>(Lcom/oculus/video/VideoPlayer_Android;Lcom/oculus/android/exoplayer2/upstream/DataSpec;)V
    .locals 11

    .line 85
    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;->this$0:Lcom/oculus/video/VideoPlayer_Android;

    .line 86
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v2, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v3, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v5, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v7, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v9, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v10, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 97
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 102
    :goto_0
    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;->ipAddress:Ljava/lang/String;

    return-void
.end method
