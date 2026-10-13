.class public Lcom/facebook/imageutils/JfifUtil;
.super Ljava/lang/Object;
.source "JfifUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoRotateAngleFromOrientation(I)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/imageutils/TiffUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v0

    return v0
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageutils/JfifUtil;->moveToAPP1EXIF(Ljava/io/InputStream;)I

    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 75
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/imageutils/TiffUtil;->readOrientationFromTIFF(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isSOFn(I)Z
    .locals 1

    .prologue
    .line 125
    packed-switch p0, :pswitch_data_0

    .line 141
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 139
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static moveToAPP1EXIF(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 152
    const/16 v0, 0xe1

    invoke-static {p0, v0}, Lcom/facebook/imageutils/JfifUtil;->moveToMarker(Ljava/io/InputStream;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0, v3, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 156
    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 157
    const/4 v2, 0x4

    invoke-static {p0, v2, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 158
    add-int/lit8 v0, v0, -0x4

    .line 159
    invoke-static {p0, v3, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v3

    .line 160
    add-int/lit8 v0, v0, -0x2

    .line 161
    const v4, 0x45786966

    if-ne v2, v4, :cond_0

    if-nez v3, :cond_0

    .line 167
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static moveToMarker(Ljava/io/InputStream;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    .line 92
    :goto_1
    if-ne v2, v3, :cond_1

    .line 93
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    goto :goto_1

    .line 96
    :cond_1
    const/16 v4, 0xc0

    if-ne p1, v4, :cond_3

    invoke-static {v2}, Lcom/facebook/imageutils/JfifUtil;->isSOFn(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    :cond_2
    :goto_2
    return v0

    .line 99
    :cond_3
    if-eq v2, p1, :cond_2

    .line 104
    const/16 v4, 0xd8

    if-eq v2, v4, :cond_0

    if-eq v2, v0, :cond_0

    .line 110
    const/16 v4, 0xd9

    if-eq v2, v4, :cond_4

    const/16 v4, 0xda

    if-ne v2, v4, :cond_5

    :cond_4
    move v0, v1

    .line 111
    goto :goto_2

    .line 116
    :cond_5
    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/facebook/imageutils/StreamProcessor;->readPackedInt(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 118
    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    :cond_6
    move v0, v1

    .line 120
    goto :goto_2
.end method
