.class public Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;
.super Ljava/lang/Object;
.source "OVRPlatformGenericDeeplinkModule.java"


# static fields
.field private static MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->MODULE_NAME:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->mContext:Landroid/content/Context;

    .line 28
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
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "onDeeplinkResult"

    const-string v3, "ssss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method private returnResultHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1, "fromPkg"    # Ljava/lang/String;
    .param p2, "platformMessageType"    # Ljava/lang/String;
    .param p3, "platformRequestID"    # Ljava/lang/String;
    .param p4, "success"    # Z
    .param p5, "resultJson"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->TAG:Ljava/lang/String;

    const-string v1, "Returning generic deeplink result success=[%s] resultJson=[%s] fromPkg=[%s] platformMessageType=[%s] platformRequestID=[%s]"

    .line 59
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 56
    invoke-static/range {v0 .. v7}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 67
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.oculus.generic_deeplink_result"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :try_start_0
    const-string v0, "platform_message_type"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    :try_start_1
    const-string v0, "platform_request_id"

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :goto_1
    const-string v0, "is_successful"

    invoke-virtual {v9, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v0, "result_json"

    invoke-virtual {v9, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void

    .line 72
    :catch_0
    move-exception v8

    .line 73
    .local v8, "e":Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->TAG:Ljava/lang/String;

    const-string v1, "Cannot parse platformMessageType[%s]"

    invoke-static {v0, v8, v1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 79
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->TAG:Ljava/lang/String;

    const-string v1, "Cannot parse platformRequestId[%s]"

    invoke-static {v0, v8, v1, p3}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public onDeeplinkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "fromPkg"    # Ljava/lang/String;
    .param p2, "platformMessageType"    # Ljava/lang/String;
    .param p3, "platformRequestID"    # Ljava/lang/String;
    .param p4, "resultJson"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->returnResultHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v6

    .line 46
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/oculus/vrshell/home/module/OVRPlatformGenericDeeplinkModule;->TAG:Ljava/lang/String;

    const-string v1, "onDeeplinkResult failed: resultJson[%s]"

    invoke-static {v0, v6, v1, p4}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
