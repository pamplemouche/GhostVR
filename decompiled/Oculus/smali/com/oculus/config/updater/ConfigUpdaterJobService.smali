.class public Lcom/oculus/config/updater/ConfigUpdaterJobService;
.super Landroid/app/job/JobService;
.source "ConfigUpdaterJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/config/updater/ConfigUpdaterJobService;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/config/updater/ConfigUpdaterJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/config/updater/ConfigUpdaterJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/config/updater/ConfigUpdaterJobService;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/config/updater/ConfigUpdater;->$ul_$xXXcom_oculus_config_updater_ConfigUpdater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/config/updater/ConfigUpdaterJobService;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/config/updater/ConfigUpdaterJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/config/updater/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/config/updater/ConfigUpdaterJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->onFetchFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/config/updater/ConfigUpdaterJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->onFetchSucceed(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/config/updater/ConfigUpdaterJobService;)Lcom/oculus/config/updater/ConfigUpdater;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    return-object v0
.end method

.method private onFetchFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/oculus/config/updater/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "fetch failed"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 89
    return-void
.end method

.method private onFetchSucceed(Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/oculus/config/updater/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "fetch succeed!"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 84
    return-void
.end method

.method private static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/config/updater/ConfigUpdaterJobService;)V

    .line 31
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/config/updater/ConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStartJob id=%d"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/oculus/util/WakeupUtil$Action;->FETCH_CONFIG:Lcom/oculus/util/WakeupUtil$Action;

    invoke-static {p0, v0}, Lcom/oculus/util/WakeupUtil;->wakeupHomeForAction(Landroid/content/Context;Lcom/oculus/util/WakeupUtil$Action;)V

    .line 50
    new-instance v0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;-><init>(Lcom/oculus/config/updater/ConfigUpdaterJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
