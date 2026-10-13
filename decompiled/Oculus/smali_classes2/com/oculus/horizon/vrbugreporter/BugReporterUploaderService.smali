.class public Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;
.super Landroid/app/job/JobService;
.source "BugReporterUploaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;

.field private mParams:Landroid/app/job/JobParameters;

.field private mRestMethods:Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)V
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)V
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;->$ul_$xXXcom_oculus_horizon_vrbugreporter_BugReporterMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->mRestMethods:Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 23
    new-instance v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;-><init>(Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)V

    iput-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->mRestMethods:Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)Landroid/app/job/JobParameters;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 12
    invoke-static {p0, p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;)V

    .line 91
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->TAG:Ljava/lang/String;

    const-string v1, "job running"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->mParams:Landroid/app/job/JobParameters;

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->TAG:Ljava/lang/String;

    const-string v1, "job interrupted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;->mCurrProcessor:Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService$CommandProcessor;->cancel(Z)Z

    .line 84
    return v2
.end method
