.class public Lcom/oculus/autoupdates/AutoUpdateJobService;
.super Landroid/app/job/JobService;
.source "AutoUpdateJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoUpdatesManager:Lcom/oculus/autoupdates/AutoUpdatesManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;
    .annotation runtime Lcom/oculus/executors/ForUiThread;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/autoupdates/AutoUpdateJobService;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/autoupdates/AutoUpdateJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/autoupdates/AutoUpdateJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/autoupdates/AutoUpdateJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/autoupdates/AutoUpdateJobService;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/autoupdates/AutoUpdatesManager;->$ul_$xXXcom_oculus_autoupdates_AutoUpdatesManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/autoupdates/AutoUpdatesManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/autoupdates/AutoUpdateJobService;->mAutoUpdatesManager:Lcom/oculus/autoupdates/AutoUpdatesManager;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/autoupdates/AutoUpdateJobService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/autoupdates/AutoUpdateJobService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-static {p0}, Lcom/oculus/executors/ExecutorsModule;->$ul_$xXXandroid_os_Handler$xXXcom_oculus_executors_ForUiThread$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/autoupdates/AutoUpdateJobService;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/autoupdates/AutoUpdateJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/autoupdates/AutoUpdateJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/autoupdates/AutoUpdateJobService;)Lcom/oculus/util/device/DeviceUtils;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/autoupdates/AutoUpdateJobService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/autoupdates/AutoUpdateJobService;)Lcom/oculus/autoupdates/AutoUpdatesManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService;->mAutoUpdatesManager:Lcom/oculus/autoupdates/AutoUpdatesManager;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/autoupdates/AutoUpdateJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/autoupdates/AutoUpdateJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/autoupdates/AutoUpdateJobService;->rescheduleJob(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method private rescheduleJob(Landroid/app/job/JobParameters;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oculus/autoupdates/AutoUpdateJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/autoupdates/AutoUpdateJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/autoupdates/AutoUpdateJobService;)V

    .line 37
    invoke-static {}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->getInstance()Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->register(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/oculus/autoupdates/AutoUpdateJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStartJob"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/autoupdates/AutoUpdateJobService$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/autoupdates/AutoUpdateJobService$1;-><init>(Lcom/oculus/autoupdates/AutoUpdateJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/oculus/autoupdates/AutoUpdateJobService;->TAG:Ljava/lang/String;

    const-string v1, "onStopJob"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
