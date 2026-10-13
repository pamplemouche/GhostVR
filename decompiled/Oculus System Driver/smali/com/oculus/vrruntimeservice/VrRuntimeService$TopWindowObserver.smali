.class final Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;
.super Ljava/lang/Object;
.source "VrRuntimeService.java"

# interfaces
.implements Lcom/oculus/os/ActivityManagerUtils$WindowLayoutObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrruntimeservice/VrRuntimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TopWindowObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/vrruntimeservice/VrRuntimeService$1;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusedWindowChanged(Landroid/os/IBinder;I)V
    .locals 5

    const-string v0, "VrRuntimeService"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusedWindowChanged: topWindowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", topWindowUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VrRuntimeService"

    const-string v2, "onFocusedWindowChanged: top window\'s client already enabled"

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;

    iget v1, v1, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;->id:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 140
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$200()I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 142
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;

    .line 144
    iget v4, v3, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;->uid:I

    if-ne v4, p2, :cond_1

    const-string v1, "VrRuntimeService"

    const-string v2, "Falling back to client with same uid"

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v1, v3, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;->id:I

    .line 153
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$302(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 156
    invoke-static {p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$202(I)I

    .line 157
    invoke-static {v1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$400(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
