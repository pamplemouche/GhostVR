.class public Lcom/oculus/standalone/StandaloneSetupJobService;
.super Landroid/app/job/JobService;
.source "StandaloneSetupJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompleted:Z

.field private mCoreAppInstaller:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mIsHighPriAppsDownloadInProgress:Z

.field private final mIsJobRescheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mPrefs:Lcom/oculus/standalone/StandalonePrefs;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/standalone/StandaloneSetupJobService;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/standalone/StandaloneSetupJobService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/standalone/StandaloneSetupJobService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/standalone/StandaloneSetupJobService;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->$ul_$xXXcom_oculus_standalone_StandaloneDefaultAppSetupManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/standalone/StandaloneSetupJobService;->mCoreAppInstaller:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/standalone/StandaloneSetupJobService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/standalone/StandaloneSetupJobService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/standalone/StandalonePrefs;->$ul_$xXXcom_oculus_standalone_StandalonePrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mCompleted:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsJobRescheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/standalone/StandaloneSetupJobService;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oculus/standalone/StandaloneSetupJobService;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mCompleted:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/standalone/StandaloneSetupJobService;)Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mCoreAppInstaller:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/standalone/StandaloneSetupJobService;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oculus/standalone/StandaloneSetupJobService;)Lcom/oculus/errorreporting/ErrorReporter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/standalone/StandaloneSetupJobService;->maybeRescheduleSelf(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/standalone/StandaloneSetupJobService;[Lcom/oculus/coreapps/CoreApp;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/oculus/standalone/StandaloneSetupJobService;->handleInstallResult([Lcom/oculus/coreapps/CoreApp;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/standalone/StandaloneSetupJobService;)Lcom/oculus/standalone/StandalonePrefs;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/standalone/StandaloneSetupJobService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsJobRescheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/standalone/StandaloneSetupJobService;->startSetupInstallJob(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/app/job/JobParameters;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/oculus/standalone/StandaloneSetupJobService;->finishJob(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method private static createBasicJob(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x6d002827

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private finishJob(Landroid/app/job/JobParameters;Z)V
    .locals 4

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oculus/standalone/StandaloneSetupJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v2, "standalone_setup_completion_already_set"

    const-string v3, "Exception while setting job completion"

    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleInstallResult([Lcom/oculus/coreapps/CoreApp;Landroid/app/job/JobParameters;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 225
    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    .line 226
    sget-object v5, Lcom/oculus/standalone/StandaloneSetupJobService$2;->$SwitchMap$com$oculus$coreapps$CoreApp$Status:[I

    iget-object v11, v4, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-virtual {v11}, Lcom/oculus/coreapps/CoreApp$Status;->ordinal()I

    move-result v11

    aget v5, v5, v11

    packed-switch v5, :pswitch_data_0

    .line 240
    iget-object v4, v4, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :pswitch_0
    iget-object v4, v4, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :pswitch_1
    iget-object v4, v4, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :pswitch_2
    iget-object v4, v4, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :pswitch_3
    iget-object v4, v4, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v2}, Lcom/oculus/standalone/StandalonePrefs;->getCompletedSetupInstalls()Ljava/util/Set;

    move-result-object v2

    .line 247
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-interface {v3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 249
    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v4, v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v2, v3}, Lcom/oculus/standalone/StandalonePrefs;->setCompletedSetupInstalls(Ljava/util/Set;)V

    .line 256
    :cond_1
    array-length v4, p1

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, p1, v2

    .line 257
    iget-object v5, v5, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v5, v5, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 264
    :goto_3
    iget-boolean v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    if-nez v2, :cond_5

    .line 265
    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v1, v0}, Lcom/oculus/standalone/StandalonePrefs;->setSetupComplete(Z)V

    .line 271
    :cond_2
    :goto_4
    if-nez v0, :cond_3

    .line 272
    invoke-direct {p0, p2}, Lcom/oculus/standalone/StandaloneSetupJobService;->maybeRescheduleSelf(Landroid/app/job/JobParameters;)V

    .line 275
    :cond_3
    sget-object v0, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    const-string v1, "Completed setup job. Success: %d Ignored: %d Download Failed: %d Install Failed: %d"

    .line 278
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 279
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 280
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 281
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 275
    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-boolean v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    move-object v2, v7

    move-object v3, v9

    move-object v4, v8

    move-object v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/logging/OculusLogger;->reportStandaloneDefaultAppSetupResult(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 286
    return-void

    .line 256
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 266
    :cond_5
    iget-boolean v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 267
    sget-object v2, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->COMPLETED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    invoke-direct {p0, v2}, Lcom/oculus/standalone/StandaloneSetupJobService;->maybeSetDownloadStatus(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V

    .line 268
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v2, v1}, Lcom/oculus/standalone/StandalonePrefs;->setHighPriAppsSetupComplete(Z)V

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_3

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isMaxRescheduleLimitExceeded(I)Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 293
    :goto_0
    if-lt p1, v0, :cond_1

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_1
    return v0

    .line 289
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private maybeRescheduleSelf(Landroid/app/job/JobParameters;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 191
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsJobRescheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getSetupRescheduleAttempts()I

    move-result v0

    .line 193
    invoke-direct {p0, v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->isMaxRescheduleLimitExceeded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    sget-object v0, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    const-string v1, "Maximum reschedule attempts reached. Bailing."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->FAILED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    invoke-direct {p0, v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->maybeSetDownloadStatus(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V

    .line 199
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0, v2}, Lcom/oculus/standalone/StandalonePrefs;->setHighPriAppsSetupComplete(Z)V

    .line 200
    invoke-direct {p0, p0}, Lcom/oculus/standalone/StandaloneSetupJobService;->startSetupInstallJob(Landroid/content/Context;)V

    .line 202
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/oculus/standalone/StandaloneSetupJobService;->finishJob(Landroid/app/job/JobParameters;Z)V

    .line 216
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/oculus/standalone/StandalonePrefs;->setSetupRescheduleAttempts(I)V

    .line 210
    iget-boolean v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    if-eqz v0, :cond_2

    .line 211
    invoke-static {p0}, Lcom/oculus/standalone/StandaloneSetupJobService;->rescheduleHighPriorityAppsJob(Landroid/content/Context;)V

    .line 212
    invoke-direct {p0, p1, v3}, Lcom/oculus/standalone/StandaloneSetupJobService;->finishJob(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/oculus/standalone/StandaloneSetupJobService;->finishJob(Landroid/app/job/JobParameters;Z)V

    goto :goto_0
.end method

.method private maybeSetDownloadStatus(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->isHighPriAppsSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    sget-object v0, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    const-string v1, "High Priority Apps Download is already complete"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    sget-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->UNSET:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    if-ne p1, v0, :cond_2

    .line 329
    sget-object v0, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to set the High Priority Apps Download Status to UNSET"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    sget-object v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->FAILED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    if-ne p1, v0, :cond_3

    .line 336
    invoke-static {p0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getClientPreferenceData(Landroid/content/Context;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->highPriorityAppsDownloadStatus:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    sget-object v1, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->COMPLETED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    if-eq v0, v1, :cond_0

    .line 340
    :cond_3
    invoke-static {p0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->setHighPriorityAppsDownloadStatus(Landroid/content/Context;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V

    goto :goto_0
.end method

.method private static rescheduleHighPriorityAppsJob(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 62
    invoke-static {p0}, Lcom/oculus/standalone/StandaloneSetupJobService;->createBasicJob(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 66
    invoke-static {p0, v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->schedule(Landroid/content/Context;Landroid/app/job/JobInfo;)V

    .line 67
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/oculus/standalone/StandaloneSetupJobService;->createBasicJob(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->schedule(Landroid/content/Context;Landroid/app/job/JobInfo;)V

    .line 58
    return-void
.end method

.method private static schedule(Landroid/content/Context;Landroid/app/job/JobInfo;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 77
    const-string v0, "jobscheduler"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 79
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 80
    if-ne v0, v3, :cond_0

    .line 81
    sget-object v0, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    const-string v1, "Standalone setup job scheduled successfully"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v1, Lcom/oculus/standalone/StandaloneSetupJobService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to schedule standalone setup job. Return: %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startSetupInstallJob(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/standalone/StandalonePrefs;->setSetupRescheduleAttempts(I)V

    .line 312
    invoke-static {p1}, Lcom/oculus/standalone/StandaloneSetupJobService;->createBasicJob(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    .line 314
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const/4 v1, 0x1

    .line 313
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 317
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 316
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 319
    invoke-static {p1, v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->schedule(Landroid/content/Context;Landroid/app/job/JobInfo;)V

    .line 320
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 32
    invoke-static {p0, p0}, Lcom/oculus/standalone/StandaloneSetupJobService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/standalone/StandaloneSetupJobService;)V

    .line 91
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsJobRescheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v2}, Lcom/oculus/standalone/StandalonePrefs;->isHighPriAppsSetupComplete()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    .line 97
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v0

    new-instance v2, Lcom/oculus/standalone/StandaloneSetupJobService$1;

    invoke-direct {v2, p0, p1}, Lcom/oculus/standalone/StandaloneSetupJobService$1;-><init>(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/app/job/JobParameters;)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/oculus/executors/OculusThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 148
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 156
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsJobRescheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mCompleted:Z

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v2}, Lcom/oculus/standalone/StandalonePrefs;->getSetupRescheduleAttempts()I

    move-result v2

    .line 158
    invoke-direct {p0, v2}, Lcom/oculus/standalone/StandaloneSetupJobService;->isMaxRescheduleLimitExceeded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    iget-boolean v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    if-eqz v2, :cond_0

    .line 160
    sget-object v2, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->FAILED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    invoke-direct {p0, v2}, Lcom/oculus/standalone/StandaloneSetupJobService;->maybeSetDownloadStatus(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V

    .line 161
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v2, v1}, Lcom/oculus/standalone/StandalonePrefs;->setHighPriAppsSetupComplete(Z)V

    .line 162
    invoke-direct {p0, p0}, Lcom/oculus/standalone/StandaloneSetupJobService;->startSetupInstallJob(Landroid/content/Context;)V

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mPrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v3, v2}, Lcom/oculus/standalone/StandalonePrefs;->setSetupRescheduleAttempts(I)V

    .line 168
    iget-boolean v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService;->mIsHighPriAppsDownloadInProgress:Z

    if-eqz v2, :cond_2

    .line 169
    invoke-static {p0}, Lcom/oculus/standalone/StandaloneSetupJobService;->rescheduleHighPriorityAppsJob(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 174
    goto :goto_0
.end method
