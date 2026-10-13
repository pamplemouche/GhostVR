.class public Lcom/oculus/vrshell/home/module/ShareToFacebookModule;
.super Ljava/lang/Object;
.source "ShareToFacebookModule.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;

.field private static mHeight:I

.field private static mPath:Ljava/lang/String;

.field private static mWidth:I


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-class v0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->MODULE_NAME:Ljava/lang/String;

    .line 22
    sput v1, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mWidth:I

    .line 23
    sput v1, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mHeight:I

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mContext:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mContext:Landroid/content/Context;

    .line 30
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
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getMostRecentFileInfo"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Landroid/util/Pair;

    const-string v2, "returnShareResult"

    const-string v3, "bsss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method public static setStaticFileInfo(Ljava/lang/String;II)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 50
    sput-object p0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mPath:Ljava/lang/String;

    .line 51
    sput p1, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mWidth:I

    .line 52
    sput p2, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mHeight:I

    .line 53
    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMostRecentFileInfo(I)V
    .locals 6
    .param p1, "callbackID"    # I

    .prologue
    .line 56
    const-string v1, ""

    .line 58
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "path"

    sget-object v4, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mPath:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "width"

    sget v4, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mWidth:I

    .line 60
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "height"

    sget v4, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mHeight:I

    .line 61
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    iget-wide v2, p0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->RVRCtxTag:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "Unable to populate and pass file info."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public returnShareResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "platformRequestId"    # Ljava/lang/String;
    .param p4, "fromPkg"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.oculus.share_to_facebook_result"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 84
    .local v2, "platformRequestIdLong":J
    const-string v4, "platform_request_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .end local v2    # "platformRequestIdLong":J
    :goto_0
    :try_start_2
    const-string v4, "share_result_json"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v4, "share_was_successful"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    iget-object v4, p0, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 85
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->MODULE_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse platformRequestId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", returning Share result without it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->MODULE_NAME:Ljava/lang/String;

    const-string v5, "Failed to return Share result to the calling app."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
