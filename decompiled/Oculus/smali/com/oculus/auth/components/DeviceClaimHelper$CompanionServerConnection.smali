.class final Lcom/oculus/auth/components/DeviceClaimHelper$CompanionServerConnection;
.super Ljava/lang/Object;
.source "DeviceClaimHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/components/DeviceClaimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompanionServerConnection"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private server:Lcom/oculus/os/ICompanionServer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/auth/components/DeviceClaimHelper$CompanionServerConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/auth/components/DeviceClaimHelper$1;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oculus/auth/components/DeviceClaimHelper$CompanionServerConnection;-><init>()V

    return-void
.end method


# virtual methods
.method awaitServer()Lcom/oculus/os/ICompanionServer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/auth/components/DeviceClaimHelper$CompanionServerConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Timed out waiting to bind to CompanionServer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oculus/auth/components/DeviceClaimHelper$CompanionServerConnection;->server:Lcom/oculus/os/ICompanionServer;

    invoke-static {v0}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/os/ICompanionServer;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {p2}, Lcom/oculus/os/ICompanionServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/os/ICompanionServer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/components/DeviceClaimHelper$CompanionServerConnection;->server:Lcom/oculus/os/ICompanionServer;

    .line 98
    iget-object v0, p0, Lcom/oculus/auth/components/DeviceClaimHelper$CompanionServerConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 99
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
