.class public Lcom/oculus/video/source/dash/OculusDashManifest;
.super Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;
.source "OculusDashManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;
    }
.end annotation


# instance fields
.field public final audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

.field public final fbVqmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final projectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/video/projection/ProjectionType;",
            ">;"
        }
    .end annotation
.end field

.field public final projectionType:Lcom/oculus/video/projection/ProjectionType;

.field public final stereoMode:Lcom/oculus/video/projection/ImageStereoMode;


# direct methods
.method public constructor <init>(JJJZJJJJLcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;Lcom/oculus/video/projection/ProjectionType;Lcom/oculus/video/audio/AudioChannelLayout;Lcom/oculus/video/projection/ImageStereoMode;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;",
            ">;",
            "Lcom/oculus/video/projection/ProjectionType;",
            "Lcom/oculus/video/audio/AudioChannelLayout;",
            "Lcom/oculus/video/projection/ImageStereoMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/video/projection/ProjectionType;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 71
    invoke-direct/range {p0 .. p18}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    move-object/from16 v1, p19

    .line 74
    iput-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    move-object/from16 v1, p20

    .line 75
    iput-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    move-object/from16 v1, p21

    .line 76
    iput-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    move-object/from16 v1, p22

    .line 77
    invoke-direct {p0, v1}, Lcom/oculus/video/source/dash/OculusDashManifest;->isValidFbVqmMap(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->fbVqmMap:Ljava/util/Map;

    move-object/from16 v1, p23

    .line 78
    iput-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionMap:Ljava/util/Map;

    return-void
.end method

.method private static blendAdaptationSets(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 202
    iget v6, v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    if-ne v6, v5, :cond_0

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-object v2

    .line 217
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 219
    iget v7, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    if-ne v7, v5, :cond_6

    if-eqz v4, :cond_4

    return-object v2

    .line 225
    :cond_4
    iget-object v4, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    iget-object v7, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {v8, v9, v4, v7}, Lcom/oculus/video/source/dash/OculusDashManifest;->blendRepresentations(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_5

    return-object v2

    .line 231
    :cond_5
    new-instance v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v11, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    iget v12, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    iget-object v14, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    iget-object v15, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_6
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v16, v6

    move-object v6, v4

    move-object/from16 v4, v16

    .line 241
    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    goto :goto_1

    :cond_7
    if-nez v4, :cond_8

    return-object v2

    :cond_8
    return-object v0
.end method

.method private static blendRepresentations(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {}, Lcom/oculus/video/Settings;->blendSSIM360Manifest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/video/source/dash/OculusDashManifest;->highQualityBlendRepresentations(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 263
    :cond_1
    invoke-static {p2, p3}, Lcom/oculus/video/source/dash/OculusDashManifest;->highResolutionBlendRepresentations(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static highQualityBlendRepresentations(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    if-eqz p3, :cond_15

    .line 357
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    if-eqz p0, :cond_15

    if-nez p1, :cond_1

    goto/16 :goto_c

    .line 365
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 366
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    if-eqz v3, :cond_3

    .line 371
    iget-object v5, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v5, v5, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    if-eq v5, v4, :cond_3

    iget-object v4, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 373
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 374
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 377
    :cond_2
    new-instance v4, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    invoke-direct {v4, v3, v1}, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;-><init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    .line 380
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    if-eqz p3, :cond_6

    .line 383
    iget-object v3, p3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v3, :cond_6

    iget-object v3, p3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v3, v3, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    if-eq v3, v4, :cond_6

    iget-object v3, p3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 385
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 386
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 389
    :cond_5
    new-instance v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    invoke-direct {v3, p3, v1}, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;-><init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0

    .line 392
    :cond_7
    new-instance p1, Lcom/oculus/video/source/dash/OculusDashManifest$3;

    invoke-direct {p1}, Lcom/oculus/video/source/dash/OculusDashManifest$3;-><init>()V

    .line 402
    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 403
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 405
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 408
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_11

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_11

    .line 409
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    .line 410
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    .line 412
    iget-wide v4, v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    iget-wide v6, v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_c

    .line 413
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p2, v4, :cond_8

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    goto :goto_5

    :cond_8
    move-object v4, v0

    .line 415
    :goto_5
    iget-wide v5, v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    iget-wide v7, v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    cmpl-double v9, v5, v7

    if-ltz v9, :cond_a

    :cond_9
    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    .line 425
    iget-wide v5, v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    iget-wide v7, v4, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    cmpl-double v9, v5, v7

    if-ltz v9, :cond_b

    invoke-virtual {v3, v1}, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->getSlopeTo(Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;)D

    move-result-wide v5

    invoke-virtual {v4, v1}, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->getSlopeTo(Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;)D

    move-result-wide v3

    cmpl-double v7, v5, v3

    if-ltz v7, :cond_b

    goto :goto_6

    .line 430
    :cond_b
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 436
    :cond_c
    iget-wide v4, v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    iget-wide v6, v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_10

    .line 437
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p3, v4, :cond_d

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    goto :goto_7

    :cond_d
    move-object v4, v0

    .line 439
    :goto_7
    iget-wide v5, v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    iget-wide v7, v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    cmpl-double v9, v5, v7

    if-ltz v9, :cond_e

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    if-eqz v4, :cond_f

    .line 449
    iget-wide v5, v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    iget-wide v7, v4, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    cmpl-double v9, v5, v7

    if-ltz v9, :cond_f

    invoke-virtual {v1, v3}, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->getSlopeTo(Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;)D

    move-result-wide v5

    invoke-virtual {v4, v3}, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->getSlopeTo(Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;)D

    move-result-wide v7

    cmpl-double v1, v5, v7

    if-ltz v1, :cond_f

    goto :goto_8

    .line 454
    :cond_f
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 460
    :cond_10
    iget-wide v4, v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    iget-wide v6, v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_9

    goto :goto_8

    .line 471
    :cond_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    .line 472
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    .line 473
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    if-eq v0, v1, :cond_13

    if-eq v0, v3, :cond_13

    .line 476
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_12

    add-int/lit8 v0, p2, 0x1

    .line 477
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v0

    goto :goto_9

    .line 479
    :cond_12
    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_13

    add-int/lit8 p2, p3, 0x1

    .line 480
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p3, p2

    goto :goto_a

    .line 484
    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    .line 486
    iget-object p2, p2, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->representation:Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    return-object p0

    :cond_15
    :goto_c
    return-object v0
.end method

.method private static highResolutionBlendRepresentations(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 273
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    if-eqz v2, :cond_2

    .line 275
    iget-object v4, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v4, v4, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    if-eq v4, v3, :cond_2

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v2, v2, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_1

    :cond_2
    return-object v0

    .line 282
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    if-eqz v2, :cond_5

    .line 284
    iget-object v4, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v4, v4, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    if-eq v4, v3, :cond_5

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v2, v2, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_4

    :cond_5
    return-object v0

    .line 291
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v2, Lcom/oculus/video/source/dash/OculusDashManifest$2;

    invoke-direct {v2}, Lcom/oculus/video/source/dash/OculusDashManifest$2;-><init>()V

    .line 303
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 310
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v2, v2, Lcom/oculus/android/exoplayer2/Format;->width:I

    .line 311
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v5, v5, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    .line 314
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    .line 315
    iget-object v7, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v7, v7, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-ne v7, v2, :cond_9

    .line 316
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v5, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v5, v5, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    .line 319
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    .line 320
    :goto_0
    iget-object v6, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v6, v6, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    if-gt v5, v6, :cond_7

    add-int/lit8 p1, p1, 0x1

    .line 321
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_8

    return-object v0

    .line 325
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    goto :goto_0

    .line 328
    :cond_9
    iget-object v2, v6, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v2, v2, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    sub-int v3, v5, v2

    :cond_a
    if-gtz v3, :cond_b

    return-object v0

    :cond_b
    mul-int/lit8 v3, v3, 0x2

    .line 340
    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v5, v3

    .line 343
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 344
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    .line 345
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v2, v2, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    if-ge v2, v5, :cond_c

    .line 346
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_d
    return-object v1

    :cond_e
    :goto_2
    return-object v0
.end method

.method private isValidFbVqmMap(Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oculus/video/source/dash/OculusDashManifest;->getPeriod(I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    .line 91
    iget-object v1, v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 92
    iget v4, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move-object v2, v3

    :cond_3
    if-nez v2, :cond_4

    return v0

    .line 100
    :cond_4
    iget-object v1, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    if-eqz v3, :cond_6

    .line 102
    iget-object v4, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v4, v4, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    iget-object v4, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 103
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    return v0

    .line 108
    :cond_7
    new-instance v1, Lcom/oculus/video/source/dash/OculusDashManifest$1;

    invoke-direct {v1, p0}, Lcom/oculus/video/source/dash/OculusDashManifest$1;-><init>(Lcom/oculus/video/source/dash/OculusDashManifest;)V

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 120
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_9

    .line 121
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    add-int/lit8 v1, v1, 0x1

    .line 122
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    .line 123
    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 124
    iget-object v2, v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpg-double v2, v5, v7

    if-gez v2, :cond_8

    return v0

    :cond_9
    return v4
.end method


# virtual methods
.method public final generateHighQualityBlend(Lcom/oculus/video/source/dash/OculusDashManifest;)Lcom/oculus/video/source/dash/OculusDashManifest;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/video/source/dash/OculusDashManifest;->getPeriodCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/source/dash/OculusDashManifest;->getPeriodCount()I

    move-result v2

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    iget-boolean v2, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->dynamic:Z

    if-nez v2, :cond_8

    iget-boolean v2, v1, Lcom/oculus/video/source/dash/OculusDashManifest;->dynamic:Z

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 149
    :cond_1
    iget-wide v2, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->durationMs:J

    iget-wide v4, v1, Lcom/oculus/video/source/dash/OculusDashManifest;->durationMs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return-object v0

    .line 153
    :cond_2
    iget-object v2, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    iget-object v3, v1, Lcom/oculus/video/source/dash/OculusDashManifest;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    if-eq v2, v3, :cond_3

    return-object v0

    :cond_3
    const/4 v2, 0x0

    .line 156
    invoke-virtual {v0, v2}, Lcom/oculus/video/source/dash/OculusDashManifest;->getPeriod(I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    .line 157
    invoke-virtual {v1, v2}, Lcom/oculus/video/source/dash/OculusDashManifest;->getPeriod(I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    .line 159
    iget-object v4, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    return-object v0

    .line 163
    :cond_4
    iget-object v4, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->fbVqmMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/oculus/video/source/dash/OculusDashManifest;->fbVqmMap:Ljava/util/Map;

    iget-object v6, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-static {v4, v5, v6, v2}, Lcom/oculus/video/source/dash/OculusDashManifest;->blendAdaptationSets(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_5

    return-object v0

    .line 171
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v4, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;

    iget-object v8, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    iget-wide v9, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v12, v3, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->eventStreams:Ljava/util/List;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->fbVqmMap:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 177
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 178
    iget-object v5, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->fbVqmMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 179
    iget-object v5, v1, Lcom/oculus/video/source/dash/OculusDashManifest;->fbVqmMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v34, v3

    goto :goto_0

    :cond_6
    move-object/from16 v34, v4

    .line 183
    :goto_0
    iget-object v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionMap:Ljava/util/Map;

    if-eqz v3, :cond_7

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 185
    iget-object v4, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 186
    iget-object v1, v1, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v35, v3

    goto :goto_1

    :cond_7
    move-object/from16 v35, v4

    .line 189
    :goto_1
    new-instance v1, Lcom/oculus/video/source/dash/OculusDashManifest;

    move-object v12, v1

    iget-wide v13, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->availabilityStartTimeMs:J

    iget-wide v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->durationMs:J

    move-wide v15, v3

    iget-wide v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->minBufferTimeMs:J

    move-wide/from16 v17, v3

    iget-boolean v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->dynamic:Z

    move/from16 v19, v3

    iget-wide v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->minUpdatePeriodMs:J

    move-wide/from16 v20, v3

    iget-wide v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->timeShiftBufferDepthMs:J

    move-wide/from16 v22, v3

    iget-wide v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->suggestedPresentationDelayMs:J

    move-wide/from16 v24, v3

    iget-wide v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->publishTimeMs:J

    move-wide/from16 v26, v3

    iget-object v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->utcTiming:Lcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->location:Landroid/net/Uri;

    move-object/from16 v29, v3

    sget-object v31, Lcom/oculus/video/projection/ProjectionType;->MIXED360:Lcom/oculus/video/projection/ProjectionType;

    iget-object v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->audioChannelLayout:Lcom/oculus/video/audio/AudioChannelLayout;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->stereoMode:Lcom/oculus/video/projection/ImageStereoMode;

    move-object/from16 v33, v3

    move-object/from16 v30, v2

    invoke-direct/range {v12 .. v35}, Lcom/oculus/video/source/dash/OculusDashManifest;-><init>(JJJZJJJJLcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;Lcom/oculus/video/projection/ProjectionType;Lcom/oculus/video/audio/AudioChannelLayout;Lcom/oculus/video/projection/ImageStereoMode;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1

    :cond_8
    :goto_2
    return-object v0
.end method
