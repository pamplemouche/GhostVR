.class public Lcom/facebook/rti/common/util/RtiWakeLockHelper;
.super Ljava/lang/Object;
.source "RtiWakeLockHelper.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final NO_OP:Lcom/facebook/rti/common/util/RtiWakeLockHelper;


# instance fields
.field private final mPowerManager:Landroid/os/PowerManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    invoke-direct {v0}, Lcom/facebook/rti/common/util/RtiWakeLockHelper;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/util/RtiWakeLockHelper;->NO_OP:Lcom/facebook/rti/common/util/RtiWakeLockHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLockHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/common/util/SystemServiceManager;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "power"

    const-class v1, Landroid/os/PowerManager;

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLockHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot acquire power service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquireNewWakeLock()Lcom/facebook/rti/common/util/RtiWakeLock;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/rti/common/util/RtiWakeLockHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/facebook/rti/common/util/RtiWakeLock;->newInstance(Landroid/os/PowerManager;)Lcom/facebook/rti/common/util/RtiWakeLock;

    move-result-object v0

    return-object v0
.end method
