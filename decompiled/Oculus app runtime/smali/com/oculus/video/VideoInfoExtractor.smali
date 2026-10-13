.class Lcom/oculus/video/VideoInfoExtractor;
.super Ljava/lang/Object;
.source "VideoInfoExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/VideoInfoExtractor$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NO_OP_RENDERER:Lcom/oculus/android/exoplayer2/Renderer;

.field private static final OCULUS_EXTRACTORS_FACTORY:Lcom/oculus/video/extractor/OculusExtractorsFactory;

.field private static final TBE442_CHANNELS:[I


# instance fields
.field private final extractorListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

.field private extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

.field private listener:Lcom/oculus/video/VideoInfoExtractor$Listener;

.field private final playerEventListener:Lcom/oculus/android/exoplayer2/Player$EventListener;

.field private final video:Lcom/oculus/video/Video;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/video/VideoInfoExtractor;->TBE442_CHANNELS:[I

    .line 129
    new-instance v0, Lcom/oculus/video/VideoInfoExtractor$1;

    invoke-direct {v0}, Lcom/oculus/video/VideoInfoExtractor$1;-><init>()V

    sput-object v0, Lcom/oculus/video/VideoInfoExtractor;->NO_OP_RENDERER:Lcom/oculus/android/exoplayer2/Renderer;

    .line 262
    new-instance v0, Lcom/oculus/video/extractor/OculusExtractorsFactory;

    invoke-direct {v0}, Lcom/oculus/video/extractor/OculusExtractorsFactory;-><init>()V

    sput-object v0, Lcom/oculus/video/VideoInfoExtractor;->OCULUS_EXTRACTORS_FACTORY:Lcom/oculus/video/extractor/OculusExtractorsFactory;

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
        0x2
    .end array-data
.end method

.method constructor <init>(Lcom/oculus/video/Video;)V
    .locals 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lcom/oculus/video/VideoInfoExtractor$2;

    invoke-direct {v0, p0}, Lcom/oculus/video/VideoInfoExtractor$2;-><init>(Lcom/oculus/video/VideoInfoExtractor;)V

    iput-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    .line 286
    new-instance v0, Lcom/oculus/video/VideoInfoExtractor$3;

    invoke-direct {v0, p0}, Lcom/oculus/video/VideoInfoExtractor$3;-><init>(Lcom/oculus/video/VideoInfoExtractor;)V

    iput-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->playerEventListener:Lcom/oculus/android/exoplayer2/Player$EventListener;

    .line 488
    iput-object p1, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/video/Video;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/video/VideoInfoExtractor;Lcom/oculus/video/audio/AudioChannelLayout;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/video/projection/VideoProjection;FIIFIZZ)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p14}, Lcom/oculus/video/VideoInfoExtractor;->onExtractionSuccess(Lcom/oculus/video/audio/AudioChannelLayout;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/video/projection/VideoProjection;FIIFIZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/video/VideoInfoExtractor;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oculus/video/VideoInfoExtractor;->onExtractionFailed()V

    return-void
.end method

.method private getAudioChannelLayout(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/audio/AudioChannelLayout;
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {v0}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/video/source/dash/OculusDashManifest;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {v0}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/source/dash/OculusDashManifest;

    .line 62
    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    sget-object v2, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    if-eq v1, v2, :cond_0

    .line 63
    iget-object p1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    :cond_0
    if-eqz p1, :cond_b

    .line 67
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 68
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    sget-object v1, Lcom/oculus/video/VideoInfoExtractor;->TBE442_CHANNELS:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 69
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/oculus/video/VideoInfoExtractor;->TBE442_CHANNELS:[I

    aget v4, v4, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 81
    :cond_2
    :goto_1
    sget-object v0, Lcom/oculus/video/VideoInfoExtractor;->TBE442_CHANNELS:[I

    array-length v0, v0

    if-ne v1, v0, :cond_3

    .line 82
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 86
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p1, 0x6

    if-ne v2, p1, :cond_4

    const-string v0, "audio/opus"

    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    .line 97
    invoke-virtual {p2}, Lcom/oculus/video/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oculus/video/VideoPlayer_Android;->isSideLoaded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 98
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    :cond_4
    const/4 p2, 0x1

    if-eq v2, p2, :cond_a

    const/4 p2, 0x2

    if-eq v2, p2, :cond_9

    const/4 p2, 0x4

    if-eq v2, p2, :cond_8

    if-eq v2, p1, :cond_7

    const/16 p1, 0x10

    if-eq v2, p1, :cond_6

    const/16 p1, 0x12

    if-eq v2, p1, :cond_5

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 117
    :pswitch_0
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9_2:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 113
    :pswitch_1
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_8_2:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 115
    :pswitch_2
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 111
    :pswitch_3
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->S7_1:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 121
    :cond_5
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16_2:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 119
    :cond_6
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 109
    :cond_7
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->S5_1:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 107
    :cond_8
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 105
    :cond_9
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->STEREO:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 103
    :cond_a
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->MONO:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    .line 126
    :cond_b
    :goto_2
    sget-object p1, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onExtractionFailed()V
    .locals 2

    .line 653
    invoke-direct {p0}, Lcom/oculus/video/VideoInfoExtractor;->release()V

    .line 654
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->listener:Lcom/oculus/video/VideoInfoExtractor$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/video/VideoInfoExtractor$Listener;->onFinish(Z)V

    return-void
.end method

.method private onExtractionSuccess(Lcom/oculus/video/audio/AudioChannelLayout;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/video/projection/VideoProjection;FIIFIZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 572
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    if-eqz v4, :cond_0

    .line 573
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 574
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x1

    .line 577
    :try_start_0
    iget-object v7, v0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {v7}, Lcom/oculus/video/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oculus/video/VideoPlayer_Android;->isSideLoaded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 579
    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {v8}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 581
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 582
    array-length v9, v8

    if-le v9, v4, :cond_5

    .line 583
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2e

    .line 584
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v10, 0x0

    if-gez v9, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 586
    :goto_0
    array-length v9, v8

    :goto_1
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 587
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 588
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 589
    invoke-static {v12}, Lcom/oculus/video/Video;->extractSubtitleMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 591
    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    .line 593
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 594
    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 596
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v12, "Unknown"

    .line 599
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 610
    :catch_0
    :cond_5
    :try_start_1
    iget-object v7, v0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    move-object/from16 v8, p7

    invoke-virtual {v7, v8}, Lcom/oculus/video/Video;->setProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/Video;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :catch_1
    iget-object v7, v0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {v7}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v7

    instance-of v7, v7, Lcom/oculus/video/source/dash/OculusDashManifest;

    if-eqz v7, :cond_6

    .line 617
    :try_start_2
    iget-object v7, v0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    iget-object v8, v0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    .line 618
    invoke-virtual {v8}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v8

    check-cast v8, Lcom/oculus/video/source/dash/OculusDashManifest;

    invoke-static {v8}, Lcom/oculus/video/projection/VideoProjection;->fromFBProjection(Lcom/oculus/video/source/dash/OculusDashManifest;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v8

    .line 617
    invoke-virtual {v7, v8}, Lcom/oculus/video/Video;->setProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/Video;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 625
    sget-object v7, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    if-ne v1, v7, :cond_8

    .line 626
    :cond_7
    invoke-direct {p0, v3, v2}, Lcom/oculus/video/VideoInfoExtractor;->getAudioChannelLayout(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v1

    .line 630
    :cond_8
    :try_start_3
    iget-object v7, v0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {v7, v2}, Lcom/oculus/video/Video;->setAudioMimeType(Ljava/lang/String;)Lcom/oculus/video/Video;

    move-result-object v2

    move-object/from16 v7, p4

    .line 631
    invoke-virtual {v2, v7}, Lcom/oculus/video/Video;->setVideoMimeType(Ljava/lang/String;)Lcom/oculus/video/Video;

    move-result-object v2

    .line 632
    invoke-virtual {v2, v6}, Lcom/oculus/video/Video;->setSubtitleMimeTypes(Ljava/util/Collection;)Lcom/oculus/video/Video;

    move-result-object v2

    .line 633
    invoke-virtual {v2, v3}, Lcom/oculus/video/Video;->setAudioTracks(Lorg/json/JSONObject;)Lcom/oculus/video/Video;

    move-result-object v2

    .line 634
    invoke-virtual {v2, v1}, Lcom/oculus/video/Video;->setAudioChannelLayout(Lcom/oculus/video/audio/AudioChannelLayout;)Lcom/oculus/video/Video;

    move-result-object v1

    .line 635
    invoke-virtual {v1, v5}, Lcom/oculus/video/Video;->setSubtitleTracks(Lorg/json/JSONObject;)Lcom/oculus/video/Video;

    move-result-object v1

    move/from16 v2, p9

    .line 636
    invoke-virtual {v1, v2}, Lcom/oculus/video/Video;->setInitialWidth(I)Lcom/oculus/video/Video;

    move-result-object v1

    move/from16 v2, p10

    .line 637
    invoke-virtual {v1, v2}, Lcom/oculus/video/Video;->setInitialHeight(I)Lcom/oculus/video/Video;

    move-result-object v1

    move/from16 v2, p11

    .line 638
    invoke-virtual {v1, v2}, Lcom/oculus/video/Video;->setFrameAspectRatio(F)Lcom/oculus/video/Video;

    move-result-object v1

    move/from16 v2, p8

    .line 639
    invoke-virtual {v1, v2}, Lcom/oculus/video/Video;->setFrameRate(F)Lcom/oculus/video/Video;

    move-result-object v1

    move/from16 v2, p12

    .line 640
    invoke-virtual {v1, v2}, Lcom/oculus/video/Video;->setFrameRotation(I)Lcom/oculus/video/Video;

    move-result-object v1

    move/from16 v2, p13

    .line 641
    invoke-virtual {v1, v2}, Lcom/oculus/video/Video;->setHasCameraMotionData(Z)Lcom/oculus/video/Video;

    move-result-object v1

    move/from16 v2, p14

    .line 642
    invoke-virtual {v1, v2}, Lcom/oculus/video/Video;->setCanUseExoPlayer(Z)Lcom/oculus/video/Video;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 648
    :catch_3
    invoke-direct {p0}, Lcom/oculus/video/VideoInfoExtractor;->release()V

    .line 649
    iget-object v1, v0, Lcom/oculus/video/VideoInfoExtractor;->listener:Lcom/oculus/video/VideoInfoExtractor$Listener;

    invoke-interface {v1, v4}, Lcom/oculus/video/VideoInfoExtractor$Listener;->onFinish(Z)V

    return-void
.end method

.method private release()V
    .locals 2

    .line 658
    sget-object v0, Lcom/oculus/video/VideoInfoExtractor;->OCULUS_EXTRACTORS_FACTORY:Lcom/oculus/video/extractor/OculusExtractorsFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/video/extractor/OculusExtractorsFactory;->setExtractorEventListener(Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;)Lcom/oculus/video/extractor/OculusExtractorsFactory;

    .line 659
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->stop()V

    .line 663
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->release()V

    .line 664
    iput-object v1, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    return-void
.end method


# virtual methods
.method extract(Landroid/content/Context;Landroid/os/Handler;Lcom/oculus/video/VideoInfoExtractor$Listener;)V
    .locals 9

    .line 496
    iput-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->listener:Lcom/oculus/video/VideoInfoExtractor$Listener;

    const/4 p3, 0x1

    .line 500
    new-array p3, p3, [Lcom/oculus/android/exoplayer2/Renderer;

    sget-object v0, Lcom/oculus/video/VideoInfoExtractor;->NO_OP_RENDERER:Lcom/oculus/android/exoplayer2/Renderer;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    new-instance v0, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    invoke-static {p3, v0}, Lcom/oculus/android/exoplayer2/ExoPlayerFactory;->newInstance([Lcom/oculus/android/exoplayer2/Renderer;Lcom/oculus/android/exoplayer2/trackselection/TrackSelector;)Lcom/oculus/android/exoplayer2/ExoPlayer;

    move-result-object p3

    iput-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    .line 503
    iget-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->playerEventListener:Lcom/oculus/android/exoplayer2/Player$EventListener;

    invoke-interface {p3, v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->addListener(Lcom/oculus/android/exoplayer2/Player$EventListener;)V

    .line 504
    iget-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p3, v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 508
    new-instance v5, Lcom/oculus/video/upstream/OculusDataSourceFactory;

    new-instance p3, Lcom/oculus/android/exoplayer2/upstream/DefaultDataSourceFactory;

    const-string v0, "oculus_video_sdk"

    invoke-direct {p3, p1, v0}, Lcom/oculus/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0, p3, v0}, Lcom/oculus/video/upstream/OculusDataSourceFactory;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V

    .line 514
    iget-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {p3}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 518
    new-instance p1, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance p2, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {p2, v5}, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p1, p2, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object p2, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    .line 520
    invoke-virtual {p2}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    goto :goto_0

    .line 524
    :cond_0
    iget-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {p3}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lcom/oculus/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    .line 542
    sget-object p3, Lcom/oculus/video/VideoInfoExtractor;->OCULUS_EXTRACTORS_FACTORY:Lcom/oculus/video/extractor/OculusExtractorsFactory;

    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    invoke-virtual {p3, v0}, Lcom/oculus/video/extractor/OculusExtractorsFactory;->setExtractorEventListener(Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;)Lcom/oculus/video/extractor/OculusExtractorsFactory;

    .line 543
    new-instance p3, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;

    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    .line 545
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v4

    sget-object v6, Lcom/oculus/video/VideoInfoExtractor;->OCULUS_EXTRACTORS_FACTORY:Lcom/oculus/video/extractor/OculusExtractorsFactory;

    const/4 v8, 0x0

    move-object v2, p3

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;)V

    move-object p1, p3

    goto :goto_0

    .line 534
    :cond_1
    new-instance p1, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;

    invoke-direct {p1, v5}, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p3, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;

    iget-object v1, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    .line 535
    invoke-virtual {v1}, Lcom/oculus/video/Video;->getAes128Key()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    invoke-virtual {v2}, Lcom/oculus/video/Video;->getAes128Iv()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;->setPlaylistParser(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;

    move-result-object p1

    iget-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    .line 536
    invoke-virtual {p3}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3, p2, v0, v0}, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;)Lcom/oculus/video/source/hls/OculusHlsMediaSource;

    move-result-object p1

    goto :goto_0

    .line 527
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance p3, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {p3, v5}, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p1, p3, v5}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p3, Lcom/oculus/video/source/dash/OculusDashManifestParser;

    invoke-direct {p3}, Lcom/oculus/video/source/dash/OculusDashManifestParser;-><init>()V

    .line 529
    invoke-virtual {p1, p3}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->setManifestParser(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p1

    iget-object p3, p0, Lcom/oculus/video/VideoInfoExtractor;->video:Lcom/oculus/video/Video;

    .line 530
    invoke-virtual {p3}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3, p2, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    .line 554
    :goto_0
    iget-object p2, p0, Lcom/oculus/video/VideoInfoExtractor;->extractorPlayer:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2, p1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->prepare(Lcom/oculus/android/exoplayer2/source/MediaSource;)V

    return-void
.end method
