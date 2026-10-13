.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:I

.field public B:I

.field public C:J

.field public D:J

.field public E:D

.field public F:Z

.field public G:[J

.field public H:I

.field public I:I

.field public J:Ljava/lang/String;

.field public K:Lorg/json/JSONObject;

.field public L:I

.field public final M:Ljava/util/ArrayList;

.field public N:Z

.field public O:Lcom/google/android/gms/cast/AdBreakStatus;

.field public P:Lcom/google/android/gms/cast/VideoInfo;

.field public final Q:Landroid/util/SparseArray;

.field public w:Lcom/google/android/gms/cast/MediaInfo;

.field public x:J

.field public y:I

.field public z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LJl;

    invoke-direct {v0}, LJl;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p19

    move-object/from16 v2, p21

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    .line 3
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->Q:Landroid/util/SparseArray;

    move-object v3, p1

    .line 4
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    move-wide v3, p2

    .line 5
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    move v3, p4

    .line 6
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    move-wide v3, p5

    .line 7
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->z:D

    move v3, p7

    .line 8
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    move v3, p8

    .line 9
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    move-wide v3, p9

    .line 10
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->C:J

    move-wide/from16 v3, p11

    .line 11
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->D:J

    move-wide/from16 v3, p13

    .line 12
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->E:D

    move/from16 v3, p15

    .line 13
    iput-boolean v3, v0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    move-object/from16 v3, p16

    .line 14
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    move/from16 v3, p17

    .line 15
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    move/from16 v3, p18

    .line 16
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->I:I

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->J:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 18
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->J:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    .line 20
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->J:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_0
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    :goto_0
    move/from16 v1, p20

    .line 22
    iput v1, v0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    if-eqz v2, :cond_1

    .line 23
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/MediaStatus;->a([Lcom/google/android/gms/cast/MediaQueueItem;)V

    :cond_1
    move/from16 v1, p22

    .line 25
    iput-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->N:Z

    move-object/from16 v1, p23

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->O:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 v1, p24

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->P:Lcom/google/android/gms/cast/VideoInfo;

    return-void
.end method

.method public static b(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    if-eq p1, v1, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    return v1

    :cond_1
    if-eq p3, p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-nez p2, :cond_4

    return v1

    :cond_4
    return v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;I)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "mediaSessionId"

    .line 2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    .line 4
    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "playerState"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v8, 0x2

    if-eqz v4, :cond_a

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "IDLE"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "PLAYING"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "PAUSED"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    const-string v4, "BUFFERING"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 11
    :goto_1
    iget v4, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    if-eq v3, v4, :cond_5

    .line 12
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    or-int/lit8 v2, v2, 0x2

    :cond_5
    if-ne v3, v7, :cond_a

    const-string v3, "idleReason"

    .line 13
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 14
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CANCELLED"

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v9, 0x2

    goto :goto_2

    :cond_6
    const-string v4, "INTERRUPTED"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v9, 0x3

    goto :goto_2

    :cond_7
    const-string v4, "FINISHED"

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_2

    :cond_8
    const-string v4, "ERROR"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    .line 19
    :goto_2
    iget v3, v0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    if-eq v9, v3, :cond_a

    .line 20
    iput v9, v0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    or-int/lit8 v2, v2, 0x2

    :cond_a
    const-string v3, "playbackRate"

    .line 21
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 22
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 23
    iget-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->z:D

    cmpl-double v11, v9, v3

    if-eqz v11, :cond_b

    .line 24
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->z:D

    or-int/lit8 v2, v2, 0x2

    :cond_b
    const-string v3, "currentTime"

    .line 25
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 26
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v9

    double-to-long v3, v3

    .line 27
    iget-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->C:J

    cmp-long v11, v3, v9

    if-eqz v11, :cond_c

    .line 28
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->C:J

    or-int/lit8 v2, v2, 0x2

    :cond_c
    or-int/lit16 v2, v2, 0x80

    :cond_d
    const-string v3, "supportedMediaCommands"

    .line 29
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 30
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 31
    iget-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->D:J

    cmp-long v11, v3, v9

    if-eqz v11, :cond_e

    .line 32
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->D:J

    or-int/lit8 v2, v2, 0x2

    :cond_e
    const-string v3, "volume"

    .line 33
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_10

    .line 34
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "level"

    .line 35
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 36
    iget-wide v11, v0, Lcom/google/android/gms/cast/MediaStatus;->E:D

    cmpl-double v4, v9, v11

    if-eqz v4, :cond_f

    .line 37
    iput-wide v9, v0, Lcom/google/android/gms/cast/MediaStatus;->E:D

    or-int/lit8 v2, v2, 0x2

    :cond_f
    const-string v4, "muted"

    .line 38
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 39
    iget-boolean v4, v0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    if-eq v3, v4, :cond_10

    .line 40
    iput-boolean v3, v0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    or-int/lit8 v2, v2, 0x2

    :cond_10
    const-string v3, "activeTrackIds"

    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v9, 0x0

    if-eqz v4, :cond_16

    .line 42
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 44
    new-array v10, v4, [J

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v4, :cond_11

    .line 45
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 46
    :cond_11
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    if-nez v3, :cond_12

    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    .line 47
    :cond_12
    array-length v3, v3

    if-eq v3, v4, :cond_13

    goto :goto_4

    :cond_13
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_15

    .line 48
    iget-object v11, v0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    aget-wide v12, v11, v3

    aget-wide v14, v10, v3

    cmp-long v11, v12, v14

    if-eqz v11, :cond_14

    goto :goto_4

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_15
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_18

    .line 49
    iput-object v10, v0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    goto :goto_7

    .line 50
    :cond_16
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    move-object v10, v9

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_7

    :cond_17
    const/4 v3, 0x0

    :cond_18
    :goto_7
    if-eqz v3, :cond_19

    .line 51
    iput-object v10, v0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    or-int/lit8 v2, v2, 0x2

    :cond_19
    const-string v3, "customData"

    .line 52
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 53
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    .line 54
    iput-object v9, v0, Lcom/google/android/gms/cast/MediaStatus;->J:Ljava/lang/String;

    or-int/lit8 v2, v2, 0x2

    :cond_1a
    const-string v3, "media"

    .line 55
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 56
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 57
    new-instance v4, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v4, v3}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 58
    iget-object v9, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v9, :cond_1b

    if-eqz v9, :cond_1c

    .line 59
    invoke-virtual {v9, v4}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 60
    :cond_1b
    iput-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v2, v2, 0x2

    :cond_1c
    const-string v4, "metadata"

    .line 61
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    or-int/lit8 v2, v2, 0x4

    :cond_1d
    const-string v3, "currentItemId"

    .line 62
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 63
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 64
    iget v4, v0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    if-eq v4, v3, :cond_1e

    .line 65
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    or-int/lit8 v2, v2, 0x2

    :cond_1e
    const-string v3, "preloadedItemId"

    .line 66
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 67
    iget v4, v0, Lcom/google/android/gms/cast/MediaStatus;->I:I

    if-eq v4, v3, :cond_1f

    .line 68
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->I:I

    or-int/lit8 v2, v2, 0x10

    :cond_1f
    const-string v3, "loadingItemId"

    .line 69
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 70
    iget v4, v0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    if-eq v4, v3, :cond_20

    .line 71
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    or-int/lit8 v2, v2, 0x2

    .line 72
    :cond_20
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v4, -0x1

    if-nez v3, :cond_21

    const/4 v3, -0x1

    goto :goto_8

    .line 73
    :cond_21
    iget v3, v3, Lcom/google/android/gms/cast/MediaInfo;->x:I

    .line 74
    :goto_8
    iget v9, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    iget v10, v0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    iget v11, v0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    invoke-static {v9, v10, v11, v3}, Lcom/google/android/gms/cast/MediaStatus;->b(IIII)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "repeatMode"

    .line 75
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 76
    iget v9, v0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    .line 77
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_9

    :sswitch_0
    const-string v10, "REPEAT_OFF"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v4, 0x0

    goto :goto_9

    :sswitch_1
    const-string v10, "REPEAT_ALL"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v4, 0x1

    goto :goto_9

    :sswitch_2
    const-string v10, "REPEAT_SINGLE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v4, 0x2

    goto :goto_9

    :sswitch_3
    const-string v10, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v4, 0x3

    :cond_22
    :goto_9
    if-eqz v4, :cond_25

    if-eq v4, v7, :cond_24

    if-eq v4, v8, :cond_23

    if-eq v4, v5, :cond_26

    move v5, v9

    goto :goto_a

    :cond_23
    const/4 v5, 0x2

    goto :goto_a

    :cond_24
    const/4 v5, 0x1

    goto :goto_a

    :cond_25
    const/4 v5, 0x0

    .line 79
    :cond_26
    :goto_a
    iget v3, v0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    if-eq v3, v5, :cond_27

    .line 80
    iput v5, v0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    const/4 v3, 0x1

    goto :goto_b

    :cond_27
    const/4 v3, 0x0

    :goto_b
    const-string v4, "items"

    .line 81
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 82
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 84
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v5, :cond_28

    .line 85
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "itemId"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 86
    :cond_28
    new-array v9, v5, [Lcom/google/android/gms/cast/MediaQueueItem;

    move v10, v3

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v5, :cond_31

    .line 87
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 89
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/android/gms/cast/MediaStatus;->a(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v13

    if-eqz v13, :cond_29

    .line 90
    invoke-virtual {v13, v12}, Lcom/google/android/gms/cast/MediaQueueItem;->a(Lorg/json/JSONObject;)Z

    move-result v12

    or-int/2addr v10, v12

    .line 91
    aput-object v13, v9, v3

    .line 92
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 93
    iget-object v12, v0, Lcom/google/android/gms/cast/MediaStatus;->Q:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 94
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v3, v11, :cond_30

    goto/16 :goto_e

    .line 95
    :cond_29
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, v0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    if-ne v10, v11, :cond_2f

    iget-object v10, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v10, :cond_2f

    .line 96
    new-instance v11, Lcom/google/android/gms/cast/MediaQueueItem;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v21, 0x0

    move-object v13, v11

    move-object v14, v10

    .line 97
    invoke-direct/range {v13 .. v24}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    const-string v13, "media cannot be null."

    if-eqz v10, :cond_2e

    .line 98
    iget-object v10, v11, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v10, :cond_2d

    .line 99
    iget-wide v13, v11, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_2c

    iget-wide v13, v11, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    const-wide/16 v15, 0x0

    cmpg-double v10, v13, v15

    if-ltz v10, :cond_2c

    .line 100
    iget-wide v13, v11, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_2b

    .line 101
    iget-wide v13, v11, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_2a

    iget-wide v13, v11, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    cmpg-double v10, v13, v15

    if-ltz v10, :cond_2a

    .line 102
    aput-object v11, v9, v3

    .line 103
    aget-object v10, v9, v3

    invoke-virtual {v10, v12}, Lcom/google/android/gms/cast/MediaQueueItem;->a(Lorg/json/JSONObject;)Z

    goto :goto_e

    .line 104
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "preloadTime cannot be negative or Nan."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "playbackDuration cannot be NaN."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startTime cannot be negative or NaN."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_2f
    new-instance v10, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v10, v12}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    aput-object v10, v9, v3

    :goto_e
    const/4 v10, 0x1

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 110
    :cond_31
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v5, :cond_32

    const/4 v3, 0x1

    goto :goto_f

    :cond_32
    move v3, v10

    .line 111
    :goto_f
    invoke-virtual {v0, v9}, Lcom/google/android/gms/cast/MediaStatus;->a([Lcom/google/android/gms/cast/MediaQueueItem;)V

    :cond_33
    if-eqz v3, :cond_35

    goto :goto_10

    .line 112
    :cond_34
    iput v6, v0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 113
    iput v6, v0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    .line 114
    iput v6, v0, Lcom/google/android/gms/cast/MediaStatus;->I:I

    .line 115
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 116
    iput v6, v0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    .line 117
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->Q:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :goto_10
    or-int/lit8 v2, v2, 0x8

    :cond_35
    const-string v3, "breakStatus"

    .line 119
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/AdBreakStatus;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v3

    .line 120
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->O:Lcom/google/android/gms/cast/AdBreakStatus;

    if-nez v4, :cond_36

    if-nez v3, :cond_37

    :cond_36
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->O:Lcom/google/android/gms/cast/AdBreakStatus;

    if-eqz v4, :cond_39

    .line 121
    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    :cond_37
    if-eqz v3, :cond_38

    const/4 v6, 0x1

    .line 122
    :cond_38
    iput-boolean v6, v0, Lcom/google/android/gms/cast/MediaStatus;->N:Z

    .line 123
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->O:Lcom/google/android/gms/cast/AdBreakStatus;

    or-int/lit8 v2, v2, 0x20

    :cond_39
    const-string v3, "videoInfo"

    .line 124
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/VideoInfo;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VideoInfo;

    move-result-object v3

    .line 125
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->P:Lcom/google/android/gms/cast/VideoInfo;

    if-nez v4, :cond_3a

    if-nez v3, :cond_3b

    :cond_3a
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->P:Lcom/google/android/gms/cast/VideoInfo;

    if-eqz v4, :cond_3c

    .line 126
    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 127
    :cond_3b
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->P:Lcom/google/android/gms/cast/VideoInfo;

    or-int/lit8 v2, v2, 0x40

    :cond_3c
    const-string v3, "breakInfo"

    .line 128
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v4, :cond_3d

    .line 129
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/cast/MediaInfo;->a(Lorg/json/JSONObject;)V

    or-int/lit8 v2, v2, 0x2

    :cond_3d
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x42a82c11 -> :sswitch_3
        -0x3964a094 -> :sswitch_2
        0x621b08dd -> :sswitch_1
        0x621b3cab -> :sswitch_0
    .end sparse-switch
.end method

.method public a(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->Q:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1
.end method

.method public final a([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->Q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 134
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 135
    aget-object v1, p1, v0

    .line 136
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->Q:Landroid/util/SparseArray;

    .line 138
    iget v1, v1, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->D:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_4

    return v2

    .line 4
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->x:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->y:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->z:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->z:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->A:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->B:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->C:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->C:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->E:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->E:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->H:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->I:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->I:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->L:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->D:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->D:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    .line 7
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    .line 8
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 10
    invoke-static {v1, v3}, LPp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->N:Z

    .line 12
    iget-boolean p1, p1, Lcom/google/android/gms/cast/MediaStatus;->N:Z

    if-ne v1, p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->z:D

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->C:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->D:J

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->E:D

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->I:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->N:Z

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->K:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->J:Ljava/lang/String;

    .line 2
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 5
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    .line 6
    invoke-static {p1, v1, v4, v5}, LCp;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    .line 7
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->y:I

    .line 8
    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    .line 9
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->z:D

    .line 10
    invoke-static {p1, v1, v4, v5}, LCp;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    .line 11
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    .line 12
    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    .line 13
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    .line 14
    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    .line 15
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->C:J

    .line 16
    invoke-static {p1, v1, v4, v5}, LCp;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x9

    .line 17
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->D:J

    invoke-static {p1, v1, v4, v5}, LCp;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    .line 18
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->E:D

    .line 19
    invoke-static {p1, v1, v4, v5}, LCp;->a(Landroid/os/Parcel;ID)V

    const/16 v1, 0xb

    .line 20
    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->F:Z

    .line 21
    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->G:[J

    if-nez v2, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {p1, v1}, LCp;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-static {p1, v1}, LCp;->b(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v1, 0xd

    .line 24
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    .line 25
    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    .line 26
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->I:I

    .line 27
    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->J:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x10

    .line 29
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->L:I

    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0x11

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->M:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, LCp;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x12

    .line 31
    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->N:Z

    .line 32
    invoke-static {p1, v1, v2}, LCp;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x13

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->O:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 34
    invoke-static {p1, v1, v2, p2, v3}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x14

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->P:Lcom/google/android/gms/cast/VideoInfo;

    .line 36
    invoke-static {p1, v1, v2, p2, v3}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 37
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
