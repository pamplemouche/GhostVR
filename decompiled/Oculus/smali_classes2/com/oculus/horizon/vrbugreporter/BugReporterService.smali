.class public Lcom/oculus/horizon/vrbugreporter/BugReporterService;
.super Landroid/app/IntentService;
.source "BugReporterService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sFirstPartyAppIDsForFlytrap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mIsOculusVrBugReporterEnabledGK:Ljavax/inject/Provider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_vrbugreporter_enabled"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vrbugreporter/BugReporterService;)V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vrbugreporter/BugReporterService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vrbugreporter/BugReporterService;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/oculus/horizon/service/OVRModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fvrbugreporter$x5Fenabled$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mIsOculusVrBugReporterEnabledGK:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/platform/PresenceManager;->$ul_$xXXcom_oculus_horizon_platform_PresenceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 42
    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    .line 387
    const-string v0, "922519877806282"

    const-string v1, "1257988667656584"

    const-string v2, "1916519981771802"

    const-string v3, "1783939024969036"

    const-string v4, "838122072929207"

    const-string v5, "1274713489266840"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1481000308606657"

    aput-object v8, v6, v7

    .line 388
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->sFirstPartyAppIDsForFlytrap:Ljava/util/Set;

    .line 387
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->setVisionLogCollectionSetting(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->getDataFromCollector(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Lcom/oculus/horizon/vrbugreporter/BugReport;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->scheduleBugReportUploader(Lcom/oculus/horizon/vrbugreporter/BugReport;)V

    return-void
.end method

.method private static filterAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->sFirstPartyAppIDsForFlytrap:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    :goto_0
    return-object p0

    :cond_0
    const-string p0, "1481000308606657"

    goto :goto_0
.end method

.method private getDataFromCollector(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 293
    new-instance v0, Lcom/oculus/os/LogCollectorClient;

    invoke-direct {v0}, Lcom/oculus/os/LogCollectorClient;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oculus/os/LogCollectorClient;->collectLogArchive(Landroid/content/Context;Ljava/io/File;)Lcom/oculus/os/LogCollectorClient$CollectorResult;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/oculus/os/LogCollectorClient$CollectorResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "could not collect data from log collector for report id %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_0
    return-void
.end method

.method private onBindFromStandaloneOS()Landroid/os/IBinder;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 302
    invoke-static {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->create(Landroid/content/Context;)Lcom/oculus/horizon/vrbugreporter/BugReport;

    move-result-object v1

    .line 304
    if-nez v1, :cond_0

    .line 305
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "could not create new bug report"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platform/PresenceManager;->getCurrentAppOrPanelAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->filterAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->setAppId(Ljava/lang/String;)V

    .line 313
    invoke-static {p0}, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->describeInstalledPackages(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->setPackages(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1}, Lcom/oculus/horizon/vrbugreporter/BugReport;->recordDetails()V

    .line 316
    new-instance v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$3;

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService$3;-><init>(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Lcom/oculus/horizon/vrbugreporter/BugReport;)V

    goto :goto_0
.end method

.method private onHandleAddDetails(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 144
    const-string v0, "BugReportId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "bug report identifier missing from intent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v1, "BugReportDetails"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-nez v1, :cond_2

    .line 152
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "bug report details missing from intent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {p0, v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->findById(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/horizon/vrbugreporter/BugReport;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_0

    .line 159
    const-string v3, "AudioClipFile"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 161
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/oculus/horizon/vrbugreporter/BugReport;->setAudioClipFile(Ljava/io/File;)V

    .line 164
    :cond_3
    invoke-virtual {v2, v1}, Lcom/oculus/horizon/vrbugreporter/BugReport;->setDescription(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/oculus/horizon/vrbugreporter/BugReporterService$1;-><init>(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Ljava/lang/String;Lcom/oculus/horizon/vrbugreporter/BugReport;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onHandleRequest(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 205
    invoke-static {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->create(Landroid/content/Context;)Lcom/oculus/horizon/vrbugreporter/BugReport;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "could not create new bug report"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getScreenshotFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->getDataFromCollector(Ljava/lang/String;Ljava/io/File;)V

    .line 218
    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/platform/PresenceManager;->getCurrentAppOrPanelAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->filterAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReport;->setAppId(Ljava/lang/String;)V

    .line 222
    const-string v1, "BugReportDetails"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReport;->setDescription(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService$2;-><init>(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Landroid/content/Intent;Lcom/oculus/horizon/vrbugreporter/BugReport;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 229
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.vrshell"

    const-string v3, "com.oculus.vrshell.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system_utilities/bugReport/com.oculus.unknow/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 234
    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    const-string v1, "com.oculus.vrshell.home/com.oculus.vrshell.home.SystemUtilitiesService"

    .line 237
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 236
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 238
    const-string v1, "uri"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    sget-object v2, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v3, "could not find VrShell"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->delete()Z

    goto :goto_0
.end method

.method private scheduleBugReportUploader(Lcom/oculus/horizon/vrbugreporter/BugReport;)V
    .locals 4

    .prologue
    .line 375
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "scheduling job for report %s"

    invoke-virtual {p1}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterUploaderService;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 379
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x1001

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x2

    .line 381
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 382
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 385
    return-void
.end method

.method private scheduleBugReporterCleaner()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 361
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReporterCleanerService;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 363
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x1000

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 365
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 366
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 367
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 370
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 371
    return-void
.end method

.method private setVisionLogCollectionSetting(Z)V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0, p0}, Lcom/oculus/os/SettingsManager;-><init>(Landroid/content/Context;)V

    .line 289
    const-string v1, "bug_report_add_vision_logs"

    invoke-virtual {v0, v1, p1}, Lcom/oculus/os/SettingsManager;->setBoolean(Ljava/lang/String;Z)Z

    .line 290
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->onBindFromStandaloneOS()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 40
    invoke-static {p0, p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vrbugreporter/BugReporterService;)V

    .line 356
    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->scheduleBugReporterCleaner()V

    .line 357
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/oculus/util/vr/VRUtils;

    invoke-direct {v0, p0}, Lcom/oculus/util/vr/VRUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/oculus/util/vr/VRUtils;->isStandaloneDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "platform does not support bug reporter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mIsOculusVrBugReporterEnabledGK:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "non-whitelisted builds do not support bug reporter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    .line 119
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "This version of the bug reporter is usable with OS SDK version 11 and above only"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->TAG:Ljava/lang/String;

    const-string v1, "Bug reporter is only available on standalone"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_4
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->onHandleAddDetails(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :sswitch_0
    const-string v2, "com.oculus.horizon.vrbugreporter.action.ADD_DETAILS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.oculus.horizon.vrbugreporter.action.REQUEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    .line 135
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->onHandleRequest(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        -0x48b1c3c9 -> :sswitch_1
        0x1404aa2c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
