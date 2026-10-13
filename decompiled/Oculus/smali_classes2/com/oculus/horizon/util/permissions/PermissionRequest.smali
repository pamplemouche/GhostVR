.class public Lcom/oculus/horizon/util/permissions/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadSuperClassBroadcastReceiver.SecureBroadcastReceiver"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/oculus/horizon/util/permissions/PermissionRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oculus.horizon.permission_callback"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->mCallback:Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;

    .line 42
    iput-object p1, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/util/permissions/PermissionRequest;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/util/permissions/PermissionRequest;)Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->mCallback:Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;

    return-object v0
.end method

.method private hasValidHomeVersionInstalled()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.oculus.home"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 92
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    sget-object v3, Lcom/oculus/horizon/util/permissions/PermissionRequest;->TAG:Ljava/lang/String;

    const-string v4, "%s version is %s"

    const-string v5, "com.oculus.home"

    invoke-static {v3, v4, v5, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v2

    const-wide v4, 0x400bae147ae147aeL    # 3.46

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    :goto_0
    move v1, v0

    .line 104
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v2, Lcom/oculus/horizon/util/permissions/PermissionRequest;->TAG:Ljava/lang/String;

    const-string v3, "Home is not installed"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    sget-object v2, Lcom/oculus/horizon/util/permissions/PermissionRequest;->TAG:Ljava/lang/String;

    const-string v3, "Invalid Home version name"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    :catch_2
    move-exception v0

    .line 103
    sget-object v2, Lcom/oculus/horizon/util/permissions/PermissionRequest;->TAG:Ljava/lang/String;

    const-string v3, "Invalid Home version name"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public requestPermission(Ljava/lang/String;J)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/oculus/horizon/util/permissions/PermissionRequest;->hasValidHomeVersionInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return v0

    .line 51
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oculus.horizon.vr_permission.GET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    const-string v3, "requested_permission"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v3, "platform_request_id"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 55
    const-string v3, "platform_action_name"

    const-string v4, "com.oculus.horizon.permission_callback"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v3, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "com.oculus.horizon.permission_callback"

    aput-object v6, v5, v0

    invoke-direct {v4, p0, v5, p2, p3}, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;-><init>(Lcom/oculus/horizon/util/permissions/PermissionRequest;[Ljava/lang/String;J)V

    sget-object v0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 81
    goto :goto_0
.end method
