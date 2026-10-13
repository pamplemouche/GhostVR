.class public Lcom/oculus/vrshell/home/DownloadActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadActionReceiver.java"


# static fields
.field private static final CANCEL_ACTION:Ljava/lang/String; = "cancel_download"

.field private static final LAUNCH_ACTION:Ljava/lang/String; = "launch_application"

.field private static final PACKAGE_NAME_STRING:Ljava/lang/String; = "package_name"

.field private static final RETRY_ACTION:Ljava/lang/String; = "retry_download"

.field private static final TAG:Ljava/lang/String;

.field private static final mHorizonTrustedApp:Lcom/oculus/secure/trustedapp/TrustedApp;


# instance fields
.field private mLibraryModule:Lcom/oculus/modules/LibraryModuleImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    const-class v0, Lcom/oculus/vrshell/home/DownloadActionReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_PROD:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.oculus.horizon"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.oculus.ocms"

    aput-object v4, v2, v3

    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 37
    invoke-static {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedApp(Ljava/util/Set;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/DownloadActionReceiver;->mHorizonTrustedApp:Lcom/oculus/secure/trustedapp/TrustedApp;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onHandleIntentWithThrows(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/DownloadActionReceiver;->throwIfNotAllowed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    const-string v3, "package_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string v3, "cancel_download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    sget-object v3, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling download for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v3, p0, Lcom/oculus/vrshell/home/DownloadActionReceiver;->mLibraryModule:Lcom/oculus/modules/LibraryModuleImpl;

    invoke-virtual {v3, v2}, Lcom/oculus/modules/LibraryModuleImpl;->cancelDownloadImpl(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v3, "retry_download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    sget-object v3, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading and installing package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v3, p0, Lcom/oculus/vrshell/home/DownloadActionReceiver;->mLibraryModule:Lcom/oculus/modules/LibraryModuleImpl;

    sget-object v4, Lcom/oculus/appmanager/info/model/RequestOrigin;->NOTIFICATION:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {v3, v2, v4}, Lcom/oculus/modules/LibraryModuleImpl;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v3, "launch_application"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, "launchIntent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported package for launch intent action."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_2
    sget-object v3, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported intent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private throwIfNotAllowed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-static {p2, v3}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;Z)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    move-result-object v0

    .line 83
    .local v0, "callerInfo":Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;
    iget-object v1, v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerPackageName:Ljava/lang/String;

    .line 84
    .local v1, "callerPackageName":Ljava/lang/String;
    iget-boolean v5, v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->isValid:Z

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 85
    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Calling package could not be identified."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_1
    sget-object v5, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking package signature for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v5, Lcom/oculus/vrshell/home/DownloadActionReceiver;->mHorizonTrustedApp:Lcom/oculus/secure/trustedapp/TrustedApp;

    iget v6, v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerUid:I

    invoke-virtual {v5, v6, p1}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkTrustedApp(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    sget-object v5, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Allowing caller intent because it is release signed."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 97
    :cond_2
    const-string v5, "com.oculus.ocms"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.oculus.horizon"

    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.oculus.horizon.dev"

    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 101
    .local v3, "isIntentFromHorizonOrOCMS":Z
    :cond_4
    invoke-static {p1, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 102
    .local v2, "isIntentFromDebugPackage":Z
    const/4 v4, 0x0

    .line 104
    .local v4, "isThisPackageDebug":Z
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 105
    sget-object v5, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Allowing caller intent because it and this package are debug."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_5
    invoke-static {p1}, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->isEmployeeWithWhitelistedDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    sget-object v5, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Allowing caller intent because device passes unlockulus."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_6
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Calling package is not release signed and this package is not debug."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    sget-object v1, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/oculus/vrshell/home/DownloadActionReceiver;->mLibraryModule:Lcom/oculus/modules/LibraryModuleImpl;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/oculus/modules/LibraryModuleImpl;

    invoke-direct {v1, p1}, Lcom/oculus/modules/LibraryModuleImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oculus/vrshell/home/DownloadActionReceiver;->mLibraryModule:Lcom/oculus/modules/LibraryModuleImpl;

    .line 51
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/DownloadActionReceiver;->onHandleIntentWithThrows(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oculus/vrshell/home/DownloadActionReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Error handling intent for onReceive."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
