.class public Lcom/oculus/durableiap/DurableIAPJobService;
.super Lcom/oculus/job/NonRetryingJobService;
.source "DurableIAPJobService.java"


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

.field private mDurableIAPJobScheduler:Lcom/oculus/durableiap/DurableIAPJobScheduler;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mDurableIAPStorage:Lcom/oculus/durableiap/DurableIAPStorage;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/durableiap/DurableIAPJobService;)V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/durableiap/DurableIAPJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/durableiap/DurableIAPJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/durableiap/DurableIAPJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/durableiap/DurableIAPJobService;)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/oculus/durableiap/DurableIAPStorage;->$ul_$xXXcom_oculus_durableiap_DurableIAPStorage$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/durableiap/DurableIAPStorage;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/durableiap/DurableIAPJobService;->mDurableIAPStorage:Lcom/oculus/durableiap/DurableIAPStorage;

    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/durableiap/DurableIAPJobService;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/durableiap/DurableIAPJobScheduler;->$ul_$xXXcom_oculus_durableiap_DurableIAPJobScheduler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/durableiap/DurableIAPJobScheduler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/durableiap/DurableIAPJobService;->mDurableIAPJobScheduler:Lcom/oculus/durableiap/DurableIAPJobScheduler;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/durableiap/DurableIAPJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/durableiap/DurableIAPJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oculus/job/NonRetryingJobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/durableiap/DurableIAPJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oculus/durableiap/DurableIAPJobService;->onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/durableiap/DurableIAPJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oculus/durableiap/DurableIAPJobService;->onJobSucceed(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/durableiap/DurableIAPJobService;)Lcom/oculus/durableiap/DurableIAPStorage;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/durableiap/DurableIAPJobService;->mDurableIAPStorage:Lcom/oculus/durableiap/DurableIAPStorage;

    return-object v0
.end method

.method private onJobFailed(Landroid/app/job/JobParameters;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/oculus/durableiap/DurableIAPJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobFailed()"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/durableiap/DurableIAPJobService;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oculus/durableiap/DurableIAPJobService;->mDurableIAPJobScheduler:Lcom/oculus/durableiap/DurableIAPJobScheduler;

    invoke-virtual {v0}, Lcom/oculus/durableiap/DurableIAPJobScheduler;->unschedule()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/oculus/durableiap/DurableIAPJobService;->jobFinished(Landroid/app/job/JobParameters;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/durableiap/DurableIAPJobService;->jobFinished(Landroid/app/job/JobParameters;)V

    goto :goto_0
.end method

.method private onJobSucceed(Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/oculus/durableiap/DurableIAPJobService;->TAG:Ljava/lang/String;

    const-string v1, "onJobSucceed()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/oculus/durableiap/DurableIAPJobService;->jobFinished(Landroid/app/job/JobParameters;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/oculus/job/NonRetryingJobService;->onCreate()V

    .line 18
    invoke-static {p0, p0}, Lcom/oculus/durableiap/DurableIAPJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/durableiap/DurableIAPJobService;)V

    .line 30
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/oculus/durableiap/DurableIAPJobService$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/durableiap/DurableIAPJobService$1;-><init>(Lcom/oculus/durableiap/DurableIAPJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/oculus/job/OculusJobHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
