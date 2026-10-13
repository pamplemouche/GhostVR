.class public final LKs;
.super Lns;
.source "PG"


# static fields
.field public static final A:Ljava/lang/String;


# instance fields
.field public e:J

.field public f:Lcom/google/android/gms/cast/MediaStatus;

.field public g:Ljava/lang/Long;

.field public h:LMs;

.field public final i:LQs;

.field public final j:LQs;

.field public final k:LQs;

.field public final l:LQs;

.field public final m:LQs;

.field public final n:LQs;

.field public final o:LQs;

.field public final p:LQs;

.field public final q:LQs;

.field public final r:LQs;

.field public final s:LQs;

.field public final t:LQs;

.field public final u:LQs;

.field public final v:LQs;

.field public final w:LQs;

.field public final x:LQs;

.field public final y:LQs;

.field public final z:LQs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    .line 1
    invoke-static {v0}, Lzs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LKs;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, LKs;->A:Ljava/lang/String;

    const-string v1, "MediaControlChannel"

    invoke-direct {p0, v0, v1}, Lns;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, LQs;

    const-wide/32 v1, 0x5265c00

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->i:LQs;

    .line 3
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->j:LQs;

    .line 4
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->k:LQs;

    .line 5
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->l:LQs;

    .line 6
    new-instance v0, LQs;

    const-wide/16 v3, 0x2710

    invoke-direct {v0, v3, v4}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->m:LQs;

    .line 7
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->n:LQs;

    .line 8
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->o:LQs;

    .line 9
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->p:LQs;

    .line 10
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->q:LQs;

    .line 11
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->r:LQs;

    .line 12
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->s:LQs;

    .line 13
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->t:LQs;

    .line 14
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->u:LQs;

    .line 15
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->v:LQs;

    .line 16
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->w:LQs;

    .line 17
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->y:LQs;

    .line 18
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->x:LQs;

    .line 19
    new-instance v0, LQs;

    invoke-direct {v0, v1, v2}, LQs;-><init>(J)V

    iput-object v0, p0, LKs;->z:LQs;

    .line 20
    iget-object v0, p0, LKs;->i:LQs;

    .line 21
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, LKs;->j:LQs;

    .line 23
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, LKs;->k:LQs;

    .line 25
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, LKs;->l:LQs;

    .line 27
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, LKs;->m:LQs;

    .line 29
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, LKs;->n:LQs;

    .line 31
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, LKs;->o:LQs;

    .line 33
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, LKs;->p:LQs;

    .line 35
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, LKs;->q:LQs;

    .line 37
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, LKs;->r:LQs;

    .line 39
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, LKs;->s:LQs;

    .line 41
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, LKs;->t:LQs;

    .line 43
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, LKs;->u:LQs;

    .line 45
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, LKs;->v:LQs;

    .line 47
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, LKs;->w:LQs;

    .line 49
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, LKs;->y:LQs;

    .line 51
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, LKs;->y:LQs;

    .line 53
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, LKs;->z:LQs;

    .line 55
    iget-object v1, p0, Lns;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, LKs;->h()V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(LPs;)J
    .locals 5

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 73
    iget-object v3, p0, LKs;->p:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 74
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "GET_STATUS"

    .line 75
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    iget-object p1, p0, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz p1, :cond_0

    const-string p1, "mediaSessionId"

    .line 77
    iget-object v3, p0, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 78
    iget-wide v3, v3, Lcom/google/android/gms/cast/MediaStatus;->x:J

    .line 79
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final a(LPs;DLorg/json/JSONObject;)J
    .locals 5

    .line 47
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 50
    iget-object v3, p0, LKs;->n:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 51
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    .line 52
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 53
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "level"

    .line 55
    invoke-virtual {p1, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 56
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p1, "customData"

    .line 57
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p4, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Volume cannot be "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(LPs;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v3, p3, v0

    if-ltz v3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v3

    .line 84
    iget-object v1, p0, LKs;->t:LQs;

    invoke-virtual {v1, v3, v4, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 85
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v1, "QUEUE_UPDATE"

    .line 86
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 87
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    const-string p1, "currentItemId"

    .line 88
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p6, :cond_3

    const-string p1, "jump"

    .line 89
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p5, :cond_5

    .line 90
    array-length p1, p5

    if-lez p1, :cond_5

    .line 91
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    .line 92
    :goto_1
    array-length p6, p5

    if-ge p2, p6, :cond_4

    .line 93
    aget-object p6, p5, p2

    invoke-virtual {p6}, Lcom/google/android/gms/cast/MediaQueueItem;->r()Lorg/json/JSONObject;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "items"

    .line 94
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    if-eqz p7, :cond_a

    .line 95
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "repeatMode"

    if-eqz p1, :cond_9

    const/4 p5, 0x1

    if-eq p1, p5, :cond_8

    const/4 p5, 0x2

    if-eq p1, p5, :cond_7

    const/4 p5, 0x3

    if-eq p1, p5, :cond_6

    goto :goto_2

    :cond_6
    :try_start_1
    const-string p1, "REPEAT_ALL_AND_SHUFFLE"

    .line 96
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_7
    const-string p1, "REPEAT_SINGLE"

    .line 97
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_8
    const-string p1, "REPEAT_ALL"

    .line 98
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_9
    const-string p1, "REPEAT_OFF"

    .line 99
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    const-string p1, "currentTime"

    long-to-double p2, p3

    const-wide p4, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, p4

    .line 100
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_b
    if-eqz p8, :cond_c

    const-string p1, "customData"

    .line 101
    invoke-virtual {v0, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :catch_0
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v3
.end method

.method public final a(LPs;JILorg/json/JSONObject;)J
    .locals 5

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 37
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, LKs;->g:Ljava/lang/Long;

    .line 38
    iget-object v3, p0, LKs;->m:LQs;

    new-instance v4, LLs;

    invoke-direct {v4, p0, p1}, LLs;-><init>(LKs;LPs;)V

    invoke-virtual {v3, v1, v2, v4}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 39
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SEEK"

    .line 40
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 41
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    long-to-double p2, p2

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v3

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    const-string p2, "resumeState"

    if-ne p4, p1, :cond_0

    :try_start_1
    const-string p1, "PLAYBACK_START"

    .line 43
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const-string p1, "PLAYBACK_PAUSE"

    .line 44
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    const-string p1, "customData"

    .line 45
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final a(LPs;Lcom/google/android/gms/cast/MediaInfo;LFj;)J
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, LKs;->i:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "LOAD"

    .line 5
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "media"

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->r()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "autoplay"

    .line 7
    iget-boolean p2, p3, LFj;->a:Z

    .line 8
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    .line 9
    iget-wide v3, p3, LFj;->b:J

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 10
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "playbackRate"

    .line 11
    iget-wide v3, p3, LFj;->c:D

    .line 12
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 13
    iget-object p1, p3, LFj;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "credentials"

    .line 14
    iget-object p2, p3, LFj;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_0
    iget-object p1, p3, LFj;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "credentialsType"

    .line 17
    iget-object p2, p3, LFj;->g:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    :cond_1
    iget-object p1, p3, LFj;->d:[J

    if-eqz p1, :cond_3

    .line 20
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 21
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 22
    aget-wide v4, p1, v3

    invoke-virtual {p2, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "activeTrackIds"

    .line 23
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_3
    iget-object p1, p3, LFj;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    const-string p2, "customData"

    .line 25
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final a(LPs;Lorg/json/JSONObject;)J
    .locals 5

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 29
    iget-object v3, p0, LKs;->j:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 30
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PAUSE"

    .line 31
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 32
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    .line 33
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final a(LPs;ZLorg/json/JSONObject;)J
    .locals 5

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 62
    iget-object v3, p0, LKs;->o:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 63
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    .line 64
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 65
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "muted"

    .line 67
    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 68
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "customData"

    .line 69
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final a(LPs;[I)J
    .locals 6

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 105
    iget-object v3, p0, LKs;->x:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 106
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEMS"

    .line 107
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 108
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 110
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p2, v4

    .line 111
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 112
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final a()V
    .locals 0

    .line 117
    invoke-super {p0}, Lns;->a()V

    .line 118
    invoke-virtual {p0}, LKs;->h()V

    return-void
.end method

.method public final b(LPs;)J
    .locals 5

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 11
    iget-object v3, p0, LKs;->w:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEM_IDS"

    .line 13
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 14
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final b(LPs;Lorg/json/JSONObject;)J
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lrs;->b()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, LKs;->k:LQs;

    invoke-virtual {v3, v1, v2, p1}, LQs;->a(JLPs;)V

    :try_start_0
    const-string p1, "requestId"

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PLAY"

    .line 5
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 6
    invoke-virtual {p0}, LKs;->i()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    .line 7
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lrs;->a(Ljava/lang/String;J)V

    return-wide v1
.end method

.method public final c()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, LKs;->h:LMs;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, LQk;

    .line 3
    iget-object v1, v0, LQk;->a:Lok;

    .line 4
    iget-object v1, v1, Lok;->g:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk;

    .line 6
    check-cast v2, Lgs;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lgs;->a(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgk;

    .line 9
    invoke-virtual {v1}, Lgk;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, LKs;->h:LMs;

    if-eqz v0, :cond_2

    .line 2
    check-cast v0, LQk;

    .line 3
    iget-object v1, v0, LQk;->a:Lok;

    .line 4
    iget-object v1, v1, Lok;->g:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk;

    .line 6
    check-cast v2, Lgs;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lgs;->a(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgk;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, LKs;->h:LMs;

    if-eqz v0, :cond_2

    .line 2
    check-cast v0, LQk;

    .line 3
    iget-object v1, v0, LQk;->a:Lok;

    .line 4
    iget-object v1, v1, Lok;->g:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk;

    .line 6
    check-cast v2, Lgs;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lgs;->a(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgk;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, LKs;->h:LMs;

    if-eqz v0, :cond_4

    .line 2
    check-cast v0, LQk;

    .line 3
    iget-object v1, v0, LQk;->a:Lok;

    .line 4
    iget-object v2, v1, Lok;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnk;

    .line 5
    invoke-virtual {v1}, Lok;->g()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {v1}, Lok;->g()Z

    move-result v0

    if-nez v0, :cond_0

    throw v2

    .line 7
    :cond_0
    throw v2

    .line 8
    :cond_1
    throw v2

    .line 9
    :cond_2
    iget-object v1, v0, LQk;->a:Lok;

    .line 10
    iget-object v1, v1, Lok;->g:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk;

    .line 12
    check-cast v2, Lgs;

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v3}, Lgs;->a(Z)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, v0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgk;

    .line 15
    invoke-virtual {v1}, Lgk;->b()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final h()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, LKs;->e:J

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 3
    iget-object v0, p0, Lns;->d:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQs;

    const/16 v2, 0x7d2

    .line 5
    invoke-virtual {v1, v2}, LQs;->a(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()J
    .locals 2

    .line 1
    iget-object v0, p0, LKs;->f:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, v0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, LNs;

    invoke-direct {v0}, LNs;-><init>()V

    throw v0
.end method
