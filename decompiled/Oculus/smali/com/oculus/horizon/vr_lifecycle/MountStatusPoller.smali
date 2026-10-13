.class Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;
.super Lcom/oculus/horizon/vr_lifecycle/MountStatusBase;
.source "MountStatusPoller.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mLastMountStatus:Z

.field private mMountStatusPoller:Ljava/util/Timer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/horizon/vr_lifecycle/MountStatusBase;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mMountStatusPoller:Ljava/util/Timer;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mLastMountStatus:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V
    .locals 6

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mMountStatusPoller:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to call startMountStatusPoller when it\'s already running."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 24
    :cond_0
    if-nez p2, :cond_1

    .line 25
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->TAG:Ljava/lang/String;

    const-string v1, "Null callback.  Aborting start, this would have no effect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mMountStatusPoller:Ljava/util/Timer;

    .line 29
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->TAG:Ljava/lang/String;

    const-string v1, "Starting up mount status polling timer"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mMountStatusPoller:Ljava/util/Timer;

    new-instance v1, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;

    invoke-direct {v1, p0, p2}, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller$1;-><init>(Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public teardown()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mMountStatusPoller:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->TAG:Ljava/lang/String;

    const-string v1, "Trying to call teardownMountStatusPoller when it\'s not running"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->TAG:Ljava/lang/String;

    const-string v1, "Tearing down mount status polling timer"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mMountStatusPoller:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusPoller;->mMountStatusPoller:Ljava/util/Timer;

    goto :goto_0
.end method
