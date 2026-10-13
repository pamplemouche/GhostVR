.class public Lcom/oculus/appmanager/installer/service/ConsistencyJobService;
.super Landroid/app/job/JobService;
.source "ConsistencyJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mInstallerServiceContract:Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/service/ConsistencyJobService;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/service/ConsistencyJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/service/ConsistencyJobService;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;->$ul_$xXXcom_oculus_appmanager_installer_contract_InstallerServiceContract$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->mInstallerServiceContract:Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/service/ConsistencyJobService;)V

    .line 32
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 36
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "update_id"

    .line 38
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 40
    sget-object v2, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->TAG:Ljava/lang/String;

    const-string v3, "onStartJob: id = %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->mInstallerServiceContract:Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;

    invoke-virtual {v2, v0, v1}, Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;->performConsistencyCheckForId(J)V

    .line 48
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 49
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v1, "consistency_job_scheduler_no_id_available"

    const-string v2, "JobScheduler called but update id not found"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/oculus/appmanager/installer/service/ConsistencyJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStopJob: called."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    return v0
.end method
