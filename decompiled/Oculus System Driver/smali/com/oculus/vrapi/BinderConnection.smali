.class abstract Lcom/oculus/vrapi/BinderConnection;
.super Ljava/lang/Object;
.source "BinderConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderConnection"


# instance fields
.field private final mMaxRetries:I

.field private final mRetryInterval:I

.field private mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceName:Ljava/lang/String;

.field private mShouldReconnect:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/vrapi/BinderConnection;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/oculus/vrapi/BinderConnection;->mShouldReconnect:Z

    .line 38
    iput-object p1, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/oculus/vrapi/BinderConnection;->mMaxRetries:I

    .line 40
    iput p3, p0, Lcom/oculus/vrapi/BinderConnection;->mRetryInterval:I

    return-void
.end method

.method private connectToService()Landroid/os/IInterface;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    :goto_0
    iget v2, p0, Lcom/oculus/vrapi/BinderConnection;->mMaxRetries:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    iget v2, p0, Lcom/oculus/vrapi/BinderConnection;->mMaxRetries:I

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "BinderConnection"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oculus/vrapi/BinderConnection;->mMaxRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retrys at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oculus/vrapi/BinderConnection;->mRetryInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms intervals... ABORTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    :goto_1
    :try_start_0
    const-string v2, "android.os.ServiceManager"

    .line 179
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getService"

    const/4 v5, 0x1

    .line 180
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 182
    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 183
    invoke-virtual {p0, v2}, Lcom/oculus/vrapi/BinderConnection;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    const-string v2, "BinderConnection"

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", retrying"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v2, p0, Lcom/oculus/vrapi/BinderConnection;->mRetryInterval:I

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "BinderConnection"

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered exception connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BinderConnection"

    const-string v2, "Unable to call ServiceManager"

    .line 193
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private declared-synchronized doConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "BinderConnection"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const-string v0, "BinderConnection"

    const-string v1, "doConnect: Already connected!"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/oculus/vrapi/BinderConnection;->connectToService()Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    .line 217
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/BinderConnection;->validate(Landroid/os/IInterface;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 232
    :try_start_2
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :try_start_3
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/BinderConnection;->onConnected(Landroid/os/IInterface;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 246
    :try_start_4
    iget-object v3, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 249
    iput-object v1, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    .line 251
    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in onConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 236
    iput-object v1, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    .line 237
    throw v0

    .line 225
    :cond_2
    iput-object v1, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    .line 226
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Service interface validation failure"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "BinderConnection"

    const-string v1, "Failed to connect to service"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out connecting to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 207
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doDisconnect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BinderConnection"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/BinderConnection;->onDisconnected(Landroid/os/IInterface;)V

    .line 262
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 256
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public binderDied()V
    .locals 3

    const-string v0, "BinderConnection"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: Resetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/vrapi/BinderConnection;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binder objects."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/oculus/vrapi/BinderConnection;->doDisconnect()V

    .line 66
    iget-boolean v0, p0, Lcom/oculus/vrapi/BinderConnection;->mShouldReconnect:Z

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/vrapi/BinderConnection;->doConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BinderConnection"

    const-string v2, "Failed to reconnect after service death"

    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/oculus/vrapi/BinderConnection;->doDisconnect()V

    return-void
.end method

.method public declared-synchronized getService()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/oculus/vrapi/BinderConnection;->doConnect()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrapi/BinderConnection;->mService:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p0

    throw v0
.end method

.method protected onConnected(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected onDisconnected(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected setShouldReconnect(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/oculus/vrapi/BinderConnection;->mShouldReconnect:Z

    return-void
.end method

.method protected validate(Landroid/os/IInterface;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
