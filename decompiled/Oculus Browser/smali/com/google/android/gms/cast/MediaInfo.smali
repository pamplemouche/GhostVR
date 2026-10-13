.class public Lcom/google/android/gms/cast/MediaInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:J

.field public B:Ljava/util/List;

.field public C:Lcom/google/android/gms/cast/TextTrackStyle;

.field public D:Ljava/lang/String;

.field public E:Ljava/util/List;

.field public F:Ljava/util/List;

.field public G:Ljava/lang/String;

.field public H:Lorg/json/JSONObject;

.field public final w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Lcom/google/android/gms/cast/MediaMetadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LFl;

    invoke-direct {v0}, LFl;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/MediaInfo;->x:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    .line 6
    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaInfo;->A:J

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/cast/MediaInfo;->D:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p9, :cond_0

    .line 10
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->D:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->D:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    .line 14
    :goto_0
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    .line 15
    iput-object p11, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    .line 16
    iput-object p12, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 32

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const-string v0, "contentId"

    .line 17
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    .line 18
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "streamType"

    .line 19
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 21
    iput v6, v13, Lcom/google/android/gms/cast/MediaInfo;->x:I

    goto :goto_0

    :cond_0
    const-string v2, "BUFFERED"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    iput v5, v13, Lcom/google/android/gms/cast/MediaInfo;->x:I

    goto :goto_0

    :cond_1
    const-string v2, "LIVE"

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iput v4, v13, Lcom/google/android/gms/cast/MediaInfo;->x:I

    goto :goto_0

    .line 26
    :cond_2
    iput v3, v13, Lcom/google/android/gms/cast/MediaInfo;->x:I

    :goto_0
    const/4 v0, 0x0

    const-string v2, "contentType"

    .line 27
    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    const-string v2, "metadata"

    .line 28
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v7, :cond_8

    .line 29
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "metadataType"

    .line 30
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 31
    new-instance v11, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v11, v10}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    iput-object v11, v13, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    .line 32
    iget-object v10, v11, Lcom/google/android/gms/cast/MediaMetadata;->x:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->clear()V

    .line 33
    iget-object v10, v11, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 34
    iput v6, v11, Lcom/google/android/gms/cast/MediaMetadata;->y:I

    .line 35
    :try_start_0
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v11, Lcom/google/android/gms/cast/MediaMetadata;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 36
    :goto_1
    iget-object v7, v11, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    invoke-static {v7, v2}, LSs;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 37
    iget v7, v11, Lcom/google/android/gms/cast/MediaMetadata;->y:I

    const-string v10, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v12, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v15, "com.google.android.gms.cast.metadata.TITLE"

    if-eqz v7, :cond_7

    if-eq v7, v5, :cond_6

    if-eq v7, v4, :cond_5

    if-eq v7, v9, :cond_4

    if-eq v7, v8, :cond_3

    new-array v7, v6, [Ljava/lang/String;

    .line 38
    invoke-virtual {v11, v2, v7}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v19, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v20, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v21, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v22, "com.google.android.gms.cast.metadata.CREATION_DATE"

    const-string v15, "com.google.android.gms.cast.metadata.TITLE"

    const-string v16, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v17, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v18, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 39
    filled-new-array/range {v15 .. v22}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v2, v7}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v19, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v20, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v21, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v22, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v15, "com.google.android.gms.cast.metadata.TITLE"

    const-string v16, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v17, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v18, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 40
    filled-new-array/range {v15 .. v22}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v2, v7}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v7, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v10, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v12, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v6, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 41
    filled-new-array {v15, v7, v10, v12, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v6, "com.google.android.gms.cast.metadata.STUDIO"

    .line 42
    filled-new-array {v15, v6, v12, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v6, "com.google.android.gms.cast.metadata.ARTIST"

    .line 43
    filled-new-array {v15, v6, v12, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Lcom/google/android/gms/cast/MediaMetadata;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    :cond_8
    :goto_2
    const-wide/16 v6, -0x1

    .line 44
    iput-wide v6, v13, Lcom/google/android/gms/cast/MediaInfo;->A:J

    const-string v2, "duration"

    .line 45
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-wide/16 v6, 0x0

    .line 46
    invoke-virtual {v14, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_9

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v10

    double-to-long v6, v6

    .line 48
    iput-wide v6, v13, Lcom/google/android/gms/cast/MediaInfo;->A:J

    :cond_9
    const-string v2, "tracks"

    .line 49
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v10, "customData"

    if-eqz v6, :cond_14

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v13, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    .line 51
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v6, 0x0

    .line 52
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v6, v11, :cond_15

    .line 53
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 54
    new-instance v12, Lcom/google/android/gms/cast/MediaTrack;

    const/16 v25, -0x1

    const/16 v26, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v12

    .line 55
    invoke-direct/range {v17 .. v26}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v15, "trackId"

    .line 56
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v12, Lcom/google/android/gms/cast/MediaTrack;->w:J

    const-string v7, "type"

    .line 57
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TEXT"

    .line 58
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 59
    iput v5, v12, Lcom/google/android/gms/cast/MediaTrack;->x:I

    goto :goto_4

    :cond_a
    const-string v8, "AUDIO"

    .line 60
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 61
    iput v4, v12, Lcom/google/android/gms/cast/MediaTrack;->x:I

    goto :goto_4

    :cond_b
    const-string v8, "VIDEO"

    .line 62
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 63
    iput v9, v12, Lcom/google/android/gms/cast/MediaTrack;->x:I

    :goto_4
    const-string v7, "trackContentId"

    .line 64
    invoke-virtual {v11, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/cast/MediaTrack;->y:Ljava/lang/String;

    const-string v7, "trackContentType"

    .line 65
    invoke-virtual {v11, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/cast/MediaTrack;->z:Ljava/lang/String;

    const-string v7, "name"

    .line 66
    invoke-virtual {v11, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/cast/MediaTrack;->A:Ljava/lang/String;

    const-string v7, "language"

    .line 67
    invoke-virtual {v11, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/cast/MediaTrack;->B:Ljava/lang/String;

    const-string v7, "subtype"

    .line 68
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 69
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SUBTITLES"

    .line 70
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 71
    iput v5, v12, Lcom/google/android/gms/cast/MediaTrack;->C:I

    goto :goto_5

    :cond_c
    const-string v8, "CAPTIONS"

    .line 72
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 73
    iput v4, v12, Lcom/google/android/gms/cast/MediaTrack;->C:I

    goto :goto_5

    :cond_d
    const-string v8, "DESCRIPTIONS"

    .line 74
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 75
    iput v9, v12, Lcom/google/android/gms/cast/MediaTrack;->C:I

    goto :goto_5

    :cond_e
    const-string v8, "CHAPTERS"

    .line 76
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x4

    .line 77
    iput v8, v12, Lcom/google/android/gms/cast/MediaTrack;->C:I

    goto :goto_5

    :cond_f
    const-string v8, "METADATA"

    .line 78
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x5

    .line 79
    iput v7, v12, Lcom/google/android/gms/cast/MediaTrack;->C:I

    goto :goto_5

    .line 80
    :cond_10
    iput v3, v12, Lcom/google/android/gms/cast/MediaTrack;->C:I

    goto :goto_5

    :cond_11
    const/4 v7, 0x0

    .line 81
    iput v7, v12, Lcom/google/android/gms/cast/MediaTrack;->C:I

    .line 82
    :goto_5
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/cast/MediaTrack;->E:Lorg/json/JSONObject;

    .line 83
    iget-object v7, v13, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x4

    goto/16 :goto_3

    .line 84
    :cond_12
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid type: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_6
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_14
    iput-object v0, v13, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    :cond_15
    const-string v2, "textTrackStyle"

    .line 86
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 87
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    new-instance v3, Lcom/google/android/gms/cast/TextTrackStyle;

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    move-object/from16 v19, v3

    .line 89
    invoke-direct/range {v19 .. v31}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>(FIIIIIIILjava/lang/String;IILjava/lang/String;)V

    const-string v6, "fontScale"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 90
    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v3, Lcom/google/android/gms/cast/TextTrackStyle;->w:F

    const-string v6, "foregroundColor"

    .line 91
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/cast/TextTrackStyle;->a(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/google/android/gms/cast/TextTrackStyle;->x:I

    const-string v6, "backgroundColor"

    .line 92
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/cast/TextTrackStyle;->a(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/google/android/gms/cast/TextTrackStyle;->y:I

    const-string v6, "edgeType"

    .line 93
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 94
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    .line 96
    iput v7, v3, Lcom/google/android/gms/cast/TextTrackStyle;->z:I

    goto :goto_7

    :cond_16
    const-string v7, "OUTLINE"

    .line 97
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 98
    iput v5, v3, Lcom/google/android/gms/cast/TextTrackStyle;->z:I

    goto :goto_7

    :cond_17
    const-string v7, "DROP_SHADOW"

    .line 99
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 100
    iput v4, v3, Lcom/google/android/gms/cast/TextTrackStyle;->z:I

    goto :goto_7

    :cond_18
    const-string v7, "RAISED"

    .line 101
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 102
    iput v9, v3, Lcom/google/android/gms/cast/TextTrackStyle;->z:I

    goto :goto_7

    :cond_19
    const-string v7, "DEPRESSED"

    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x4

    .line 104
    iput v6, v3, Lcom/google/android/gms/cast/TextTrackStyle;->z:I

    :cond_1a
    :goto_7
    const-string v6, "edgeColor"

    .line 105
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/cast/TextTrackStyle;->a(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/google/android/gms/cast/TextTrackStyle;->A:I

    const-string v6, "windowType"

    .line 106
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "NORMAL"

    if-eqz v7, :cond_1d

    .line 107
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    .line 109
    iput v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->B:I

    goto :goto_8

    .line 110
    :cond_1b
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 111
    iput v5, v3, Lcom/google/android/gms/cast/TextTrackStyle;->B:I

    goto :goto_8

    :cond_1c
    const-string v1, "ROUNDED_CORNERS"

    .line 112
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 113
    iput v4, v3, Lcom/google/android/gms/cast/TextTrackStyle;->B:I

    :cond_1d
    :goto_8
    const-string v1, "windowColor"

    .line 114
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/TextTrackStyle;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->C:I

    .line 115
    iget v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->B:I

    if-ne v1, v4, :cond_1e

    const-string v1, "windowRoundedCornerRadius"

    const/4 v6, 0x0

    .line 116
    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->D:I

    :cond_1e
    const-string v1, "fontFamily"

    .line 117
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/TextTrackStyle;->E:Ljava/lang/String;

    const-string v0, "fontGenericFamily"

    .line 118
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 119
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SANS_SERIF"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    .line 121
    iput v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->F:I

    goto :goto_9

    :cond_1f
    const-string v1, "MONOSPACED_SANS_SERIF"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 123
    iput v5, v3, Lcom/google/android/gms/cast/TextTrackStyle;->F:I

    goto :goto_9

    :cond_20
    const-string v1, "SERIF"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 125
    iput v4, v3, Lcom/google/android/gms/cast/TextTrackStyle;->F:I

    goto :goto_9

    :cond_21
    const-string v1, "MONOSPACED_SERIF"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 127
    iput v9, v3, Lcom/google/android/gms/cast/TextTrackStyle;->F:I

    goto :goto_9

    :cond_22
    const-string v1, "CASUAL"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x4

    .line 129
    iput v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->F:I

    goto :goto_9

    :cond_23
    const-string v1, "CURSIVE"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x5

    .line 131
    iput v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->F:I

    goto :goto_9

    :cond_24
    const-string v1, "SMALL_CAPITALS"

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x6

    .line 133
    iput v0, v3, Lcom/google/android/gms/cast/TextTrackStyle;->F:I

    :cond_25
    :goto_9
    const-string v0, "fontStyle"

    .line 134
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 135
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    .line 137
    iput v1, v3, Lcom/google/android/gms/cast/TextTrackStyle;->G:I

    goto :goto_a

    :cond_26
    const-string v1, "BOLD"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 139
    iput v5, v3, Lcom/google/android/gms/cast/TextTrackStyle;->G:I

    goto :goto_a

    :cond_27
    const-string v1, "ITALIC"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 141
    iput v4, v3, Lcom/google/android/gms/cast/TextTrackStyle;->G:I

    goto :goto_a

    :cond_28
    const-string v1, "BOLD_ITALIC"

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 143
    iput v9, v3, Lcom/google/android/gms/cast/TextTrackStyle;->G:I

    .line 144
    :cond_29
    :goto_a
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/TextTrackStyle;->I:Lorg/json/JSONObject;

    .line 145
    iput-object v3, v13, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    goto :goto_b

    .line 146
    :cond_2a
    iput-object v0, v13, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 147
    :goto_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->a(Lorg/json/JSONObject;)V

    .line 148
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v13, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    const-string v0, "entity"

    .line 149
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 150
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    :cond_2b
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "breaks"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const-string v0, "breakClips"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    .line 11
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/AdBreakClipInfo;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

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
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 5
    invoke-static {v1, v3}, LPp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->x:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->x:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    .line 8
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->A:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->A:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    .line 9
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 10
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    .line 11
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    .line 12
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    .line 13
    invoke-static {v1, p1}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->x:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final r()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "contentId"

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->x:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "NONE"

    goto :goto_0

    :cond_0
    const-string v1, "LIVE"

    goto :goto_0

    :cond_1
    const-string v1, "BUFFERED"

    :goto_0
    const-string v2, "streamType"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "contentType"

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    if-eqz v1, :cond_3

    const-string v1, "metadata"

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->r()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, -0x1

    const-string v5, "duration"

    cmp-long v6, v1, v3

    if-gtz v6, :cond_4

    .line 10
    :try_start_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :cond_4
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 12
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 14
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaTrack;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaTrack;->r()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    const-string v2, "tracks"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    if-eqz v1, :cond_7

    const-string v1, "textTrackStyle"

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->r()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    const-string v1, "customData"

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "entity"

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->r()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_a
    const-string v2, "breaks"

    .line 28
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 30
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakClipInfo;->r()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_c
    const-string v2, "breakClips"

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->H:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->D:Ljava/lang/String;

    .line 2
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x2

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/lang/String;

    const/4 v4, 0x0

    .line 4
    invoke-static {p1, v2, v3, v4}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x3

    .line 5
    iget v3, p0, Lcom/google/android/gms/cast/MediaInfo;->x:I

    .line 6
    invoke-static {p1, v2, v3}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v2, 0x4

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    .line 8
    invoke-static {p1, v2, v3, v4}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x5

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    .line 10
    invoke-static {p1, v2, v3, p2, v4}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x6

    .line 11
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaInfo;->A:J

    .line 12
    invoke-static {p1, v2, v5, v6}, LCp;->a(Landroid/os/Parcel;IJ)V

    const/4 v2, 0x7

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/util/List;

    .line 14
    invoke-static {p1, v2, v3, v4}, LCp;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v2, 0x8

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 16
    invoke-static {p1, v2, v3, p2, v4}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x9

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->D:Ljava/lang/String;

    invoke-static {p1, p2, v2, v4}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xa

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/util/List;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 19
    :goto_1
    invoke-static {p1, p2, v2, v4}, LCp;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0xb

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 21
    :goto_2
    invoke-static {p1, p2, v1, v4}, LCp;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0xc

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Ljava/lang/String;

    .line 23
    invoke-static {p1, p2, v1, v4}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
