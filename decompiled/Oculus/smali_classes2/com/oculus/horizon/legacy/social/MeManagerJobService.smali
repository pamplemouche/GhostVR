.class public Lcom/oculus/horizon/legacy/social/MeManagerJobService;
.super Lcom/oculus/job/NonRetryingJobService;
.source "MeManagerJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCredentialsProvider:Ljavax/inject/Provider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMeManagerJobScheduler:Lcom/oculus/horizon/legacy/social/MeManagerJobScheduler;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/MeManagerJobService;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/MeManagerJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/MeManagerJobService;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManagerJobScheduler;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManagerJobScheduler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManagerJobScheduler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->mMeManagerJobScheduler:Lcom/oculus/horizon/legacy/social/MeManagerJobScheduler;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/job/NonRetryingJobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/MeManagerJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/MeManagerJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->onJobSucceed(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/MeManagerJobService;)Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    return-object v0
.end method

.method private onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobFailed()"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->mCredentialsProvider:Ljavax/inject/Provider;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->mMeManagerJobScheduler:Lcom/oculus/horizon/legacy/social/MeManagerJobScheduler;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManagerJobScheduler;->unschedule()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->jobFinished(Landroid/app/job/JobParameters;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->jobFinished(Landroid/app/job/JobParameters;)V

    goto :goto_0
.end method

.method private onJobSucceed(Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobSucceed()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->jobFinished(Landroid/app/job/JobParameters;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/oculus/job/NonRetryingJobService;->onCreate()V

    .line 19
    invoke-static {p0, p0}, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/MeManagerJobService;)V

    .line 31
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/horizon/legacy/social/MeManagerJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStartJob()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/oculus/horizon/legacy/social/MeManagerJobService$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/legacy/social/MeManagerJobService$1;-><init>(Lcom/oculus/horizon/legacy/social/MeManagerJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/oculus/job/OculusJobHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method
