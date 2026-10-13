.class public Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakeupBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mHorizonTrustedApp:Lcom/oculus/secure/trustedapp/TrustedApp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    const-class v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 34
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

    .line 38
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-static {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedApp(Ljava/util/Set;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->mHorizonTrustedApp:Lcom/oculus/secure/trustedapp/TrustedApp;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onHandleIntentWithThrows(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->throwIfNotAllowed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/oculus/vrshell/home/CrashReporting;->initialize(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->FETCH_CONFIG:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    iget-object v0, v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->extraKey:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p1}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->schedule(Landroid/content/Context;)V

    .line 79
    :cond_0
    :goto_0
    invoke-static {}, Lcom/oculus/vrshell/home/HomeApplication;->flushAnalytics()V

    .line 80
    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->ON_LOGOUT:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    iget-object v0, v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->extraKey:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {p1}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->unschedule(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->DO_LOGGING:Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;

    iget-object v0, v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver$Action;->extraKey:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Missing or unknown Action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private throwIfNotAllowed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-static {p2, v3}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;Z)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    move-result-object v0

    .line 84
    .local v0, "callerInfo":Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;
    iget-object v1, v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerPackageName:Ljava/lang/String;

    .line 85
    .local v1, "callerPackageName":Ljava/lang/String;
    iget-boolean v5, v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->isValid:Z

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 86
    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Calling package could not be identified."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_1
    sget-object v5, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

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

    .line 92
    sget-object v5, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->mHorizonTrustedApp:Lcom/oculus/secure/trustedapp/TrustedApp;

    iget v6, v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerUid:I

    invoke-virtual {v5, v6, p1}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkTrustedApp(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    sget-object v5, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Allowing caller intent because it is release signed."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 98
    :cond_2
    const-string v5, "com.oculus.ocms"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.oculus.horizon"

    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.oculus.horizon.dev"

    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 102
    .local v3, "isIntentFromHorizonOrOCMS":Z
    :cond_4
    invoke-static {p1, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 103
    .local v2, "isIntentFromDebugPackage":Z
    const/4 v4, 0x0

    .line 105
    .local v4, "isThisPackageDebug":Z
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 106
    sget-object v5, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Allowing caller intent because it and this package are debug."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_5
    invoke-static {p1}, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->isEmployeeWithWhitelistedDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 112
    sget-object v5, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Allowing caller intent because device passes unlockulus."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
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
    .line 56
    sget-object v1, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->onHandleIntentWithThrows(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oculus/vrshell/home/WakeupBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Error handling intent for onReceive."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
