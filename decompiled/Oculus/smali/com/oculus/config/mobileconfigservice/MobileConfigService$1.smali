.class Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;
.super Lcom/oculus/aidl/IMobileConfigService$Stub;
.source "MobileConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigservice/MobileConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;


# direct methods
.method constructor <init>(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-direct {p0}, Lcom/oculus/aidl/IMobileConfigService$Stub;-><init>()V

    return-void
.end method

.method private getCallerAppIdentity()Lcom/facebook/secure/trustedapp/AppIdentity;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$500(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->getCallerAppIdentity(Landroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$600(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/facebook/secure/trustedapp/TrustedApp;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$500(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCallerAppIdentityTrusted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$500(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCurrentAppDebugBuild(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    .line 165
    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$500(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    const-string v1, "mc_ipc_horizon_log_exposure_reached"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->getCallerAppIdentity()Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileConfig log exposure from third party app"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    const-string v1, "mc_fetch_failed"

    const-string/jumbo v2, "signature_check_failed"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileConfig no package name for log exposure"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    const-string v1, "mc_log_exposure_failed"

    const-string/jumbo v2, "signature_check_failed"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$200(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/util/thread/ThreadUtils;

    move-result-object v0

    const-string v1, "must not be run on the ui thread"

    invoke-virtual {v0, v1}, Lcom/oculus/util/thread/ThreadUtils;->assertIsNonUiThread(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    const-string v1, "mc_ipc_horizon_log_exposure_filters_passed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$400(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/auth/credentials/Credentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigExposure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateMCs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v1

    const-string v2, "mc_config_fetch_ipc_reached_horizon"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->getCallerAppIdentity()Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileConfig fetch from third party app"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v1

    const-string v2, "mc_fetch_failed"

    const-string/jumbo v3, "signature_check_failed_app_identity_null"

    invoke-virtual {v1, v2, v3}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-nez v1, :cond_1

    .line 78
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileConfig no package name for log exposure"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v1

    const-string v2, "mc_log_exposure_failed"

    const-string/jumbo v3, "signature_check_failed_package_name_null"

    invoke-virtual {v1, v2, v3}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$200(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/util/thread/ThreadUtils;

    move-result-object v2

    const-string v3, "must not be run on the ui thread"

    invoke-virtual {v2, v3}, Lcom/oculus/util/thread/ThreadUtils;->assertIsNonUiThread(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v2

    const-string v3, "mc_config_fetch_ipc_validation_passed"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 90
    new-array v3, v3, [B

    .line 91
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 92
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 93
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    .line 95
    invoke-static {v3}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$300(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->getMobileConfigsFromCacheAndUpdateIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 98
    const/4 v1, 0x0

    aget-object v1, v3, v1

    .line 99
    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 100
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 102
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 103
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error fetching configs"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v2

    const-string v3, "mc_fetch_failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "io_exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 108
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v2, v3, v1}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :catch_1
    move-exception v1

    .line 111
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error fetching configs"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigService$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigService;

    invoke-static {v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigService;->access$000(Lcom/oculus/config/mobileconfigservice/MobileConfigService;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v2

    const-string v3, "mc_fetch_failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "npe_during_fetch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 113
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v2, v3, v1}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
