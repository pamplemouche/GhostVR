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
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->this$0:Lcom/oculus/userserver/api/OculusUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/userserver/api/OculusUserManager;Lcom/oculus/userserver/api/OculusUserManager$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;-><init>(Lcom/oculus/userserver/api/OculusUserManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->connect()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)Lcom/oculus/userserver/managerservice/IOculusUserManager;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->awaitService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object p0

    return-object p0
.end method

.method private awaitService()Lcom/oculus/userserver/managerservice/IOculusUserManager;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 87
    invoke-static {}, Lcom/oculus/userserver/api/Utils;->assertNonUiThread()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 90
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mService:Lcom/oculus/userserver/managerservice/IOculusUserManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 92
    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception during connecting to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private connect()V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mService:Lcom/oculus/userserver/managerservice/IOculusUserManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Service is already connected."

    invoke-static {v0, v3}, Lcom/oculus/userserver/api/Utils;->assertState(ZLjava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Does not support reconnecting to service."

    invoke-static {v1, v0}, Lcom/oculus/userserver/api/Utils;->assertState(ZLjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->this$0:Lcom/oculus/userserver/api/OculusUserManager;

    .line 53
    invoke-static {v0}, Lcom/oculus/userserver/api/OculusUserManager;->access$300(Lcom/oculus/userserver/api/OculusUserManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->access$100()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->this$0:Lcom/oculus/userserver/api/OculusUserManager;

    invoke-static {v3}, Lcom/oculus/userserver/api/OculusUserManager;->access$200(Lcom/oculus/userserver/api/OculusUserManager;)Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not connect to OculusUserManagerService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 62
    :try_start_0
    invoke-static {p2}, Lcom/oculus/userserver/managerservice/IOculusUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mService:Lcom/oculus/userserver/managerservice/IOculusUserManager;

    .line 63
    iget-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    new-instance p1, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection$1;

    invoke-direct {p1, p0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection$1;-><init>(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/oculus/userserver/api/OculusUserManager;->access$400(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
