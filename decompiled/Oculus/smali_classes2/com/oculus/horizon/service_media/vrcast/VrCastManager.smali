.class public Lcom/oculus/horizon/service_media/vrcast/VrCastManager;
.super Ljava/lang/Object;
.source "VrCastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;
    }
.end annotation


# static fields
.field public static final DISCOVER_TIMEOUT_SECONDS:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mCachedDeviceList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDiscoverTimeoutRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

.field private final mServiceConnectionCompletion:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnectionTask:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrCastController:Lcom/oculus/vrcast/VrCastController;

.field private mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;)V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$1;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mDiscoverTimeoutRunnable:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionCompletion:Lbolts/TaskCompletionSource;

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionCompletion:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionTask:Lbolts/Task;

    .line 60
    new-instance v0, Lcom/oculus/vrcast/VrCastController;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/oculus/horizon/service_media/vrcast/VrCastManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrcast/VrCastController;-><init>(Landroid/content/Context;Lcom/oculus/vrcast/VrCastController$VrCastCallback;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastController:Lcom/oculus/vrcast/VrCastController;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->onDiscoverTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lbolts/TaskCompletionSource;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionCompletion:Lbolts/TaskCompletionSource;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->resetDiscoverTimeout()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mDiscoverTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/oculus/vrcast/VrCastController;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastController:Lcom/oculus/vrcast/VrCastController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->isCasting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mCachedDeviceList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mCachedDeviceList:Lcom/google/common/collect/ImmutableList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->setCurrentDevice(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method private isCasting()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastDeviceUtils;->isCasting(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z

    move-result v0

    return v0
.end method

.method public static isCompatibleOSVersion()Z
    .locals 2

    .prologue
    .line 64
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDiscoverTimeout()V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onDiscoverTimeout()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mCachedDeviceList:Lcom/google/common/collect/ImmutableList;

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionTask:Lbolts/Task;

    new-instance v1, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$5;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 232
    return-void
.end method

.method private resetDiscoverTimeout()V
    .locals 6

    .prologue
    .line 208
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->TAG:Ljava/lang/String;

    const-string v1, "resetDiscoverTimeout()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mDiscoverTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mDiscoverTimeoutRunnable:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    .line 213
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 212
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method

.method private setCurrentDevice(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    .line 174
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    .line 175
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->updateVrCastStateInAUI()V

    .line 176
    iget-object v1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->showCastNotification(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    .line 177
    return-void
.end method

.method private showCastNotification(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 1

    .prologue
    .line 180
    invoke-static {p2}, Lcom/oculus/horizon/service_media/vrcast/VrCastDeviceUtils;->isCasting(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastDeviceUtils;->isConnecting(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showCastingStarted()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-static {p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastDeviceUtils;->isConnecting(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/oculus/horizon/service_media/vrcast/VrCastDeviceUtils;->isConnecting(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showCastingConnecting()V

    goto :goto_0
.end method

.method private updateVrCastStateInAUI()V
    .locals 3

    .prologue
    .line 110
    sget-object v1, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->TAG:Ljava/lang/String;

    const-string v2, "updateVrCastStateInAUI(), set state to: %s"

    .line 113
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->isCasting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Casting"

    .line 110
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.oculus.systemactivities.LOCAL_STREAM_STATE_UPDATE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v2, "is_capture_running"

    .line 117
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->isCasting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 116
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void

    .line 113
    :cond_0
    const-string v0, "not Casting"

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public discover()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionTask:Lbolts/Task;

    new-instance v1, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$4;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 205
    return-void
.end method

.method public getCastingDevice()Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    return-object v0
.end method

.method public getCurrentDeviceList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mCachedDeviceList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public resumeVrCastState()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeVrCastState() with device: %s"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mVrCastDevice:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-virtual {v2}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->updateVrCastStateInAUI()V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeVrCastState() with null device"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCasting(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionTask:Lbolts/Task;

    new-instance v1, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$6;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$6;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Ljava/lang/String;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 244
    return-void
.end method

.method public stopCast()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionTask:Lbolts/Task;

    new-instance v1, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 106
    return-void
.end method

.method public unbindVrCastService()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->mServiceConnectionTask:Lbolts/Task;

    new-instance v1, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$2;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 89
    return-void
.end method
