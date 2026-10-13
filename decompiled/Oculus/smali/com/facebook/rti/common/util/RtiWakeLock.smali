.class public Lcom/facebook/rti/common/util/RtiWakeLock;
.super Ljava/lang/Object;
.source "RtiWakeLock.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final NO_OP:Lcom/facebook/rti/common/util/RtiWakeLock;


# instance fields
.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/rti/common/util/RtiWakeLock;

    invoke-direct {v0}, Lcom/facebook/rti/common/util/RtiWakeLock;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/util/RtiWakeLock;->NO_OP:Lcom/facebook/rti/common/util/RtiWakeLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/PowerManager;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    const-string v1, "RtiWakeLock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 35
    return-void
.end method

.method private acquire()V
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static newInstance(Landroid/os/PowerManager;)Lcom/facebook/rti/common/util/RtiWakeLock;
    .locals 1
    .param p0    # Landroid/os/PowerManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    sget-object v0, Lcom/facebook/rti/common/util/RtiWakeLock;->NO_OP:Lcom/facebook/rti/common/util/RtiWakeLock;

    .line 26
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/facebook/rti/common/util/RtiWakeLock;

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/util/RtiWakeLock;-><init>(Landroid/os/PowerManager;)V

    .line 25
    invoke-direct {v0}, Lcom/facebook/rti/common/util/RtiWakeLock;->acquire()V

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method
