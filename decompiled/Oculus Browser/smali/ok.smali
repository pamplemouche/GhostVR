.class public Lok;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LBj;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public final c:LKs;

.field public final d:Ljk;

.field public final e:Lxj;

.field public f:LHm;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LKs;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LKs;Lxj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lok;->g:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lok;->h:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lok;->i:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lok;->a:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lok;->b:Landroid/os/Handler;

    .line 8
    new-instance v0, Ljk;

    invoke-direct {v0, p0}, Ljk;-><init>(Lok;)V

    iput-object v0, p0, Lok;->d:Ljk;

    .line 9
    iput-object p2, p0, Lok;->e:Lxj;

    .line 10
    invoke-static {p1}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, LKs;

    iput-object p1, p0, Lok;->c:LKs;

    .line 11
    new-instance p2, LQk;

    invoke-direct {p2, p0}, LQk;-><init>(Lok;)V

    .line 12
    iput-object p2, p1, LKs;->h:LMs;

    .line 13
    iget-object p1, p0, Lok;->c:LKs;

    iget-object p2, p0, Lok;->d:Ljk;

    .line 14
    iput-object p2, p1, Lrs;->c:LOs;

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lrs;->a()V

    .line 16
    :cond_0
    new-instance p1, Lek;

    invoke-direct {p1, p0}, Lek;-><init>(Lok;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)LJm;
    .locals 4

    .line 137
    new-instance v0, Lkk;

    invoke-direct {v0}, Lkk;-><init>()V

    .line 138
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-direct {v1, v2, p0, p1, v3}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 140
    new-instance p0, LBk;

    invoke-direct {p0, v1}, LBk;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 141
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LLm;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 14

    .line 19
    iget-object v0, p0, Lok;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 20
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lok;->c:LKs;

    .line 22
    invoke-virtual {v1}, LKs;->c()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    iget-object v5, v1, LKs;->g:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 25
    :cond_1
    iget-wide v5, v1, LKs;->e:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    iget-object v5, v1, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 27
    iget-wide v6, v5, Lcom/google/android/gms/cast/MediaStatus;->z:D

    .line 28
    iget-wide v8, v5, Lcom/google/android/gms/cast/MediaStatus;->C:J

    .line 29
    iget v5, v5, Lcom/google/android/gms/cast/MediaStatus;->A:I

    const-wide/16 v10, 0x0

    cmpl-double v12, v6, v10

    if-eqz v12, :cond_8

    const/4 v10, 0x2

    if-eq v5, v10, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    iget-wide v10, v2, Lcom/google/android/gms/cast/MediaInfo;->A:J

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v1, v1, LKs;->e:J

    sub-long v1, v12, v1

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    move-wide v1, v3

    :cond_4
    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    long-to-double v1, v1

    mul-double v1, v1, v6

    double-to-long v1, v1

    add-long/2addr v1, v8

    cmp-long v5, v10, v3

    if-lez v5, :cond_6

    cmp-long v5, v1, v10

    if-lez v5, :cond_6

    move-wide v3, v10

    goto :goto_1

    :cond_6
    cmp-long v5, v1, v3

    if-gez v5, :cond_7

    goto :goto_1

    :cond_7
    move-wide v3, v1

    goto :goto_1

    :cond_8
    :goto_0
    move-wide v3, v8

    .line 32
    :goto_1
    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Llk;)Llk;
    .locals 2

    .line 142
    :try_start_0
    iget-object v0, p0, Lok;->f:LHm;

    invoke-virtual {v0, p1}, LHm;->a(LSm;)LSm;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 143
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    if-eqz p1, :cond_0

    .line 144
    new-instance v1, LDk;

    invoke-direct {v1, v0}, LDk;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 145
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LLm;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 146
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public final a(LHm;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lok;->f:LHm;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lok;->c:LKs;

    invoke-virtual {v0}, LKs;->a()V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lok;->e:Lxj;

    iget-object v2, p0, Lok;->f:LHm;

    const-string v3, "Must be called from the main thread."

    .line 4
    invoke-static {v3}, Lxp;->a(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lok;->c:LKs;

    .line 6
    iget-object v3, v3, Lrs;->b:Ljava/lang/String;

    .line 7
    check-cast v1, Lwj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 8
    :try_start_1
    sget-object v1, LIs;->a:Lxm;

    .line 9
    invoke-virtual {v2, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v1

    check-cast v1, Lss;

    .line 10
    invoke-virtual {v1, v3}, Lss;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 11
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "service error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 13
    :catch_1
    :goto_0
    iget-object v1, p0, Lok;->d:Ljk;

    .line 14
    iput-object v0, v1, Ljk;->a:LHm;

    .line 15
    iget-object v1, p0, Lok;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    :cond_2
    iput-object p1, p0, Lok;->f:LHm;

    if-eqz p1, :cond_3

    .line 17
    iget-object v0, p0, Lok;->d:Ljk;

    .line 18
    iput-object p1, v0, Ljk;->a:LHm;

    :cond_3
    return-void
.end method

.method public a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 34
    iget-object v3, v1, Lok;->c:LKs;

    .line 35
    iget-object v0, v3, Lrs;->a:LJs;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 36
    invoke-virtual {v0}, LJs;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "message received: %s"

    .line 37
    invoke-virtual {v0, v7, v5}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 v5, 0x2

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "type"

    .line 39
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "requestId"

    const-wide/16 v9, -0x1

    .line 40
    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 41
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v12, 0x4

    const/4 v13, 0x3

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v10, "QUEUE_ITEM_IDS"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_1
    const-string v10, "MEDIA_STATUS"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_2
    const-string v10, "INVALID_PLAYER_STATE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_3
    const-string v10, "QUEUE_CHANGE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_4
    const-string v10, "LOAD_FAILED"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_5
    const-string v10, "INVALID_REQUEST"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :sswitch_6
    const-string v10, "QUEUE_ITEMS"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    goto :goto_1

    :sswitch_7
    const-string v10, "LOAD_CANCELLED"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, -0x1

    :goto_1
    const-string v10, "itemIds"

    const/16 v14, 0x834

    const-string v15, "customData"

    const/4 v11, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_f

    .line 42
    :pswitch_0
    :try_start_1
    iget-object v7, v3, LKs;->x:LQs;

    .line 43
    invoke-virtual {v7, v8, v9, v6, v11}, LQs;->a(JILjava/lang/Object;)Z

    .line 44
    iget-object v7, v3, LKs;->h:LMs;

    if-eqz v7, :cond_1a

    const-string v7, "items"

    .line 45
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v8, 0x0

    .line 47
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 48
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 49
    new-instance v10, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v10, v9}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 50
    iget-object v9, v10, Lcom/google/android/gms/cast/MediaQueueItem;->w:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v9, :cond_5

    .line 51
    iget-wide v11, v10, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_4

    iget-wide v11, v10, Lcom/google/android/gms/cast/MediaQueueItem;->z:D

    const-wide/16 v13, 0x0

    cmpg-double v9, v11, v13

    if-ltz v9, :cond_4

    .line 52
    iget-wide v11, v10, Lcom/google/android/gms/cast/MediaQueueItem;->A:D

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_3

    .line 53
    iget-wide v11, v10, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_2

    iget-wide v11, v10, Lcom/google/android/gms/cast/MediaQueueItem;->B:D

    cmpg-double v9, v11, v13

    if-ltz v9, :cond_2

    .line 54
    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "preloadTime cannot be negative or Nan."

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "playbackDuration cannot be NaN."

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "startTime cannot be negative or NaN."

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "media cannot be null."

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_6
    iget-object v0, v3, LKs;->h:LMs;

    check-cast v0, LQk;

    .line 60
    iget-object v0, v0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgk;

    .line 61
    invoke-virtual {v8, v7}, Lgk;->a([Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto :goto_3

    .line 62
    :pswitch_1
    iget-object v7, v3, LKs;->y:LQs;

    .line 63
    invoke-virtual {v7, v8, v9, v6, v11}, LQs;->a(JILjava/lang/Object;)Z

    .line 64
    iget-object v7, v3, LKs;->h:LMs;

    if-eqz v7, :cond_1a

    const-string v7, "changeType"

    .line 65
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8}, LKs;->a(Lorg/json/JSONArray;)[I

    move-result-object v8

    const-string v9, "insertBefore"

    .line 67
    invoke-virtual {v0, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v8, :cond_1a

    .line 68
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto :goto_4

    :sswitch_8
    const-string v9, "NO_CHANGE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :sswitch_9
    const-string v9, "ITEMS_CHANGE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :sswitch_a
    const-string v9, "UPDATE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v12, 0x3

    goto :goto_5

    :sswitch_b
    const-string v9, "REMOVE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v12, 0x2

    goto :goto_5

    :sswitch_c
    const-string v9, "INSERT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v12, -0x1

    :goto_5
    if-eqz v12, :cond_b

    if-eq v12, v4, :cond_a

    if-eq v12, v5, :cond_9

    if-eq v12, v13, :cond_8

    goto/16 :goto_f

    .line 69
    :cond_8
    iget-object v0, v3, LKs;->h:LMs;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v0, LQk;

    :try_start_2
    invoke-virtual {v0, v8}, LQk;->a([I)V

    goto/16 :goto_f

    .line 70
    :cond_9
    iget-object v0, v3, LKs;->h:LMs;

    check-cast v0, LQk;

    .line 71
    iget-object v0, v0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgk;

    .line 72
    invoke-virtual {v7, v8}, Lgk;->c([I)V

    goto :goto_6

    .line 73
    :cond_a
    iget-object v0, v3, LKs;->h:LMs;

    check-cast v0, LQk;

    .line 74
    iget-object v0, v0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgk;

    .line 75
    invoke-virtual {v7, v8}, Lgk;->b([I)V

    goto :goto_7

    .line 76
    :cond_b
    iget-object v7, v3, LKs;->h:LMs;

    check-cast v7, LQk;

    .line 77
    iget-object v7, v7, LQk;->a:Lok;

    iget-object v7, v7, Lok;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgk;

    .line 78
    invoke-virtual {v9, v8, v0}, Lgk;->a([II)V

    goto :goto_8

    .line 79
    :pswitch_2
    iget-object v7, v3, LKs;->w:LQs;

    .line 80
    invoke-virtual {v7, v8, v9, v6, v11}, LQs;->a(JILjava/lang/Object;)Z

    .line 81
    iget-object v7, v3, LKs;->h:LMs;

    if-eqz v7, :cond_1a

    .line 82
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, LKs;->a(Lorg/json/JSONArray;)[I

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 83
    iget-object v7, v3, LKs;->h:LMs;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v7, LQk;

    :try_start_3
    invoke-virtual {v7, v0}, LQk;->a([I)V

    goto/16 :goto_f

    .line 84
    :pswitch_3
    iget-object v7, v3, Lrs;->a:LJs;

    const-string v10, "received unexpected error: Invalid Request."

    new-array v11, v6, [Ljava/lang/Object;

    .line 85
    iget-object v12, v7, LJs;->a:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    iget-object v7, v3, Lns;->d:Ljava/util/List;

    .line 88
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LQs;

    .line 89
    invoke-virtual {v10, v8, v9, v14, v0}, LQs;->a(JILjava/lang/Object;)Z

    goto :goto_9

    .line 90
    :pswitch_4
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    iget-object v7, v3, LKs;->i:LQs;

    const/16 v10, 0x835

    invoke-virtual {v7, v8, v9, v10, v0}, LQs;->a(JILjava/lang/Object;)Z

    goto/16 :goto_f

    .line 92
    :pswitch_5
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    iget-object v7, v3, LKs;->i:LQs;

    invoke-virtual {v7, v8, v9, v14, v0}, LQs;->a(JILjava/lang/Object;)Z

    goto/16 :goto_f

    .line 94
    :pswitch_6
    iget-object v7, v3, Lrs;->a:LJs;

    const-string v10, "received unexpected error: Invalid Player State."

    new-array v11, v6, [Ljava/lang/Object;

    .line 95
    iget-object v12, v7, LJs;->a:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 97
    iget-object v7, v3, Lns;->d:Ljava/util/List;

    .line 98
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LQs;

    .line 99
    invoke-virtual {v10, v8, v9, v14, v0}, LQs;->a(JILjava/lang/Object;)Z

    goto :goto_a

    :pswitch_7
    const-string v7, "status"

    .line 100
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_19

    .line 102
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    iget-object v7, v3, LKs;->i:LQs;

    invoke-virtual {v7, v8, v9}, LQs;->a(J)Z

    move-result v7

    .line 104
    iget-object v10, v3, LKs;->n:LQs;

    .line 105
    invoke-virtual {v10}, LQs;->a()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v3, LKs;->n:LQs;

    invoke-virtual {v10, v8, v9}, LQs;->a(J)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    iget-object v10, v3, LKs;->o:LQs;

    .line 106
    invoke-virtual {v10}, LQs;->a()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v3, LKs;->o:LQs;

    invoke-virtual {v10, v8, v9}, LQs;->a(J)Z

    move-result v10

    if-nez v10, :cond_e

    :cond_d
    const/4 v10, 0x1

    goto :goto_b

    :cond_e
    const/4 v10, 0x0

    :goto_b
    if-nez v7, :cond_10

    .line 107
    iget-object v7, v3, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v7, :cond_f

    goto :goto_c

    .line 108
    :cond_f
    iget-object v7, v3, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v7, v0, v10}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_d

    .line 109
    :cond_10
    :goto_c
    new-instance v7, Lcom/google/android/gms/cast/MediaStatus;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object v12, v7

    .line 110
    invoke-direct/range {v12 .. v36}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V

    .line 111
    invoke-virtual {v7, v0, v6}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I

    .line 112
    iput-object v7, v3, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v3, LKs;->e:J

    const/16 v0, 0x7f

    :goto_d
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_11

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v3, LKs;->e:J

    .line 115
    invoke-virtual {v3}, LKs;->g()V

    :cond_11
    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_12

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v3, LKs;->e:J

    .line 117
    invoke-virtual {v3}, LKs;->g()V

    :cond_12
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_13

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v3, LKs;->e:J

    :cond_13
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_14

    .line 119
    invoke-virtual {v3}, LKs;->d()V

    :cond_14
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_15

    .line 120
    invoke-virtual {v3}, LKs;->f()V

    :cond_15
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_16

    .line 121
    invoke-virtual {v3}, LKs;->e()V

    :cond_16
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_17

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v3, LKs;->e:J

    .line 123
    iget-object v7, v3, LKs;->h:LMs;

    if-eqz v7, :cond_17

    .line 124
    iget-object v7, v3, LKs;->h:LMs;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    check-cast v7, LQk;

    :try_start_4
    invoke-virtual {v7}, LQk;->a()V

    :cond_17
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_18

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v3, LKs;->e:J

    .line 126
    invoke-virtual {v3}, LKs;->g()V

    .line 127
    :cond_18
    iget-object v0, v3, Lns;->d:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LQs;

    .line 129
    invoke-virtual {v7, v8, v9, v6, v11}, LQs;->a(JILjava/lang/Object;)Z

    goto :goto_e

    .line 130
    :cond_19
    iput-object v11, v3, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 131
    invoke-virtual {v3}, LKs;->g()V

    .line 132
    invoke-virtual {v3}, LKs;->d()V

    .line 133
    invoke-virtual {v3}, LKs;->f()V

    .line 134
    invoke-virtual {v3}, LKs;->e()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 135
    iget-object v3, v3, Lrs;->a:LJs;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object v2, v5, v4

    .line 136
    iget-object v0, v3, LJs;->a:Ljava/lang/String;

    const-string v2, "Message is malformed (%s); ignoring: %s"

    invoke-virtual {v3, v2, v5}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_7
        -0x6ab4c52e -> :sswitch_6
        -0x430e23f9 -> :sswitch_5
        -0xfa7664a -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
        0x5330afee -> :sswitch_8
    .end sparse-switch
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lok;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Lcom/google/android/gms/cast/MediaStatus;->B:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lok;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lok;->c:LKs;

    invoke-virtual {v1}, LKs;->c()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Lcom/google/android/gms/cast/MediaStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lok;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lok;->c:LKs;

    .line 4
    iget-object v1, v1, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lok;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Lcom/google/android/gms/cast/MediaStatus;->A:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()J
    .locals 3

    .line 1
    iget-object v0, p0, Lok;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 2
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lok;->c:LKs;

    .line 4
    invoke-virtual {v1}, LKs;->c()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-wide v1, v1, Lcom/google/android/gms/cast/MediaInfo;->A:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lok;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lok;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lok;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->c()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/google/android/gms/cast/MediaInfo;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lok;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lok;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/cast/MediaStatus;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()LJm;
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    .line 3
    invoke-static {v0, v1}, Lok;->a(ILjava/lang/String;)LJm;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lvk;

    iget-object v2, p0, Lok;->f:LHm;

    invoke-direct {v0, p0, v2, v1}, Lvk;-><init>(Lok;LHm;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lok;->a(Llk;)Llk;

    :goto_0
    return-object v0
.end method

.method public o()LJm;
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    .line 3
    invoke-static {v0, v1}, Lok;->a(ILjava/lang/String;)LJm;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lwk;

    iget-object v2, p0, Lok;->f:LHm;

    invoke-direct {v0, p0, v2, v1}, Lwk;-><init>(Lok;LHm;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lok;->a(Llk;)Llk;

    :goto_0
    return-object v0
.end method

.method public p()LJm;
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lok;->a(ILjava/lang/String;)LJm;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, LRk;

    iget-object v1, p0, Lok;->f:LHm;

    invoke-direct {v0, p0, v1}, LRk;-><init>(Lok;LHm;)V

    invoke-virtual {p0, v0}, Lok;->a(Llk;)Llk;

    return-object v0
.end method

.method public q()V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lok;->e()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lok;->o()LJm;

    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lok;->n()LJm;

    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lok;->f:LHm;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lok;->e:Lxj;

    const-string v2, "Must be called from the main thread."

    .line 3
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lok;->c:LKs;

    .line 5
    iget-object v2, v2, Lrs;->b:Ljava/lang/String;

    .line 6
    check-cast v1, Lwj;

    if-eqz v1, :cond_0

    .line 7
    :try_start_0
    sget-object v1, LIs;->a:Lxm;

    .line 8
    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 9
    invoke-virtual {v0, v2, p0}, Lss;->a(Ljava/lang/String;LBj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 11
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lok;->f:LHm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
