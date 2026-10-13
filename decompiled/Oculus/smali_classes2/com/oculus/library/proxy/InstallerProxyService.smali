.class public Lcom/oculus/library/proxy/InstallerProxyService;
.super Landroid/app/IntentService;
.source "InstallerProxyService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInstallerOxygenUtil:Lcom/oculus/appmanager/installer/util/oxygen/InstallerOxygenUtil;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/library/proxy/InstallerProxyService;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/library/proxy/InstallerProxyService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/proxy/InstallerProxyService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/library/proxy/InstallerProxyService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/proxy/InstallerProxyService;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oculus/appmanager/installer/util/oxygen/InstallerOxygenUtil;->$ul_$xXXcom_oculus_appmanager_installer_util_oxygen_InstallerOxygenUtil$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/util/oxygen/InstallerOxygenUtil;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/library/proxy/InstallerProxyService;->mInstallerOxygenUtil:Lcom/oculus/appmanager/installer/util/oxygen/InstallerOxygenUtil;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/oculus/library/proxy/InstallerProxyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "installer-proxy"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private handleProxyInstall(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 75
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v0, "pending_intent"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 79
    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v1, "Pending intent is missing"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v4, "Package name is missing"

    invoke-static {v1, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const-string v4, "Package name is missing"

    move-object v0, p0

    move-object v6, v5

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/oculus/library/proxy/InstallerProxyService;->invokeCallback(Landroid/content/IntentSender;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 94
    :cond_1
    if-nez v4, :cond_2

    .line 95
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v4, "File uri is missing"

    invoke-static {v1, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const-string v4, "file uri is missing"

    move-object v0, p0

    move-object v6, v5

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/oculus/library/proxy/InstallerProxyService;->invokeCallback(Landroid/content/IntentSender;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 107
    new-instance v6, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;

    invoke-direct {v6}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;-><init>()V

    .line 108
    invoke-virtual {v6, v2}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;->setPackageName(Ljava/lang/String;)Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;

    .line 109
    new-instance v7, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;

    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerApiMethods$Uris;->OCULUS_API_AUTHORITY:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/oculus/library/proxy/InstallerProxyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 113
    invoke-virtual {p0}, Lcom/oculus/library/proxy/InstallerProxyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v7, v1, v8, v9}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;-><init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;)V

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/oculus/library/proxy/InstallerProxyService;->mInstallerOxygenUtil:Lcom/oculus/appmanager/installer/util/oxygen/InstallerOxygenUtil;

    invoke-virtual {v1}, Lcom/oculus/appmanager/installer/util/oxygen/InstallerOxygenUtil;->enableVrAppInstalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_1
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v8, "Performing proxy install for %s"

    invoke-static {v1, v8, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    :try_start_1
    invoke-virtual {p0}, Lcom/oculus/library/proxy/InstallerProxyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "r"

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 125
    invoke-virtual {v7}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->acquireApkStagingUri()Landroid/net/Uri;

    move-result-object v4

    .line 126
    invoke-virtual {v7, v4, v1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->writeApk(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v7, v4, v6, v1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;->install(Landroid/net/Uri;Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;Landroid/content/IntentSender;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    move-object v4, v1

    .line 129
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v6, "Error performing proxy install"

    invoke-static {v1, v4, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 134
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    .line 130
    invoke-direct/range {v0 .. v6}, Lcom/oculus/library/proxy/InstallerProxyService;->invokeCallback(Landroid/content/IntentSender;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 117
    :catch_1
    move-exception v1

    .line 118
    sget-object v8, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v9, "Unable to enable VR app installs"

    invoke-static {v8, v1, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleProxyLegacyUninstall(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 167
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string v0, "pending_intent"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 170
    if-nez v7, :cond_0

    .line 171
    sget-object v0, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v1, "Missing callback intent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v1, "Missing package name"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const-string v2, "unknown"

    const-string v4, "Missing package name"

    move-object v0, p0

    move-object v6, v5

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/oculus/library/proxy/InstallerProxyService;->invokeCallback(Landroid/content/IntentSender;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 186
    :cond_1
    const-string v0, "extra_calling_package"

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    const-string v0, "result_receiver"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ResultReceiver;

    .line 192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 195
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;

    invoke-direct {v1, p0, v0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    .line 197
    invoke-virtual {v1, v2}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;->delete(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v4, "Performing proxy uninstall of %s"

    invoke-static {v1, v4, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 203
    invoke-static {v0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerContract;->getErrorCode(Landroid/os/Bundle;)I

    move-result v0

    .line 205
    if-ne v0, v3, :cond_3

    const-string v4, "Proxy uninstall success"

    .line 209
    :goto_1
    if-ne v0, v3, :cond_2

    const/4 v3, 0x0

    .line 213
    :cond_2
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v8, "Uninstall response received for package %s. Code: %s Message: %s"

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    invoke-static {v1, v8, v2, v0, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    move-object v0, p0

    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/oculus/library/proxy/InstallerProxyService;->invokeCallback(Landroid/content/IntentSender;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v3, "Error performing proxy uninstall"

    invoke-static {v1, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, -0x1

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 229
    invoke-direct/range {v0 .. v6}, Lcom/oculus/library/proxy/InstallerProxyService;->invokeCallback(Landroid/content/IntentSender;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 205
    :cond_3
    :try_start_1
    const-string v4, "Proxy uninstall failed"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private invokeCallback(Landroid/content/IntentSender;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 6
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 148
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 149
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "extra_calling_package"

    invoke-virtual {v3, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_0
    if-eqz p6, :cond_1

    .line 156
    const-string v0, "result_receiver"

    invoke-virtual {v3, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    :cond_1
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    sget-object v1, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v2, "Error sending install callback"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 38
    invoke-static {p0, p0}, Lcom/oculus/library/proxy/InstallerProxyService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/library/proxy/InstallerProxyService;)V

    .line 51
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v1, "Empty action"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 69
    sget-object v0, Lcom/oculus/library/proxy/InstallerProxyService;->TAG:Ljava/lang/String;

    const-string v4, "Unknown action: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :sswitch_0
    const-string v4, "proxy_install"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "proxy_uninstall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 63
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oculus/library/proxy/InstallerProxyService;->handleProxyInstall(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oculus/library/proxy/InstallerProxyService;->handleProxyLegacyUninstall(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3318c3af -> :sswitch_1
        -0x1264b736 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
