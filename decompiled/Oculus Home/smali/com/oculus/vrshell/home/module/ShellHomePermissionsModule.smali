.class Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;
.super Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;
.source "ShellHomePermissionsModule.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "hasReadStoragePermission"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Landroid/util/Pair;

    const-string v2, "requestReadStoragePermission"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method private invokeCallbackSuccess(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;I)V
    .locals 7
    .param p1, "status"    # Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    .param p2, "requestID"    # I

    .prologue
    .line 76
    const-string v2, ""

    .line 78
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "has_permission"

    sget-object v3, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->GRANTED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    .line 79
    :goto_0
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "grant_status"

    .line 80
    invoke-virtual {p1}, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->ordinal()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "data"

    .line 82
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    .end local v0    # "data":Lorg/json/JSONObject;
    :goto_1
    iget-wide v4, p0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->RVRCtxTag:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, p2, v3}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 88
    return-void

    .line 78
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "Unable to populate response for callback."

    invoke-static {v3, v4, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method private startPermissionsActivity(ILjava/lang/String;)V
    .locals 4
    .param p1, "requestID"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->mContext:Landroid/content/Context;

    const-class v3, Lcom/oculus/vrshell/home/ShellHomePermissionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const-string v2, "requested_permission"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v2, "platform_request_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    sget-object v2, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "Launching getPermission intent succeeded"

    invoke-static {v2, v3}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->startReceiver()V

    .line 103
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "Launching getPermission intent failed"

    invoke-static {v2, v3, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oculus.vrshell.home_permissions_request"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public hasReadStoragePermission(I)V
    .locals 3
    .param p1, "requestID"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "permissionValue":I
    if-nez v0, :cond_0

    .line 65
    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->GRANTED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->invokeCallbackSuccess(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->DENIED:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->invokeCallbackSuccess(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;I)V

    goto :goto_0
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    .line 107
    sget-object v2, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "processIntent()"

    invoke-static {v2, v3}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-nez p1, :cond_0

    .line 110
    sget-object v2, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "Cannot process null intent"

    invoke-static {v2, v3}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oculus.vrshell.home_permissions_request"

    if-ne v2, v3, :cond_1

    .line 115
    const-string v2, "permission_status"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    .line 117
    .local v1, "result":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    const-string v2, "platform_request_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "requestID":I
    sget-object v2, Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;->UNKNOWN:Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;

    if-ne v1, v2, :cond_2

    .line 120
    iget-wide v2, p0, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->RVRCtxTag:J

    const-string v4, "[ { \"error\":\"permission status unknown\", \"data\":{} } ]"

    invoke-static {v2, v3, v0, v4}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 129
    .end local v0    # "requestID":I
    .end local v1    # "result":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->stopReceiver()V

    goto :goto_0

    .line 125
    .restart local v0    # "requestID":I
    .restart local v1    # "result":Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->invokeCallbackSuccess(Lcom/oculus/vrshell/home/ShellHomePermissionActivity$PermissionStatus;I)V

    goto :goto_1
.end method

.method public requestReadStoragePermission(I)V
    .locals 1
    .param p1, "requestID"    # I

    .prologue
    .line 72
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, p1, v0}, Lcom/oculus/vrshell/home/module/ShellHomePermissionsModule;->startPermissionsActivity(ILjava/lang/String;)V

    .line 73
    return-void
.end method
