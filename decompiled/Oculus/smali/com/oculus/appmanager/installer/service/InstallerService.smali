.class public Lcom/oculus/appmanager/installer/service/InstallerService;
.super Landroid/app/IntentService;
.source "InstallerService.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugMode:Lcom/oculus/debug/DebugMode;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInfoUtils:Lcom/oculus/appmanager/info/InfoUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallerCleanUpHelper:Lcom/oculus/appmanager/installer/service/InstallerCleanUpHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallerConsistencyHelper:Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mServiceFutures:Lcom/oculus/util/service/ServiceFutures;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/service/InstallerService;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/appmanager/installer/service/InstallerService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/service/InstallerService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/appmanager/installer/service/InstallerService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/service/InstallerService;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->$ul_$xXXcom_oculus_appmanager_installer_service_InstallerServiceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/InstallerService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/appmanager/info/InfoUtils;->$ul_$xXXcom_oculus_appmanager_info_InfoUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/info/InfoUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/InstallerService;->mInfoUtils:Lcom/oculus/appmanager/info/InfoUtils;

    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/InstallerService;->mDebugMode:Lcom/oculus/debug/DebugMode;

    invoke-static {p0}, Lcom/oculus/util/service/ServiceFutures;->$ul_$xXXcom_oculus_util_service_ServiceFutures$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/InstallerService;->mServiceFutures:Lcom/oculus/util/service/ServiceFutures;

    invoke-static {p0}, Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;->$ul_$xXXcom_oculus_appmanager_installer_service_InstallerConsistencyHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerConsistencyHelper:Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;

    invoke-static {p0}, Lcom/oculus/appmanager/installer/service/InstallerCleanUpHelper;->$ul_$xXXcom_oculus_appmanager_installer_service_InstallerCleanUpHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/service/InstallerCleanUpHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerCleanUpHelper:Lcom/oculus/appmanager/installer/service/InstallerCleanUpHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/oculus/appmanager/installer/service/InstallerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/appmanager/installer/service/InstallerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "OculusInstallerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private canAcceptFuture(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 200
    const-string v0, "action_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_download_and_install"

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_uninstall"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAction(Landroid/content/Intent;Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 119
    const-string v0, "action_cancel"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mServiceFutures:Lcom/oculus/util/service/ServiceFutures;

    invoke-virtual {v0, p1}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v1, p2, v0}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->requestCancel(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mServiceFutures:Lcom/oculus/util/service/ServiceFutures;

    invoke-virtual {v0, p1}, Lcom/oculus/util/service/ServiceFutures;->hasFuture(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0, p2, p1}, Lcom/oculus/appmanager/installer/service/InstallerService;->handleFuturesMetadata(Lcom/oculus/appmanager/info/ApkUpdateInfo;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 190
    const-string v0, "Unrecognized action for InstallerService: %s."

    .line 191
    invoke-static {v0, p3}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/oculus/appmanager/installer/service/InstallerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v2, Lcom/oculus/appmanager/installer/service/InstallerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :sswitch_0
    const-string v3, "action_download_and_install"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "action_notify_download_complete"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v3, "action_download_complete"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "action_verification_complete"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "action_install_success"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "action_failed"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "action_install_complete"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "action_uninstall"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "action_uninstall_complete"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v3, "action_canceled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "action_retry"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "action_consistency_for_id"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "action_boot_cleanup"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "action_try_start_queued_download"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "action_continue_next_update"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0xe

    goto/16 :goto_1

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->requestInstall(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 136
    :pswitch_1
    const-string v0, "download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 137
    iget-object v2, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v2, v0, v1}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onDownloadCompleteNotification(J)V

    goto/16 :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    const-string/jumbo v2, "retry_verifying_attempt"

    .line 142
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 140
    invoke-virtual {v0, p2, v1}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onDownloadComplete(Lcom/oculus/appmanager/info/ApkUpdateInfo;Z)V

    goto/16 :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onVerificationComplete(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onUpdateSuccessful(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 151
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onUpdateFailed(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 154
    :pswitch_6
    const-string v0, "android.content.pm.extra.STATUS"

    .line 155
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 156
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v2, p2, v0, v1}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onInstallComplete(Lcom/oculus/appmanager/info/ApkUpdateInfo;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :pswitch_7
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->requestUninstall(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 163
    :pswitch_8
    const-string v0, "android.content.pm.extra.STATUS"

    .line 164
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v2, p2, v0, v1}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onUninstallComplete(Lcom/oculus/appmanager/info/ApkUpdateInfo;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :pswitch_9
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onUpdateCanceled(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 174
    :pswitch_a
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->onUpdateRetried(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 177
    :pswitch_b
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerConsistencyHelper:Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;->performConsistencyCheckForApkUpdateInfo(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 180
    :pswitch_c
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerCleanUpHelper:Lcom/oculus/appmanager/installer/service/InstallerCleanUpHelper;

    invoke-virtual {v0}, Lcom/oculus/appmanager/installer/service/InstallerCleanUpHelper;->performBootCleanUpProcess()V

    goto/16 :goto_0

    .line 183
    :pswitch_d
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->maybeStartNextUpdate(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V

    goto/16 :goto_0

    .line 186
    :pswitch_e
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInstallerServiceManager:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-virtual {v0, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->continueNextUpdate(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    goto/16 :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x6e78326c -> :sswitch_3
        -0x508e66ff -> :sswitch_b
        -0x3da74dba -> :sswitch_6
        -0x37fc799a -> :sswitch_e
        -0x212bc6b9 -> :sswitch_2
        -0x1a84a640 -> :sswitch_c
        0x10e9d465 -> :sswitch_0
        0x24e9d482 -> :sswitch_9
        0x25428baa -> :sswitch_d
        0x369ed619 -> :sswitch_7
        0x373bb183 -> :sswitch_1
        0x448cca66 -> :sswitch_5
        0x6e3c035f -> :sswitch_a
        0x6ed6e956 -> :sswitch_4
        0x7c88589f -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private handleFuturesMetadata(Lcom/oculus/appmanager/info/ApkUpdateInfo;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {p0, v1}, Lcom/oculus/appmanager/installer/service/InstallerService;->canAcceptFuture(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "illegal future received during action %s on update"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v6

    .line 214
    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    sget-object v0, Lcom/oculus/appmanager/installer/service/InstallerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInfoUtils:Lcom/oculus/appmanager/info/InfoUtils;

    const-string/jumbo v2, "service_illegal_future"

    sget-object v4, Lcom/oculus/appmanager/info/model/InstallerResultError;->INVALID_INSTALL_REQUEST:Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/appmanager/info/InfoUtils;->failSoft(Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/Throwable;)V

    move v0, v6

    .line 245
    :goto_0
    return v0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getExtras()Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    move-result-object v2

    const-string v3, "future_id"

    invoke-virtual {v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getExtras()Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    move-result-object v2

    const-string v3, "future_pid"

    invoke-virtual {v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "attempting to save future to update that already has one during action %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v6

    .line 228
    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 232
    sget-object v0, Lcom/oculus/appmanager/installer/service/InstallerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInfoUtils:Lcom/oculus/appmanager/info/InfoUtils;

    const-string/jumbo v2, "service_future_override"

    sget-object v4, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/appmanager/info/InfoUtils;->failSoft(Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/Throwable;)V

    move v0, v6

    .line 239
    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mServiceFutures:Lcom/oculus/util/service/ServiceFutures;

    invoke-virtual {v1, p2}, Lcom/oculus/util/service/ServiceFutures;->getFutureId(Landroid/content/Intent;)J

    move-result-wide v2

    .line 243
    iget-object v1, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mServiceFutures:Lcom/oculus/util/service/ServiceFutures;

    invoke-virtual {v1, p2}, Lcom/oculus/util/service/ServiceFutures;->getFuturePid(Landroid/content/Intent;)I

    move-result v1

    .line 244
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->edit()Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->putFutureId(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putFuturePid(I)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->save()V

    goto :goto_0
.end method

.method private isUpdateIdOptional(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 206
    const-string v0, "action_notify_download_complete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_boot_cleanup"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 38
    invoke-static {p0, p0}, Lcom/oculus/appmanager/installer/service/InstallerService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/service/InstallerService;)V

    .line 57
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 61
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string/jumbo v1, "service_missing_update_id"

    const-string v2, "Null intent"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string/jumbo v1, "service_missing_update_id"

    const-string v2, "Null or empty action"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, v0}, Lcom/oculus/appmanager/installer/service/InstallerService;->isUpdateIdOptional(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    const-string/jumbo v1, "update_id"

    invoke-virtual {p1, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 74
    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 75
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "No update id in intent with action %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string/jumbo v2, "service_missing_update_id"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInfoUtils:Lcom/oculus/appmanager/info/InfoUtils;

    invoke-virtual {v1, v2, v3, v4}, Lcom/oculus/appmanager/info/InfoUtils;->getUpdate(JZ)Lcom/oculus/appmanager/info/ApkUpdateInfo;

    move-result-object v1

    .line 81
    if-nez v1, :cond_3

    .line 82
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string/jumbo v1, "service_update_not_found"

    const-string/jumbo v2, "update not found in storage"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    :try_start_0
    invoke-direct {p0, p1, v1, v0}, Lcom/oculus/appmanager/installer/service/InstallerService;->handleAction(Landroid/content/Intent;Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v5

    .line 91
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isFinal()Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mDebugMode:Lcom/oculus/debug/DebugMode;

    invoke-virtual {v0}, Lcom/oculus/debug/DebugMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInfoUtils:Lcom/oculus/appmanager/info/InfoUtils;

    const-string/jumbo v2, "service_unexpected_exception"

    .line 96
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/appmanager/info/InfoUtils;->failHard(Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mInfoUtils:Lcom/oculus/appmanager/info/InfoUtils;

    const-string/jumbo v2, "service_unexpected_exception"

    .line 103
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/appmanager/info/InfoUtils;->failSoft(Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string/jumbo v1, "service_unexpected_exception"

    const-string/jumbo v2, "uncaught exception in installer service"

    invoke-virtual {v0, v1, v2, v5}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
