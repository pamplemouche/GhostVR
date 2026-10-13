.class public Lcom/google/android/gms/cast/MediaQueueItem;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:D

.field public B:D

.field public C:[J

.field public D:Ljava/lang/String;

.field public E:Lorg/json/JSONObject;

.field public w:Lcom/google/android/gms/cast/MediaInfo;

.field public x:I

.field public y:Z

.field public z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LIl;

    invoke-direct {v0}, LIl;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    .line 6
    iput-wide p6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    .line 7
    iput-wide p8, p0, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    .line 8
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    .line 9
    iput-object p11, p0, Lcom/google/android/gms/cast/MediaQueueItem;->D:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p11, :cond_0

    .line 10
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->D:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :catch_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->D:Ljava/lang/String;

    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v8, 0x0

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->a(Lorg/json/JSONObject;)Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Z
    .locals 11

    const-string v0, "media"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "itemId"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5
    iget v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    if-eq v4, v1, :cond_1

    .line 6
    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    const/4 v0, 0x1

    :cond_1
    const-string v1, "autoplay"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 9
    iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    if-eq v4, v1, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    const/4 v0, 0x1

    :cond_2
    const-string v1, "startTime"

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-wide v5, 0x3e7ad7f29abcaf48L    # 1.0E-7

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 13
    iget-wide v9, p0, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v5

    if-lez v1, :cond_3

    .line 14
    iput-wide v7, p0, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    const/4 v0, 0x1

    :cond_3
    const-string v1, "playbackDuration"

    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 17
    iget-wide v9, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v5

    if-lez v1, :cond_4

    .line 18
    iput-wide v7, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    const/4 v0, 0x1

    :cond_4
    const-string v1, "preloadTime"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 21
    iget-wide v9, p0, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v5

    if-lez v1, :cond_5

    .line 22
    iput-wide v7, p0, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    const/4 v0, 0x1

    :cond_5
    const/4 v1, 0x0

    const-string v4, "activeTrackIds"

    .line 23
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 24
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 26
    new-array v5, v4, [J

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_6

    .line 27
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 28
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    if-nez v1, :cond_7

    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    .line 29
    :cond_7
    array-length v1, v1

    if-eq v1, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_b

    .line 30
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    aget-wide v7, v6, v1

    aget-wide v9, v5, v1

    cmp-long v6, v7, v9

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    move-object v5, v1

    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    .line 31
    iput-object v5, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    const/4 v0, 0x1

    :cond_c
    const-string v1, "customData"

    .line 32
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

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
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 5
    invoke-static {v1, v3}, LPp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    .line 7
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
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
    const-string v1, "media"

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->r()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    if-eqz v1, :cond_0

    const-string v1, "itemId"

    .line 4
    iget v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "autoplay"

    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "startTime"

    .line 6
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const-string v1, "playbackDuration"

    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "preloadTime"

    .line 9
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    if-eqz v1, :cond_3

    .line 11
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-wide v5, v2, v4

    .line 13
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "activeTrackIds"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    const-string v1, "customData"

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->E:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->D:Ljava/lang/String;

    .line 2
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 5
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->x:I

    .line 6
    invoke-static {p1, p2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 p2, 0x4

    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->y:Z

    .line 8
    invoke-static {p1, p2, v1}, LCp;->a(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    .line 9
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    .line 10
    invoke-static {p1, p2, v1, v2}, LCp;->a(Landroid/os/Parcel;ID)V

    const/4 p2, 0x6

    .line 11
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    .line 12
    invoke-static {p1, p2, v1, v2}, LCp;->a(Landroid/os/Parcel;ID)V

    const/4 p2, 0x7

    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    .line 14
    invoke-static {p1, p2, v1, v2}, LCp;->a(Landroid/os/Parcel;ID)V

    const/16 p2, 0x8

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->C:[J

    if-nez v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {p1, p2}, LCp;->a(Landroid/os/Parcel;I)I

    move-result p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    :goto_1
    const/16 p2, 0x9

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->D:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
