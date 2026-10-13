.class public Lcom/oculus/antipiracy/AntiPiracyJobService;
.super Landroid/app/job/JobService;
.source "AntiPiracyJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAntiPiracyManager:Lcom/oculus/antipiracy/AntiPiracyManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation runtime Lcom/oculus/executors/ForUiThread;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/antipiracy/AntiPiracyJobService;)V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/antipiracy/AntiPiracyJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/antipiracy/AntiPiracyJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/antipiracy/AntiPiracyJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/antipiracy/AntiPiracyJobService;)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/oculus/antipiracy/AntiPiracyManager;->$ul_$xXXcom_oculus_antipiracy_AntiPiracyManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/antipiracy/AntiPiracyJobService;->mAntiPiracyManager:Lcom/oculus/antipiracy/AntiPiracyManager;

    invoke-static {p0}, Lcom/oculus/executors/ExecutorsModule;->$ul_$xXXandroid_os_Handler$xXXcom_oculus_executors_ForUiThread$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/antipiracy/AntiPiracyJobService;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/antipiracy/AntiPiracyJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/antipiracy/AntiPiracyJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/antipiracy/AntiPiracyJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oculus/antipiracy/AntiPiracyJobService;->onJobSucceed(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/antipiracy/AntiPiracyJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oculus/antipiracy/AntiPiracyJobService;->onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/antipiracy/AntiPiracyJobService;)Lcom/oculus/antipiracy/AntiPiracyManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyJobService;->mAntiPiracyManager:Lcom/oculus/antipiracy/AntiPiracyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/antipiracy/AntiPiracyJobService;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oculus/antipiracy/AntiPiracyJobService;->isDeveloperModeBlockedOnBackend()Z

    move-result v0

    return v0
.end method

.method private isDeveloperModeBlockedOnBackend()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyJobService;->mAntiPiracyManager:Lcom/oculus/antipiracy/AntiPiracyManager;

    .line 84
    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyManager;->fetchDeveloperStatusFromBackend()Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;->mOculusDeveloperStatus:Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;

    if-nez v1, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;->mOculusDeveloperStatus:Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;

    iget-boolean v0, v0, Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;->is_oculus_developer_blocked:Z

    goto :goto_0
.end method

.method private onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/oculus/antipiracy/AntiPiracyJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobFailed()"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/antipiracy/AntiPiracyJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 99
    return-void
.end method

.method private onJobSucceed(Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/oculus/antipiracy/AntiPiracyJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobSucceed()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/antipiracy/AntiPiracyJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 94
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 18
    invoke-static {p0, p0}, Lcom/oculus/antipiracy/AntiPiracyJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/antipiracy/AntiPiracyJobService;)V

    .line 80
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyJobService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/antipiracy/AntiPiracyJobService$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/antipiracy/AntiPiracyJobService$1;-><init>(Lcom/oculus/antipiracy/AntiPiracyJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method
