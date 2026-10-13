.class Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;
.super Ljava/lang/Object;
.source "OculusUserManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/userserver/api/OculusUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockingServiceConnection"
.end annotation


# instance fields
.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mService:Lcom/oculus/userserver/managerservice/IOculusUserManager;

.field final synthetic this$0:Lcom/oculus/userserver/api/OculusUserManager;


# direct methods
.method private constructor <init>(Lcom/oculus/userserver/api/OculusUserManager;)V
    .locals 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->this$0:Lcom/oculus/userserver/api/OculusUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/userserver/api/OculusUserManager;Lcom/oculus/userserver/api/OculusUserManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/userserver/api/OculusUserManager;
    .param p2, "x1"    # Lcom/oculus/userserver/api/OculusUserManager$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;-><init>(Lcom/oculus/userserver/api/OculusUserManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->connect()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)Lcom/oculus/userserver/managerservice/IOculusUserManager;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->awaitService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    return-object v0
.end method

.method private awaitService()Lcom/oculus/userserver/managerservice/IOculusUserManager;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/oculus/userserver/api/Utils;->assertNonUiThread()V

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 90
    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mService:Lcom/oculus/userserver/managerservice/IOculusUserManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception during connecting to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private connect()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mService:Lcom/oculus/userserver/managerservice/IOculusUserManager;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "Service is already connected."

    invoke-static {v1, v4}, Lcom/oculus/userserver/api/Utils;->assertState(ZLjava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    const-string v1, "Does not support reconnecting to service."

    invoke-static {v3, v1}, Lcom/oculus/userserver/api/Utils;->assertState(ZLjava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->this$0:Lcom/oculus/userserver/api/OculusUserManager;

    .line 53
    invoke-static {v1}, Lcom/oculus/userserver/api/OculusUserManager;->access$300(Lcom/oculus/userserver/api/OculusUserManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->access$100()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->this$0:Lcom/oculus/userserver/api/OculusUserManager;

    invoke-static {v4}, Lcom/oculus/userserver/api/OculusUserManager;->access$200(Lcom/oculus/userserver/api/OculusUserManager;)Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 54
    .local v0, "result":Z
    if-nez v0, :cond_2

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not connect to OculusUserManagerService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "result":Z
    :cond_1
    move v1, v3

    .line 49
    goto :goto_0

    .line 57
    .restart local v0    # "result":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 62
    :try_start_0
    invoke-static {p2}, Lcom/oculus/userserver/managerservice/IOculusUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mService:Lcom/oculus/userserver/managerservice/IOculusUserManager;

    .line 63
    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    new-instance v1, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection$1;-><init>(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/oculus/userserver/api/OculusUserManager;->access$400(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 81
    return-void
.end method
