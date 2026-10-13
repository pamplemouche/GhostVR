.class public final Lcom/facebook/cameracore/util/MediaCodecFactory;
.super Ljava/lang/Object;
.source "MediaCodecFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodingMediaCodec(Ljava/lang/String;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v2

    :goto_0
    const/4 v1, 0x3

    if-ge v3, v1, :cond_2

    .line 40
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 41
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, p1, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    if-nez v1, :cond_1

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to create media codec encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    :cond_0
    throw v0

    .line 43
    :catch_0
    move-exception v0

    .line 38
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 54
    :cond_1
    return-object v1

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method
