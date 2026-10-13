.class public Lcom/oculus/video/projection/VideoProjection;
.super Ljava/lang/Object;
.source "VideoProjection.java"


# static fields
.field public static final METADATA_SOURCE_API:Ljava/lang/String; = "API"

.field public static final METADATA_SOURCE_FB:Ljava/lang/String; = "FB"

.field public static final METADATA_SOURCE_V1:Ljava/lang/String; = "V1"

.field public static final METADATA_SOURCE_V2:Ljava/lang/String; = "V2"

.field private static final STEREO_MODE_LEFT_RIGHT:Ljava/lang/String; = "left-right"

.field private static final STEREO_MODE_MONO:Ljava/lang/String; = "mono"

.field private static final STEREO_MODE_TOP_BOTTOM:Ljava/lang/String; = "top-bottom"

.field private static final TAG:Ljava/lang/String; = "VideoProjection"

.field private static final XML_TAG_CROPPED_HEIGHT:Ljava/lang/String; = "GSpherical:CroppedAreaImageHeightPixels"

.field private static final XML_TAG_CROPPED_WIDTH:Ljava/lang/String; = "GSpherical:CroppedAreaImageWidthPixels"

.field private static final XML_TAG_FULL_PANO_HEIGHT:Ljava/lang/String; = "GSpherical:FullPanoHeightPixels"

.field private static final XML_TAG_FULL_PANO_WIDTH:Ljava/lang/String; = "GSpherical:FullPanoWidthPixels"

.field private static final XML_TAG_PROJECTION_TYPE:Ljava/lang/String; = "GSpherical:ProjectionType"

.field private static final XML_TAG_STEREO_MODE:Ljava/lang/String; = "GSpherical:StereoMode"


# instance fields
.field private final isFullRect3D:Z

.field private final metadataSource:Ljava/lang/String;

.field private final projectionData:Lcom/oculus/video/projection/ProjectionData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final stereoMode:Lcom/oculus/video/projection/ImageStereoMode;


# direct methods
.method private constructor <init>(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "V2"

    .line 287
    iput-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    .line 291
    new-instance v0, Lcom/oculus/video/projection/Mp4ProjectionData;

    invoke-direct {v0}, Lcom/oculus/video/projection/Mp4ProjectionData;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    .line 293
    invoke-direct {p0, p1}, Lcom/oculus/video/projection/VideoProjection;->validateFormat(Lcom/oculus/android/exoplayer2/Format;)V

    .line 295
    iget v0, p1, Lcom/oculus/android/exoplayer2/Format;->stereoMode:I

    invoke-static {v0}, Lcom/oculus/video/projection/ImageStereoMode;->fromExoPlayer(I)Lcom/oculus/video/projection/ImageStereoMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->projectionData:[B

    invoke-virtual {v0, p1}, Lcom/oculus/video/projection/ProjectionData;->parse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 301
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse parse projection data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    throw p1
.end method

.method private constructor <init>(Lcom/oculus/video/projection/ProjectionType;Lcom/oculus/video/projection/ImageStereoMode;Z)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FB"

    .line 188
    iput-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/oculus/video/projection/DefaultProjectionData;

    invoke-direct {v0, p1}, Lcom/oculus/video/projection/DefaultProjectionData;-><init>(Lcom/oculus/video/projection/ProjectionType;)V

    iput-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    .line 190
    iput-object p2, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 191
    sget-object p1, Lcom/oculus/video/projection/VideoProjection$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    invoke-virtual {p2}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 201
    iput-boolean p2, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 196
    iget-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    iget-object p1, p1, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object p3, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-ne p1, p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oculus/video/projection/ProjectionData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/video/projection/ImageStereoMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    .line 395
    iput-object p2, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    .line 396
    iput-object p3, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 397
    iput-boolean p4, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProjectionMetadataSource"

    .line 208
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "V2"

    const-string v3, "V1"

    const-string v4, "FB"

    const/4 v5, -0x1

    const-string v6, "API"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_7

    .line 209
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v10, 0x8bc

    if-eq v1, v10, :cond_2

    const/16 v10, 0xa9b

    if-eq v1, v10, :cond_1

    const/16 v10, 0xa9c

    if-eq v1, v10, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v8, :cond_5

    if-eq v0, v7, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v4

    goto :goto_2

    :cond_5
    move-object v6, v2

    goto :goto_2

    :cond_6
    move-object v6, v3

    .line 224
    :cond_7
    :goto_2
    iput-object v6, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/oculus/video/projection/DefaultProjectionData;

    invoke-direct {v0, p1}, Lcom/oculus/video/projection/DefaultProjectionData;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    const-string v0, "StereoMode"

    .line 228
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 229
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "3DTBF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_1
    const-string v0, "3DRLF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_2
    const-string v0, "3DLRF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_3
    const-string v0, "3DBTF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x7

    goto :goto_3

    :sswitch_4
    const-string v0, "3DTB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x4

    goto :goto_3

    :sswitch_5
    const-string v0, "3DRL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_6
    const-string v0, "3DLR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x0

    goto :goto_3

    :sswitch_7
    const-string v0, "3DBT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_8
    const-string v0, "2D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v5, 0x8

    :cond_8
    :goto_3
    packed-switch v5, :pswitch_data_0

    .line 267
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 268
    iput-boolean v9, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto/16 :goto_8

    .line 263
    :pswitch_0
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 264
    iput-boolean v9, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto/16 :goto_8

    .line 259
    :pswitch_1
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_BOTTOM_TOP_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 260
    iget-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    iget-object p1, p1, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-ne p1, v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 255
    :pswitch_2
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_BOTTOM_TOP_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 256
    iput-boolean v9, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 251
    :pswitch_3
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 252
    iget-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    iget-object p1, p1, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-ne p1, v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    iput-boolean v8, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 247
    :pswitch_4
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 248
    iput-boolean v9, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 243
    :pswitch_5
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_RIGHT_LEFT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 244
    iget-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    iget-object p1, p1, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-ne p1, v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    iput-boolean v8, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 239
    :pswitch_6
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_RIGHT_LEFT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 240
    iput-boolean v9, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 235
    :pswitch_7
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 236
    iget-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    iget-object p1, p1, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-ne p1, v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    :goto_7
    iput-boolean v8, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 231
    :pswitch_8
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 232
    iput-boolean v9, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    goto :goto_8

    .line 272
    :cond_d
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 273
    iput-boolean v9, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0x652 -> :sswitch_8
        0x183683 -> :sswitch_7
        0x1837b7 -> :sswitch_6
        0x18386b -> :sswitch_5
        0x18389f -> :sswitch_4
        0x2ee9a23 -> :sswitch_3
        0x2eebf6f -> :sswitch_2
        0x2eed53b -> :sswitch_1
        0x2eedb87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromFBProjection(Lcom/oculus/video/source/dash/OculusDashManifest;)Lcom/oculus/video/projection/VideoProjection;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    new-instance v0, Lcom/oculus/video/projection/VideoProjection;

    iget-object v1, p0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    iget-object v2, p0, Lcom/oculus/video/source/dash/OculusDashManifest;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    sget-object v3, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    if-ne v2, v3, :cond_1

    sget-object p0, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oculus/video/source/dash/OculusDashManifest;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/oculus/video/projection/VideoProjection;-><init>(Lcom/oculus/video/projection/ProjectionType;Lcom/oculus/video/projection/ImageStereoMode;Z)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromSphericalV1Xml(Ljava/lang/String;)Lcom/oculus/video/projection/VideoProjection;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "0"

    const/4 v1, 0x0

    .line 329
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v3, "GSpherical:ProjectionType"

    .line 332
    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 333
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    return-object v1

    .line 338
    :cond_0
    sget-object v3, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    const-string v5, "GSpherical:StereoMode"

    const-string v6, ""

    .line 339
    invoke-static {v2, v5, v6}, Lcom/oculus/video/projection/VideoProjection;->getTagValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x333ae3

    const/4 v9, 0x0

    if-eq v7, v8, :cond_3

    const v8, 0x3d4814d6

    if-eq v7, v8, :cond_2

    const v8, 0x677d09a3

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "top-bottom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v7, "left-right"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-string v7, "mono"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v4, :cond_5

    goto :goto_2

    .line 344
    :cond_5
    sget-object v3, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    goto :goto_2

    .line 341
    :cond_6
    sget-object v3, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    :try_start_1
    const-string v4, "GSpherical:FullPanoWidthPixels"

    .line 355
    invoke-static {v2, v4, v0}, Lcom/oculus/video/projection/VideoProjection;->getTagValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "GSpherical:CroppedAreaImageWidthPixels"

    .line 356
    invoke-static {v2, v5, v0}, Lcom/oculus/video/projection/VideoProjection;->getTagValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const/high16 v6, 0x43b40000    # 360.0f

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    int-to-float v5, v5

    mul-float v5, v5, v6

    int-to-float v4, v4

    div-float v6, v5, v4

    :cond_7
    :try_start_2
    const-string v4, "GSpherical:FullPanoHeightPixels"

    .line 370
    invoke-static {v2, v4, v0}, Lcom/oculus/video/projection/VideoProjection;->getTagValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "GSpherical:CroppedAreaImageHeightPixels"

    .line 371
    invoke-static {v2, v5, v0}, Lcom/oculus/video/projection/VideoProjection;->getTagValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_4
    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    int-to-float v0, v0

    mul-float v0, v0, v2

    int-to-float v2, v4

    div-float v2, v0, v2

    .line 380
    :cond_8
    :try_start_3
    new-instance v0, Lcom/oculus/video/projection/DefaultProjectionData;

    sget-object v4, Lcom/oculus/video/projection/ProjectionType;->EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    invoke-direct {v0, v4, v6, v2}, Lcom/oculus/video/projection/DefaultProjectionData;-><init>(Lcom/oculus/video/projection/ProjectionType;FF)V

    .line 382
    new-instance v2, Lcom/oculus/video/projection/VideoProjection;

    const-string v4, "V1"

    invoke-direct {v2, v4, v0, v3, v9}, Lcom/oculus/video/projection/VideoProjection;-><init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v2

    :catch_2
    move-exception v0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing of spherical metadata failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VideoProjection"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static fromSphericalV2(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/video/projection/VideoProjection;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 279
    :try_start_0
    new-instance v1, Lcom/oculus/video/projection/VideoProjection;

    invoke-direct {v1, p0}, Lcom/oculus/video/projection/VideoProjection;-><init>(Lcom/oculus/android/exoplayer2/Format;)V

    .line 280
    invoke-virtual {v1}, Lcom/oculus/video/projection/VideoProjection;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object p0

    sget-object v2, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method private static getTagValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 308
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 309
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 310
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static sanitizeAPIProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;FI)Lcom/oculus/video/projection/VideoProjection;
    .locals 12
    .param p0    # Lcom/oculus/video/projection/VideoProjection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    const-string v1, "API"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/projection/VideoProjection;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    .line 82
    iget-object v3, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    .line 86
    sget-object v4, Lcom/oculus/video/projection/VideoProjection$1;->$SwitchMap$com$oculus$video$projection$ProjectionType:[I

    invoke-virtual {v0}, Lcom/oculus/video/projection/ProjectionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_f

    const/4 v7, 0x2

    if-eq v4, v7, :cond_f

    const/4 v8, 0x3

    if-eq v4, v8, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    new-instance v4, Lcom/oculus/video/projection/VideoProjection;

    new-instance v9, Lcom/oculus/video/projection/DefaultProjectionData;

    invoke-direct {v9, v0}, Lcom/oculus/video/projection/DefaultProjectionData;-><init>(Lcom/oculus/video/projection/ProjectionType;)V

    sget-object v10, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    if-ne v3, v10, :cond_2

    sget-object v10, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    goto :goto_0

    :cond_2
    sget-object v10, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    :goto_0
    invoke-direct {v4, v1, v9, v10, v6}, Lcom/oculus/video/projection/VideoProjection;-><init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V

    :goto_1
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    return-object p0

    .line 112
    :cond_3
    rem-int/lit16 p2, p2, 0xb4

    const/16 v4, 0x5a

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne p2, v4, :cond_4

    div-float p1, v9, p1

    .line 115
    :cond_4
    sget-object p2, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-ne v0, p2, :cond_9

    sget-object p2, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    if-eq v3, p2, :cond_9

    iget-boolean p2, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    if-nez p2, :cond_9

    const p2, 0x4017b424

    cmpl-float p2, p1, p2

    if-lez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    const v4, 0x3f97b424

    cmpg-float v4, p1, v4

    if-gez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 121
    :goto_3
    sget-object v10, Lcom/oculus/video/projection/VideoProjection$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    invoke-virtual {v3}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v5, :cond_8

    if-eq v10, v7, :cond_8

    if-eq v10, v8, :cond_7

    const/4 p2, 0x4

    if-eq v10, p2, :cond_7

    goto :goto_4

    .line 131
    :cond_7
    new-instance p0, Lcom/oculus/video/projection/VideoProjection;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oculus/video/projection/VideoProjection;-><init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V

    return-object p0

    .line 124
    :cond_8
    new-instance p0, Lcom/oculus/video/projection/VideoProjection;

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/oculus/video/projection/VideoProjection;-><init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V

    return-object p0

    .line 141
    :cond_9
    :goto_4
    sget-object p2, Lcom/oculus/video/projection/ProjectionType;->EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    if-ne v0, p2, :cond_a

    iget-object p2, v2, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget p2, p2, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovXDegrees:F

    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr p2, v4

    .line 143
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v4}, Ljava/lang/Math;->ulp(F)F

    move-result v7

    cmpg-float p2, p2, v7

    if-gez p2, :cond_a

    iget-object p2, v2, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget p2, p2, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovYDegrees:F

    sub-float/2addr p2, v4

    .line 144
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v4}, Ljava/lang/Math;->ulp(F)F

    move-result v4

    cmpg-float p2, p2, v4

    if-ltz p2, :cond_c

    :cond_a
    sget-object p2, Lcom/oculus/video/projection/ProjectionType;->VR180:Lcom/oculus/video/projection/ProjectionType;

    if-eq v0, p2, :cond_c

    sget-object p2, Lcom/oculus/video/projection/ProjectionType;->FISHEYE:Lcom/oculus/video/projection/ProjectionType;

    if-ne v0, p2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :cond_c
    :goto_5
    if-eqz v5, :cond_e

    .line 149
    sget-object p2, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    if-eq v3, p2, :cond_e

    const p2, 0x3f8ccccd    # 1.1f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_d

    .line 151
    sget-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_RIGHT_LEFT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    if-eq v3, v0, :cond_d

    .line 152
    new-instance p0, Lcom/oculus/video/projection/VideoProjection;

    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-direct {p0, v1, v2, p1, v6}, Lcom/oculus/video/projection/VideoProjection;-><init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V

    return-object p0

    :cond_d
    div-float/2addr v9, p1

    cmpl-float p1, v9, p2

    if-lez p1, :cond_e

    .line 157
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_BOTTOM_TOP_3D:Lcom/oculus/video/projection/ImageStereoMode;

    if-eq v3, p1, :cond_e

    .line 159
    new-instance p0, Lcom/oculus/video/projection/VideoProjection;

    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-direct {p0, v1, v2, p1, v6}, Lcom/oculus/video/projection/VideoProjection;-><init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V

    :cond_e
    return-object p0

    .line 90
    :cond_f
    new-instance p0, Lcom/oculus/video/projection/VideoProjection;

    new-instance p1, Lcom/oculus/video/projection/DefaultProjectionData;

    invoke-direct {p1, v0}, Lcom/oculus/video/projection/DefaultProjectionData;-><init>(Lcom/oculus/video/projection/ProjectionType;)V

    sget-object p2, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    if-ne v3, p2, :cond_10

    sget-object p2, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    goto :goto_6

    :cond_10
    sget-object p2, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    :goto_6
    invoke-direct {p0, v1, p1, p2, v6}, Lcom/oculus/video/projection/VideoProjection;-><init>(Ljava/lang/String;Lcom/oculus/video/projection/ProjectionData;Lcom/oculus/video/projection/ImageStereoMode;Z)V

    return-object p0
.end method

.method public static selectPreferred(Lcom/oculus/video/projection/VideoProjection;Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/projection/VideoProjection;
    .locals 5

    const-string v0, "V2"

    const-string v1, "V1"

    const-string v2, "FB"

    const-string v3, "API"

    .line 54
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 61
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz p1, :cond_0

    .line 63
    iget-object v4, p1, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    .line 66
    iget-object v4, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private validateFormat(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 405
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_1

    .line 408
    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->stereoMode:I

    if-ltz p1, :cond_0

    return-void

    .line 409
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid stereo mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid projection data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMetadataSource()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectionData()Lcom/oculus/video/projection/ProjectionData;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    return-object v0
.end method

.method public getProjectionType()Lcom/oculus/video/projection/ProjectionType;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    iget-object v0, v0, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    return-object v0
.end method

.method public getStereoMode()Lcom/oculus/video/projection/ImageStereoMode;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    return-object v0
.end method

.method public getStereoModeString()Ljava/lang/String;
    .locals 2

    .line 445
    sget-object v0, Lcom/oculus/video/projection/VideoProjection$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    iget-object v1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "2D"

    return-object v0

    .line 453
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    if-eqz v0, :cond_1

    const-string v0, "3DBTF"

    goto :goto_0

    :cond_1
    const-string v0, "3DBT"

    :goto_0
    return-object v0

    .line 451
    :cond_2
    iget-boolean v0, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    if-eqz v0, :cond_3

    const-string v0, "3DTBF"

    goto :goto_1

    :cond_3
    const-string v0, "3DTB"

    :goto_1
    return-object v0

    .line 449
    :cond_4
    iget-boolean v0, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    if-eqz v0, :cond_5

    const-string v0, "3DRLF"

    goto :goto_2

    :cond_5
    const-string v0, "3DRL"

    :goto_2
    return-object v0

    .line 447
    :cond_6
    iget-boolean v0, p0, Lcom/oculus/video/projection/VideoProjection;->isFullRect3D:Z

    if-eqz v0, :cond_7

    const-string v0, "3DLRF"

    goto :goto_3

    :cond_7
    const-string v0, "3DLR"

    :goto_3
    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 416
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ProjectionMetadataSource"

    .line 417
    iget-object v2, p0, Lcom/oculus/video/projection/VideoProjection;->metadataSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    iget-object v1, p0, Lcom/oculus/video/projection/VideoProjection;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    sget-object v2, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    if-eq v1, v2, :cond_0

    const-string v1, "StereoMode"

    .line 420
    invoke-virtual {p0}, Lcom/oculus/video/projection/VideoProjection;->getStereoModeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/oculus/video/projection/VideoProjection;->projectionData:Lcom/oculus/video/projection/ProjectionData;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ProjectionData;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 425
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
