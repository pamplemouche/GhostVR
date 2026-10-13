.class public Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;
.super Landroid/app/job/JobService;
.source "VRLifecycleJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mVRLifecycleSessionManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->$ul_$xXXcom_oculus_horizon_vr$x5Flifecycle_VRLifecycleSessionManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->mVRLifecycleSessionManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->markSessionEnd(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->onJobSucceed(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private markSessionEnd(Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->mVRLifecycleSessionManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    new-instance v1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$2;-><init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->markSessionEndIfNotRecentAndInfoExists(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;)V

    .line 89
    return-void
.end method

.method private onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobFailed()"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 99
    return-void
.end method

.method private onJobSucceed(Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobSucceed()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 94
    return-void
.end method

.method private static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;)V

    .line 31
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStartJob id=%d"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService$1;-><init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobService;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method
