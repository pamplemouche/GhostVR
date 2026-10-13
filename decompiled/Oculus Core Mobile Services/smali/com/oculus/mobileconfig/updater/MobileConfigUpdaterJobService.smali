.class public Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;
.super Landroid/app/job/JobService;
.source "MobileConfigUpdaterJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMobileConfigConfiguration:Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;->$ul_$xXXcom_oculus_mobileconfig_init_MobileConfigConfiguration$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->mMobileConfigConfiguration:Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    invoke-static {p0}, Lcom/oculus/logging/utils/UtilsModule;->$ul_$xXXcom_oculus_logging_utils_EventMigrationHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 20
    invoke-static {p0, p0}, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;)V

    .line 32
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->TAG:Ljava/lang/String;

    const-string v1, "Job started"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v1, "oc_mobileconfig_refresh_started"

    invoke-interface {v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 38
    iget-object v0, p0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->mMobileConfigConfiguration:Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;

    .line 39
    invoke-virtual {v0}, Lcom/oculus/mobileconfig/init/MobileConfigConfiguration;->fetchAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;-><init>(Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;Landroid/app/job/JobParameters;)V

    .line 40
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
