.class public Lcom/oculus/video/source/dash/OculusDashManifestParser;
.super Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;
.source "OculusDashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;,
        Lcom/oculus/video/source/dash/OculusDashManifestParser$VqmVersion;
    }
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_CONFIGURATION_ATTRIBUTE:Ljava/lang/String; = "value"

.field private static final DASH_SCHEME_ID_URI:Ljava/lang/String; = "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

.field private static final MPD_END_TAG:Ljava/lang/String; = "</MPD>"

.field private static final TAG:Ljava/lang/String; = "OculusDashManifestParser"

.field private static final VQM_DELIMITER_REGEX:Ljava/lang/String; = "\\|"


# instance fields
.field private parsedAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

.field private parsedFbVqmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private parsedProjection:Lcom/oculus/video/projection/ProjectionType;

.field private parsedProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/video/projection/ProjectionType;",
            ">;"
        }
    .end annotation
.end field

.field private parsedStereoMode:Lcom/oculus/video/projection/ImageStereoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    .line 63
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjection:Lcom/oculus/video/projection/ProjectionType;

    .line 64
    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 65
    sget-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedStereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedFbVqmMap:Ljava/util/Map;

    .line 67
    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjectionMap:Ljava/util/Map;

    return-void
.end method

.method private buildRepresentation(Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 368
    iget-object v0, p1, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 369
    iget-object v1, p1, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 370
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 372
    new-instance p3, Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p3, v1}, Lcom/oculus/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p3}, Lcom/oculus/android/exoplayer2/Format;->copyWithDrmInitData(Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 374
    iget-object v7, p1, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 375
    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v2, -0x1

    .line 376
    iget-object v5, p1, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->baseUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->segmentBase:Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->newInstance(Ljava/lang/String;JLcom/oculus/android/exoplayer2/Format;Ljava/lang/String;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object p1

    return-object p1
.end method

.method private static checkContentTypeConsistency(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 492
    :goto_0
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    return p0
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 470
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-object p0
.end method

.method private getBlended360Manifest(Ljava/util/ArrayList;)Lcom/oculus/video/source/dash/OculusDashManifest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/video/source/dash/OculusDashManifest;",
            ">;)",
            "Lcom/oculus/video/source/dash/OculusDashManifest;"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/video/source/dash/OculusDashManifest;

    .line 118
    sget-object v3, Lcom/oculus/video/source/dash/OculusDashManifestParser$1;->$SwitchMap$com$oculus$video$projection$ProjectionType:[I

    iget-object v4, v2, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    invoke-virtual {v4}, Lcom/oculus/video/projection/ProjectionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {}, Lcom/oculus/video/Settings;->blendMixed360Manifest()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0

    :cond_4
    if-nez v0, :cond_5

    return-object v1

    :cond_5
    if-nez v1, :cond_6

    return-object v0

    .line 141
    :cond_6
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifest;->generateHighQualityBlend(Lcom/oculus/video/source/dash/OculusDashManifest;)Lcom/oculus/video/source/dash/OculusDashManifest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 143
    sget-object v0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception blending manifests : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private parseFBAdaptationSetAttribs(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 177
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    iget-object v0, v0, Lcom/oculus/video/projection/ProjectionType;->videoLayout:Ljava/lang/String;

    const-string v1, "FBProjection"

    invoke-static {p1, v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    iget-object v1, v1, Lcom/oculus/video/projection/ProjectionType;->videoLayout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    invoke-static {v0}, Lcom/oculus/video/projection/ProjectionType;->fromFBProjection(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjection:Lcom/oculus/video/projection/ProjectionType;

    const-string v0, "FBStereoMode"

    const-string v1, ""

    .line 183
    invoke-static {p1, v0, v1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mono"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "top-bottom"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedStereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    goto :goto_0

    :cond_0
    const-string v0, "left-right"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    sget-object p1, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object p1, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedStereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    :cond_1
    :goto_0
    return-void
.end method

.method private parseFBRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;",
            ")",
            "Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "id"

    .line 290
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bandwidth"

    const/4 v3, -0x1

    .line 291
    invoke-static {v0, v2, v3}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v2, "mimeType"

    move-object/from16 v3, p3

    .line 293
    invoke-static {v0, v2, v3}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codecs"

    move-object/from16 v4, p4

    .line 294
    invoke-static {v0, v3, v4}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "width"

    move/from16 v4, p5

    .line 295
    invoke-static {v0, v3, v4}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "height"

    move/from16 v5, p6

    .line 296
    invoke-static {v0, v4, v5}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    move/from16 v5, p7

    .line 297
    invoke-static {v0, v5}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v5

    const-string v6, "audioSamplingRate"

    move/from16 v7, p9

    .line 299
    invoke-static {v0, v6, v7}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 301
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ""

    const-string v9, "FBVQM"

    .line 305
    invoke-static {v0, v9, v6}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\|"

    .line 306
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 310
    :try_start_0
    array-length v10, v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p4, v6

    const/4 v6, 0x2

    if-lt v10, v6, :cond_0

    const/4 v6, 0x0

    :try_start_1
    aget-object v10, v9, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 p4, v6

    :cond_0
    const/4 v6, 0x0

    :catch_1
    move-object/from16 v10, p4

    .line 314
    :goto_0
    sget-object v16, Lcom/oculus/video/source/dash/OculusDashManifestParser$VqmVersion;->CROSS_PROJECTION_SSIM360:Lcom/oculus/video/source/dash/OculusDashManifestParser$VqmVersion;

    invoke-virtual/range {v16 .. v16}, Lcom/oculus/video/source/dash/OculusDashManifestParser$VqmVersion;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    .line 316
    iget-object v6, v14, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedFbVqmMap:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 317
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v14, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedFbVqmMap:Ljava/util/Map;

    .line 319
    :cond_1
    iget-object v6, v14, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedFbVqmMap:Ljava/util/Map;

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v6, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_2
    iget-object v6, v14, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjectionMap:Ljava/util/Map;

    if-nez v6, :cond_3

    .line 322
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v14, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjectionMap:Ljava/util/Map;

    .line 324
    :cond_3
    iget-object v6, v14, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjectionMap:Ljava/util/Map;

    iget-object v9, v14, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjection:Lcom/oculus/video/projection/ProjectionType;

    invoke-interface {v6, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p2

    move/from16 v17, p8

    move-object/from16 v16, p13

    const/4 v6, 0x0

    .line 328
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v10, "BaseURL"

    .line 329
    invoke-static {v0, v10}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v6, :cond_4

    .line 331
    invoke-static {v0, v9}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v10, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v6

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_4
    move/from16 p2, v6

    goto/16 :goto_3

    :cond_5
    const-string v10, "AudioChannelConfiguration"

    .line 334
    invoke-static {v0, v10}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 335
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    goto/16 :goto_4

    :cond_6
    const-string v10, "SegmentBase"

    .line 336
    invoke-static {v0, v10}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 337
    move-object/from16 v10, v16

    check-cast v10, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v14, v0, v10}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v10

    :goto_2
    move-object/from16 v16, v9

    move/from16 v20, v17

    move-object/from16 v17, v10

    move/from16 v10, v20

    goto/16 :goto_5

    :cond_7
    const-string v10, "SegmentList"

    .line 338
    invoke-static {v0, v10}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 339
    move-object/from16 v10, v16

    check-cast v10, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v14, v0, v10}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v10

    goto :goto_2

    :cond_8
    const-string v10, "SegmentTemplate"

    .line 340
    invoke-static {v0, v10}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 341
    move-object/from16 v10, v16

    check-cast v10, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v14, v0, v10}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v10

    goto :goto_2

    :cond_9
    const-string v10, "ContentProtection"

    .line 342
    invoke-static {v0, v10}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 343
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v10

    move/from16 p2, v6

    .line 344
    iget-object v6, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_a

    .line 345
    iget-object v6, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 347
    :cond_a
    iget-object v6, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_d

    .line 348
    iget-object v6, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    move/from16 p2, v6

    const-string v6, "InbandEventStream"

    .line 350
    invoke-static {v0, v6}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 351
    invoke-static {v0, v6}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    const-string v6, "SupplementalProperty"

    .line 352
    invoke-static {v0, v6}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 353
    invoke-static {v0, v6}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_3
    move/from16 v6, p2

    move/from16 v10, v17

    :goto_4
    move-object/from16 v17, v16

    move-object/from16 v16, v9

    :goto_5
    const-string v9, "Representation"

    .line 355
    invoke-static {v0, v9}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    move v6, v10

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v18, v11

    move-object/from16 v11, p12

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    .line 357
    invoke-virtual/range {v0 .. v13}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v17, :cond_e

    move-object/from16 v1, v17

    goto :goto_6

    .line 360
    :cond_e
    new-instance v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v1}, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    .line 362
    :goto_6
    new-instance v2, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;

    move-object/from16 p1, v2

    move-object/from16 p2, v0

    move-object/from16 p3, v16

    move-object/from16 p4, v1

    move-object/from16 p5, v15

    move-object/from16 p6, v19

    invoke-direct/range {p1 .. p6}, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;-><init>(Lcom/oculus/android/exoplayer2/Format;Ljava/lang/String;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2

    :cond_f
    move-object/from16 v9, v16

    move-object/from16 v16, v17

    move/from16 v17, v10

    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method private static splitMixed360Manifest(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const-string v0, "</MPD>"

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 152
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected buildMediaPresentationDescription(JJJZJJJJLcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;",
            ">;)",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    .line 448
    new-instance v25, Lcom/oculus/video/source/dash/OculusDashManifest;

    move-object/from16 v1, v25

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjection:Lcom/oculus/video/projection/ProjectionType;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedStereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedFbVqmMap:Ljava/util/Map;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjectionMap:Ljava/util/Map;

    move-object/from16 v24, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v24}, Lcom/oculus/video/source/dash/OculusDashManifest;-><init>(JJJZJJJJLcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;Lcom/oculus/video/projection/ProjectionType;Lcom/oculus/video/audio/AudioChannelLayout;Lcom/oculus/video/projection/ImageStereoMode;Ljava/util/Map;Ljava/util/Map;)V

    return-object v25
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/video/source/dash/OculusDashManifest;

    move-result-object p1

    return-object p1
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/video/source/dash/OculusDashManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjection:Lcom/oculus/video/projection/ProjectionType;

    .line 168
    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 169
    sget-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedStereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedFbVqmMap:Ljava/util/Map;

    .line 171
    iput-object v0, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedProjectionMap:Ljava/util/Map;

    .line 172
    invoke-super {p0, p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/source/dash/OculusDashManifest;

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lcom/oculus/video/source/dash/OculusDashManifest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->splitMixed360Manifest(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 99
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 100
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v5, v6}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/video/source/dash/OculusDashManifest;

    move-result-object v4

    .line 101
    invoke-static {v4}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/source/dash/OculusDashManifest;

    return-object p1

    .line 110
    :cond_2
    invoke-direct {p0, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->getBlended360Manifest(Ljava/util/ArrayList;)Lcom/oculus/video/source/dash/OculusDashManifest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/video/source/dash/OculusDashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 200
    invoke-direct/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseFBAdaptationSetAttribs(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, -0x1

    const-string v1, "id"

    .line 202
    invoke-static {v15, v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 203
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v13, 0x0

    const-string v2, "mimeType"

    .line 205
    invoke-interface {v15, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "codecs"

    .line 206
    invoke-interface {v15, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "width"

    .line 207
    invoke-static {v15, v2, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const-string v2, "height"

    .line 208
    invoke-static {v15, v2, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const/high16 v2, -0x40800000    # -1.0f

    .line 209
    invoke-static {v15, v2}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v21

    const-string v2, "audioSamplingRate"

    .line 211
    invoke-static {v15, v2, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    const-string v12, "lang"

    .line 212
    invoke-interface {v15, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 216
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    move-object/from16 v6, p2

    move-object/from16 v27, p3

    move v4, v1

    move-object v5, v2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    .line 222
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 223
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v24, :cond_0

    .line 225
    invoke-static {v15, v6}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-object v6, v0

    move v3, v4

    move-object v2, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object v4, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object v1, v15

    const/16 v24, 0x1

    goto/16 :goto_6

    :cond_0
    :goto_1
    move v3, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object v2, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object v4, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object v1, v15

    goto/16 :goto_5

    :cond_1
    const-string v0, "ContentProtection"

    .line 228
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "ContentComponent"

    .line 233
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-interface {v15, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->checkContentTypeConsistency(II)I

    move-result v0

    move v3, v0

    :goto_2
    move-object v2, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object v4, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object v1, v15

    goto/16 :goto_6

    :cond_3
    const-string v0, "Role"

    .line 236
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseRole(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    or-int v25, v25, v0

    :goto_3
    move v3, v4

    goto :goto_2

    :cond_4
    const-string v0, "AudioChannelConfiguration"

    .line 239
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v26

    goto :goto_3

    :cond_5
    const-string v0, "Accessibility"

    .line 241
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    invoke-static {v15, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v0, "SupplementalProperty"

    .line 243
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 244
    invoke-static {v15, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const-string v0, "Representation"

    .line 245
    invoke-static {v15, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, v17

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v28, v5

    move/from16 v5, v19

    move-object/from16 v29, v6

    move/from16 v6, v20

    move-object/from16 v30, v7

    move/from16 v7, v21

    move-object/from16 v31, v8

    move/from16 v8, v26

    move-object/from16 v32, v9

    move/from16 v9, v22

    move-object/from16 v33, v10

    move-object/from16 v10, v28

    move-object/from16 v34, v11

    move/from16 v11, v25

    move-object/from16 v35, v12

    move-object/from16 v12, v32

    move-object/from16 v13, v27

    .line 246
    invoke-direct/range {v0 .. v13}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseFBRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;

    move-result-object v0

    .line 249
    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 250
    invoke-virtual {v14, v1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->getContentType(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v1

    .line 249
    invoke-static {v15, v1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->checkContentTypeConsistency(II)I

    move-result v1

    move-object/from16 v2, v30

    .line 251
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v4, v33

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_8
    move v15, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object v2, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    const-string v0, "SegmentBase"

    move-object/from16 v1, p1

    move v3, v15

    .line 252
    invoke-static {v1, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    move-object/from16 v0, v27

    check-cast v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v14, v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    :goto_4
    move-object/from16 v27, v0

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v4, v33

    goto :goto_6

    :cond_9
    const-string v0, "SegmentList"

    .line 254
    invoke-static {v1, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 255
    move-object/from16 v0, v27

    check-cast v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v14, v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    goto :goto_4

    :cond_a
    const-string v0, "SegmentTemplate"

    .line 256
    invoke-static {v1, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    move-object/from16 v0, v27

    check-cast v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v14, v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    goto :goto_4

    :cond_b
    const-string v0, "InbandEventStream"

    .line 258
    invoke-static {v1, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 259
    invoke-static {v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v4, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    move-object/from16 v4, v33

    .line 260
    invoke-static/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 261
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_d
    :goto_5
    move-object/from16 v5, v28

    move-object/from16 v6, v29

    :goto_6
    const-string v0, "AdaptationSet"

    .line 263
    invoke-static {v1, v0}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 267
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 268
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;

    move-object/from16 v7, v34

    const/4 v8, 0x0

    invoke-direct {v14, v1, v8, v7, v4}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->buildRepresentation(Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v3

    move-object v3, v5

    move-object/from16 v4, v32

    move-object/from16 v5, v31

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v0

    return-object v0

    :cond_f
    move-object v15, v1

    move-object v7, v2

    move-object v10, v4

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v11, v34

    move-object/from16 v12, v35

    const/4 v13, 0x0

    move v4, v3

    goto/16 :goto_0
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 383
    invoke-static {p1, v1, v0}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "value"

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 385
    invoke-static {p1, v2, v3}, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 387
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 388
    iget-object v1, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    sget-object v4, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    if-ne v1, v4, :cond_2

    .line 389
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 390
    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    goto :goto_0

    .line 392
    :cond_1
    invoke-static {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->fromChannelConfiguration(Ljava/lang/String;)Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser;->parsedAudioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    :cond_2
    const-string v1, "AudioChannelConfiguration"

    .line 394
    invoke-static {p1, v1}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 411
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 412
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "value"

    .line 413
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v0

    move-object v6, v4

    const/4 v5, 0x0

    .line 418
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v7, 0x4

    if-nez v4, :cond_1

    const-string v8, "cenc:pssh"

    .line 419
    invoke-static {p1, v8}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 420
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 422
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 423
    invoke-static {v4}, Lcom/oculus/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v4, v0

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    const-string v8, "mspr:pro"

    .line 427
    invoke-static {p1, v8}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 428
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 430
    sget-object v4, Lcom/oculus/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 431
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 430
    invoke-static {v4, v6}, Lcom/oculus/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v4

    .line 432
    sget-object v6, Lcom/oculus/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    goto :goto_0

    :cond_2
    const-string v7, "widevine:license"

    .line 433
    invoke-static {p1, v7}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v5, "robustness_level"

    .line 434
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v7, "HW"

    .line 435
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_0
    const-string v7, "ContentProtection"

    .line 437
    invoke-static {p1, v7}, Lcom/oculus/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_5

    .line 438
    new-instance v0, Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string p1, "video/mp4"

    invoke-direct {v0, v6, p1, v4, v5}, Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    .line 440
    :cond_5
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
