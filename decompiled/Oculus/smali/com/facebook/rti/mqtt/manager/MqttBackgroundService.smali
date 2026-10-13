.class public abstract Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;
.super Landroid/app/Service;
.source "MqttBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;,
        Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private volatile mBackgroundServiceHandler:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

.field private final mInitLock:Ljava/lang/Object;

.field private mIsInited:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mInitLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract doCreate()V
.end method

.method protected abstract doDestroy()V
.end method

.method protected doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected abstract doStartCommand(Landroid/content/Intent;II)V
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->ensureInitialized()V

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected ensureInitialized()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mIsInited:Z

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->doCreate()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mIsInited:Z

    .line 174
    :cond_0
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract getLooper()Landroid/os/Looper;
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 128
    const-string v0, "MqttBackgroundService"

    const-string v1, "Creating service"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 132
    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-direct {v1, p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;-><init>(Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mBackgroundServiceHandler:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mBackgroundServiceHandler:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendOnCreate()V

    .line 138
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;

    .line 135
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;-><init>(Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mBackgroundServiceHandler:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mBackgroundServiceHandler:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->flushOnDestroy()V

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 144
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->onStartCommand(Landroid/content/Intent;II)I

    .line 155
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->mBackgroundServiceHandler:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendOnStart(Landroid/content/Intent;II)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method
