.class Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;
.super Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;
.source "HeadphonesManagerModule.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mPluggedIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->mPluggedIn:Z

    .line 33
    return-void
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 47
    sget-object v6, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->MODULE_NAME:Ljava/lang/String;

    const-string v7, "processIntent()"

    invoke-static {v6, v7}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v6, "state"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 50
    .local v5, "state":I
    const-string v6, "microphone"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 51
    .local v2, "microphone":I
    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "name":Ljava/lang/String;
    sget-object v6, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->MODULE_NAME:Ljava/lang/String;

    const-string v7, "ACTION_HEADSET_PLUG broadcast: state=%d microphone=%d name=%s"

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 53
    invoke-static {v6, v7, v8, v9, v3}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 62
    .local v4, "pluggedIn":Z
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v6, p0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->mPluggedIn:Z

    if-eq v4, v6, :cond_2

    .line 63
    :cond_1
    iput-boolean v4, p0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->mPluggedIn:Z

    .line 66
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v1, "headphoneState":Lorg/json/JSONObject;
    const-string v6, "plugged_in"

    iget-boolean v7, p0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->mPluggedIn:Z

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 68
    iget-wide v6, p0, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->RVRCtxTag:J

    const-string v8, "onHeadphonesStateUpdated"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "headphoneState":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/oculus/vrshell/home/module/HeadphonesManagerModule;->MODULE_NAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSON Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
