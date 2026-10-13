.class public LNj0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:Ljava/lang/Object;

.field public static j:Ljava/util/Map;


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:LJ6;

.field public c:Ljava/util/Queue;

.field public final d:LTj0;

.field public final e:LJj0;

.field public f:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v11, "QUEUE_REMOVE"

    const-string v12, "QUEUE_REORDER"

    const-string v0, "PLAY"

    const-string v1, "LOAD"

    const-string v2, "PAUSE"

    const-string v3, "SEEK"

    const-string v4, "STOP_MEDIA"

    const-string v5, "MEDIA_SET_VOLUME"

    const-string v6, "MEDIA_GET_STATUS"

    const-string v7, "EDIT_TRACKS_INFO"

    const-string v8, "QUEUE_LOAD"

    const-string v9, "QUEUE_INSERT"

    const-string v10, "QUEUE_UPDATE"

    .line 1
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LNj0;->g:[Ljava/lang/String;

    const-string v0, "stream_volume"

    const-string v1, "stream_mute"

    const-string v2, "pause"

    const-string v3, "seek"

    .line 2
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LNj0;->h:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LNj0;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJj0;LTj0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LNj0;->e:LJj0;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LNj0;->a:Landroid/util/SparseArray;

    .line 4
    new-instance p1, LJ6;

    invoke-direct {p1}, LJ6;-><init>()V

    iput-object p1, p0, LNj0;->b:LJ6;

    .line 5
    iput-object p2, p0, LNj0;->d:LTj0;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LNj0;->c:Ljava/util/Queue;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LNj0;->f:Landroid/os/Handler;

    .line 8
    sget-object p1, LNj0;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 9
    :try_start_0
    sget-object p2, LNj0;->j:Ljava/util/Map;

    if-nez p2, :cond_0

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sput-object p2, LNj0;->j:Ljava/util/Map;

    const-string v0, "STOP_MEDIA"

    const-string v1, "STOP"

    .line 11
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p2, LNj0;->j:Ljava/util/Map;

    const-string v0, "MEDIA_SET_VOLUME"

    const-string v1, "SET_VOLUME"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p2, LNj0;->j:Ljava/util/Map;

    const-string v0, "MEDIA_GET_STATUS"

    const-string v1, "GET_STATUS"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 4

    .line 143
    instance-of v0, p0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    check-cast p0, Lorg/json/JSONArray;

    .line 145
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LNj0;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 147
    check-cast p0, Lorg/json/JSONObject;

    .line 148
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 149
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 150
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LNj0;->a(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 9

    const-string v0, "Must be called from the main thread."

    .line 67
    iget-object v1, p0, LNj0;->d:LTj0;

    invoke-virtual {v1}, LGj0;->g()Z

    move-result v1

    const-string v2, "{}"

    if-nez v1, :cond_0

    return-object v2

    .line 68
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "level"

    .line 69
    iget-object v4, p0, LNj0;->d:LTj0;

    .line 70
    iget-object v4, v4, LGj0;->b:LOj;

    .line 71
    invoke-virtual {v4}, LOj;->f()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "muted"

    .line 72
    iget-object v4, p0, LNj0;->d:LTj0;

    .line 73
    iget-object v4, v4, LGj0;->b:LOj;

    .line 74
    invoke-virtual {v4}, LOj;->g()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 75
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "label"

    .line 76
    iget-object v5, p0, LNj0;->d:LTj0;

    .line 77
    iget-object v5, v5, LGj0;->b:LOj;

    .line 78
    invoke-virtual {v5}, LOj;->d()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v5

    .line 79
    iget-object v6, v5, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    const-string v7, "__cast_nearby__"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    iget-object v5, v5, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 81
    :cond_1
    iget-object v5, v5, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    .line 82
    :goto_0
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "friendlyName"

    .line 83
    iget-object v5, p0, LNj0;->d:LTj0;

    .line 84
    iget-object v5, v5, LGj0;->b:LOj;

    .line 85
    invoke-virtual {v5}, LOj;->d()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v5

    .line 86
    iget-object v5, v5, Lcom/google/android/gms/cast/CastDevice;->z:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "capabilities"

    .line 88
    iget-object v5, p0, LNj0;->d:LTj0;

    invoke-virtual {v5}, LGj0;->c()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, LNj0;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "volume"

    .line 89
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isActiveInput"

    .line 90
    iget-object v4, p0, LNj0;->d:LTj0;

    .line 91
    iget-object v4, v4, LGj0;->b:LOj;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 92
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 93
    iget-object v6, v4, LOj;->j:LHm;

    if-eqz v6, :cond_3

    .line 94
    iget-object v4, v4, LOj;->h:Lxj;

    check-cast v4, Lwj;

    if-eqz v4, :cond_2

    .line 95
    sget-object v4, LIs;->a:Lxm;

    invoke-virtual {v6, v4}, LHm;->a(Lqm;)Lwm;

    move-result-object v4

    check-cast v4, Lss;

    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 97
    iget v4, v4, Lss;->R:I

    goto :goto_1

    .line 98
    :cond_2
    throw v5

    :cond_3
    const/4 v4, -0x1

    .line 99
    :goto_1
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "displayStatus"

    .line 100
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "receiverType"

    const-string v4, "cast"

    .line 101
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 103
    iget-object v4, p0, LNj0;->d:LTj0;

    .line 104
    iget-object v4, v4, LTj0;->h:Ljava/util/List;

    .line 105
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 106
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "name"

    .line 107
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 109
    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "sessionId"

    .line 110
    iget-object v7, p0, LNj0;->d:LTj0;

    invoke-virtual {v7}, LGj0;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "statusText"

    .line 111
    iget-object v7, p0, LNj0;->d:LTj0;

    .line 112
    iget-object v7, v7, LGj0;->b:LOj;

    if-eqz v7, :cond_8

    .line 113
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, v7, LOj;->j:LHm;

    if-eqz v0, :cond_6

    iget-object v7, v7, LOj;->h:Lxj;

    check-cast v7, Lwj;

    if-eqz v7, :cond_5

    .line 115
    sget-object v5, LIs;->a:Lxm;

    invoke-virtual {v0, v5}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 117
    iget-object v5, v0, Lss;->K:Ljava/lang/String;

    goto :goto_3

    .line 118
    :cond_5
    throw v5

    .line 119
    :cond_6
    :goto_3
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "receiver"

    .line 120
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "namespaces"

    .line 121
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "media"

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, LNj0;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    const-string v1, "connected"

    .line 123
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "transportId"

    const-string v1, "web-4"

    .line 124
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v0, p0, LNj0;->d:LTj0;

    .line 126
    iget-object v0, v0, LGj0;->b:LOj;

    .line 127
    invoke-virtual {v0}, LOj;->c()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "appId"

    if-eqz v0, :cond_7

    .line 128
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/cast/ApplicationMetadata;->w:Ljava/lang/String;

    .line 129
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 130
    :cond_7
    iget-object v0, p0, LNj0;->d:LTj0;

    .line 131
    iget-object v0, v0, LGj0;->e:LVj0;

    .line 132
    iget-object v0, v0, LVj0;->a:Lvj0;

    invoke-interface {v0}, Lvj0;->a()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v0, "displayName"

    .line 134
    iget-object v1, p0, LNj0;->d:LTj0;

    .line 135
    iget-object v1, v1, LGj0;->b:LOj;

    .line 136
    invoke-virtual {v1}, LOj;->d()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    .line 137
    iget-object v1, v1, Lcom/google/android/gms/cast/CastDevice;->z:Ljava/lang/String;

    .line 138
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_8
    throw v5

    .line 141
    :cond_9
    throw v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v0, "CafMR"

    const-string v3, "Building session message failed"

    .line 142
    invoke-static {v0, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public final a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2

    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 25
    iget-object v0, p0, LNj0;->e:LJj0;

    .line 26
    iget-object v0, v0, LJj0;->i:Ljava/util/Map;

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    .line 28
    invoke-virtual {p0, v1, p1, p2, v2}, LNj0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 50
    iget-object v0, p0, LNj0;->e:LJj0;

    const-string v1, "type"

    .line 51
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sequenceNumber"

    .line 53
    invoke-virtual {v2, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "timeoutMillis"

    .line 54
    invoke-virtual {v2, p4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "clientId"

    .line 55
    invoke-virtual {v2, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "message"

    if-eqz p3, :cond_2

    :try_start_1
    const-string v4, "remove_session"

    .line 56
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "disconnect_session"

    .line 57
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "v2_message"

    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "MEDIA_STATUS"

    .line 60
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p0, v4}, LNj0;->d(Lorg/json/JSONObject;)V

    .line 62
    :cond_1
    invoke-virtual {v2, p4, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {v2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to build the reply: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "CafMR"

    invoke-static {p4, p2, p3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {v0, p1, p2}, LJj0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Luj0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "label"

    .line 30
    iget-object v3, p1, Luj0;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "friendlyName"

    .line 32
    iget-object p1, p1, Luj0;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "capabilities"

    .line 34
    iget-object v2, p0, LNj0;->d:LTj0;

    invoke-virtual {v2}, LGj0;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, LNj0;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "volume"

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isActiveInput"

    .line 36
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "displayStatus"

    .line 37
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "receiverType"

    const-string v2, "cast"

    .line 38
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "receiver"

    .line 40
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    .line 41
    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "receiver_action"

    .line 43
    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sequenceNumber"

    const/4 v2, -0x1

    .line 44
    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timeoutMillis"

    .line 45
    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clientId"

    .line 46
    invoke-virtual {p3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    .line 47
    invoke-virtual {p3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object p1, p0, LNj0;->e:LJj0;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, LJj0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "CafMR"

    const-string p3, "Failed to send receiver action message"

    .line 49
    invoke-static {p1, p3, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "clientId"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, LNj0;->e:LJj0;

    .line 3
    iget-object v1, v1, LJj0;->i:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbj0;

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lbj0;->f:Z

    .line 6
    iget-object v1, p0, LNj0;->d:LTj0;

    invoke-virtual {v1}, LGj0;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p1, Lbj0;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, LNj0;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "new_session"

    .line 9
    invoke-virtual {p0, v1, v4, v2, v3}, LNj0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    :cond_2
    iget-object v1, p0, LNj0;->e:LJj0;

    if-eqz v1, :cond_4

    .line 11
    iget-object v2, p1, Lbj0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    iget-object v4, p1, Lbj0;->b:Ljava/lang/String;

    .line 13
    iget-object v4, v1, LIj0;->b:Lrj0;

    iget-object v5, p1, Lbj0;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lrj0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p1, Lbj0;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v0

    :cond_4
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 16
    iget-object v0, p0, LNj0;->d:LTj0;

    invoke-virtual {v0}, LGj0;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-static {p1}, LNj0;->a(Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_3

    const-string v0, "requestId"

    .line 18
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 19
    invoke-static {}, LZi0;->a()LZi0;

    move-result-object v1

    .line 20
    iget v2, v1, LZi0;->a:I

    if-nez v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LZi0;->a:I

    .line 21
    :cond_1
    iget v2, v1, LZi0;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, LZi0;->a:I

    .line 22
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v1, v2

    .line 23
    :cond_2
    iget-object v0, p0, LNj0;->a:Landroid/util/SparseArray;

    new-instance v2, LMj0;

    invoke-direct {v2, p3, p4}, LMj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 24
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, LNj0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 28
    iget-object v0, p0, LNj0;->d:LTj0;

    invoke-virtual {v0}, LGj0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_0
    iget-object v0, p0, LNj0;->d:LTj0;

    .line 30
    iget-object v0, v0, LGj0;->b:LOj;

    .line 31
    invoke-virtual {v0, p2, p1}, LOj;->a(Ljava/lang/String;Ljava/lang/String;)LJm;

    move-result-object p1

    const-string v0, "urn:x-cast:com.google.cast.media"

    .line 32
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 33
    new-instance p2, LKj0;

    invoke-direct {p2, p0, p3, p4}, LKj0;-><init>(LNj0;Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, LJm;->a(LMm;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lorg/json/JSONObject;)Z
    .locals 9

    const-string v0, "clientId"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 2
    iget-object v3, p0, LNj0;->d:LTj0;

    invoke-virtual {v3}, LGj0;->g()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v3, "message"

    .line 3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, LNj0;->d:LTj0;

    invoke-virtual {v4}, LGj0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v3, p0, LNj0;->e:LJj0;

    .line 6
    iget-object v3, v3, LJj0;->i:Ljava/util/Map;

    .line 7
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbj0;

    if-nez v3, :cond_2

    return v2

    :cond_2
    const/4 v4, -0x1

    const-string v5, "sequenceNumber"

    .line 8
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 9
    iget-object v4, p0, LNj0;->e:LJj0;

    .line 10
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "type"

    const-string v8, "leave_session"

    .line 11
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "timeoutMillis"

    .line 13
    invoke-virtual {v6, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v4, v1, p1}, LJj0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v0, p0, LNj0;->e:LJj0;

    .line 19
    iget-object v0, v0, LJj0;->i:Ljava/util/Map;

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbj0;

    .line 21
    iget-object v5, v3, Lbj0;->c:Ljava/lang/String;

    const-string v6, "tab_and_origin_scoped"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lbj0;->d:Ljava/lang/String;

    iget-object v6, v3, Lbj0;->d:Ljava/lang/String;

    .line 22
    invoke-static {v5, v6}, LUj0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v1, Lbj0;->e:I

    iget v6, v3, Lbj0;->e:I

    if-ne v5, v6, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    iget-object v5, v3, Lbj0;->c:Ljava/lang/String;

    const-string v6, "origin_scoped"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Lbj0;->d:Ljava/lang/String;

    iget-object v6, v3, Lbj0;->d:Ljava/lang/String;

    .line 24
    invoke-static {v5, v6}, LUj0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj0;

    .line 27
    iget-object v1, p0, LNj0;->e:LJj0;

    iget-object v0, v0, Lbj0;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LIj0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return v4

    :cond_8
    :goto_3
    return v2
.end method

.method public final c(Lorg/json/JSONObject;)Z
    .locals 13

    const-string v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v2_message"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "CafMR"

    const/4 v6, -0x1

    const-string v7, "sequenceNumber"

    const-string v8, "message"

    const-string v9, "clientId"

    if-eqz v2, :cond_c

    .line 3
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 4
    iget-object v2, p0, LNj0;->e:LJj0;

    .line 5
    iget-object v2, v2, LJj0;->i:Ljava/util/Map;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v6, "STOP"

    .line 10
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    iget-object v0, p0, LNj0;->b:LJ6;

    invoke-virtual {v0, v1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    iget-object v2, p0, LNj0;->b:LJ6;

    invoke-virtual {v2, v1, v0}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, LNj0;->d:LTj0;

    invoke-virtual {p1}, LGj0;->b()V

    goto/16 :goto_2

    :cond_2
    const-string v6, "SET_VOLUME"

    .line 16
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v0, "volume"

    .line 17
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "level"

    const-string v6, "muted"

    if-nez v0, :cond_3

    goto/16 :goto_3

    .line 18
    :cond_3
    iget-object v7, p0, LNj0;->d:LTj0;

    invoke-virtual {v7}, LGj0;->g()Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    .line 19
    :cond_4
    :try_start_0
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 20
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 21
    iget-object v7, p0, LNj0;->d:LTj0;

    .line 22
    iget-object v7, v7, LGj0;->b:LOj;

    .line 23
    invoke-virtual {v7}, LOj;->g()Z

    move-result v7

    if-eq v7, v6, :cond_5

    .line 24
    iget-object v7, p0, LNj0;->d:LTj0;

    .line 25
    iget-object v7, v7, LGj0;->b:LOj;

    .line 26
    invoke-virtual {v7, v6}, LOj;->a(Z)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 29
    iget-object v0, p0, LNj0;->d:LTj0;

    .line 30
    iget-object v0, v0, LGj0;->b:LOj;

    .line 31
    invoke-virtual {v0}, LOj;->f()D

    move-result-wide v9

    .line 32
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    sub-double/2addr v9, v7

    .line 33
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, v9, v11

    if-lez v0, :cond_6

    .line 34
    iget-object v0, p0, LNj0;->d:LTj0;

    .line 35
    iget-object v0, v0, LGj0;->b:LOj;

    .line 36
    invoke-virtual {v0, v7, v8}, LOj;->a(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :cond_6
    if-eqz v6, :cond_7

    .line 37
    iget-object v0, p0, LNj0;->c:Ljava/util/Queue;

    new-instance v2, LMj0;

    invoke-direct {v2, v1, p1}, LMj0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    :cond_7
    iget-object v0, p0, LNj0;->f:Landroid/os/Handler;

    new-instance v2, LLj0;

    invoke-direct {v2, p0, v1, p1}, LLj0;-><init>(LNj0;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 39
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send volume command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 40
    :cond_8
    sget-object v3, LNj0;->g:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 41
    sget-object v3, LNj0;->j:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 42
    sget-object v3, LNj0;->j:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v0, "urn:x-cast:com.google.cast.media"

    .line 44
    invoke-virtual {p0, v2, v0, v1, p1}, LNj0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x1

    :cond_b
    :goto_3
    return v3

    :cond_c
    const-string v0, "app_message"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 46
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 47
    iget-object v1, p0, LNj0;->e:LJj0;

    .line 48
    iget-object v1, v1, LJj0;->i:Ljava/util/Map;

    .line 49
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    .line 50
    :cond_d
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 51
    iget-object v2, p0, LNj0;->d:LTj0;

    invoke-virtual {v2}, LGj0;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sessionId"

    .line 52
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    const-string v2, "namespaceName"

    .line 54
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_4

    .line 56
    :cond_f
    iget-object v4, p0, LNj0;->d:LTj0;

    .line 57
    iget-object v4, v4, LTj0;->h:Ljava/util/List;

    .line 58
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_4

    .line 59
    :cond_10
    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 60
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_4

    .line 61
    :cond_11
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 62
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v1, v2, v0, p1}, LNj0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_4

    .line 64
    :cond_12
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    invoke-virtual {p0, v1, v2, v0, p1}, LNj0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    :cond_13
    :goto_4
    return v3

    :cond_14
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Unsupported message: %s"

    .line 66
    invoke-static {v5, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public final d(Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    iget-object v0, p0, LNj0;->d:LTj0;

    invoke-virtual {v0}, LGj0;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5
    iget-object v4, p0, LNj0;->d:LTj0;

    invoke-virtual {v4}, LGj0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "supportedMediaCommands"

    .line 6
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 8
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    const/4 v8, 0x1

    shl-int/2addr v8, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_1

    .line 9
    sget-object v8, LNj0;->h:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
