.class final Lcom/oculus/vrapi/TrackingServiceClient$2;
.super Lcom/oculus/vrapi/ITrackingServiceClient$Stub;
.source "TrackingServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/oculus/vrapi/ITrackingServiceClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackingModeFlags()I
    .locals 1

    .line 154
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$100()I

    move-result v0

    return v0
.end method

.method public onButtonDown(JI)V
    .locals 3

    .line 160
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;

    if-eqz v1, :cond_0

    .line 165
    iget-object p1, v1, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->ButtonHandler:Lcom/oculus/vrapi/RemoteButtonHandler;

    invoke-virtual {p1, p3}, Lcom/oculus/vrapi/RemoteButtonHandler;->onButtonDownEvent(I)V

    goto :goto_0

    :cond_0
    const-string p3, "TrackingServiceClient"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received button event for remote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which is not registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TrackingServiceClient"

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Registered remotes are: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRemoteConnected(J)V
    .locals 11

    const-string v0, "TrackingServiceClient"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackingServiceClient onRemoteConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;

    if-nez v1, :cond_1

    .line 184
    new-instance v1, Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;

    invoke-direct {v1}, Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;-><init>()V

    .line 185
    new-instance v2, Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;

    invoke-direct {v2}, Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;-><init>()V

    .line 186
    invoke-static {p1, p2, v1, v2}, Lcom/oculus/vrapi/TrackingServiceClient;->access$300(JLcom/oculus/vrapi/TrackingServiceClient$TouchRange;Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    new-instance v3, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;

    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$400()Landroid/content/Context;

    move-result-object v5

    iget v8, v1, Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;->Width:I

    iget v9, v1, Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;->Height:I

    iget v10, v2, Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;->ModelId:I

    move-object v4, v3

    move-wide v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;-><init>(Landroid/content/Context;JIII)V

    .line 192
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "TrackingServiceClient"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize remote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "TrackingServiceClient"

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received notification of connection for remote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that is already registered "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRemoteDisconnected(J)V
    .locals 4

    const-string v0, "TrackingServiceClient"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackingServiceClient onRemoteDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    .line 210
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$200()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$400()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->notifyDisconnected(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v1}, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->destroy()V

    goto :goto_0

    :cond_0
    const-string v1, "TrackingServiceClient"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received notification of disconnect for unknown remote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
