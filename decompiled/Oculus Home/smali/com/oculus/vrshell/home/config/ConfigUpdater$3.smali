.class Lcom/oculus/vrshell/home/config/ConfigUpdater$3;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater;->getConfigContext(Landroid/content/Context;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/config/ConfigUpdater;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    iput-object p2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    iget-object v1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;->val$context:Landroid/content/Context;

    const-string v2, "1481000308606657"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->nativeInitializeOVRPlatform(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "accessTokenAndUserId":[Ljava/lang/String;
    array-length v0, v8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 222
    array-length v0, v8

    packed-switch v0, :pswitch_data_0

    .line 231
    const/4 v6, 0x0

    .line 234
    .local v6, "errorDetails":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 235
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_error"

    const-string v3, "error"

    const-string v4, "platform_init_failed"

    const-string v5, "error_details"

    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    .end local v6    # "errorDetails":Ljava/lang/String;
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to initialize Platform. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " param(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    .restart local v6    # "errorDetails":Ljava/lang/String;
    goto :goto_0

    .line 247
    .end local v6    # "errorDetails":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    aget-object v7, v8, v0

    .line 248
    .local v7, "accessToken":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v10, v8, v0

    .line 251
    .local v10, "userId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const-string v9, "no_access_token"

    .line 261
    .local v9, "error":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_4

    .line 262
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_error"

    const-string v3, "error"

    invoke-static {v0, v1, v2, v3, v9}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    .end local v9    # "error":Ljava/lang/String;
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string v9, "no_user_id"

    .restart local v9    # "error":Ljava/lang/String;
    goto :goto_1

    .line 255
    .end local v9    # "error":Ljava/lang/String;
    :cond_2
    const-string v0, "0"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    const-string v9, "invalid_user_id"

    .restart local v9    # "error":Ljava/lang/String;
    goto :goto_1

    .line 258
    .end local v9    # "error":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "error":Ljava/lang/String;
    goto :goto_1

    .line 273
    :cond_4
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    invoke-virtual {v0, v10}, Lcom/oculus/vrshell/home/HomeApplication;->onUserId(Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    invoke-virtual {v0, v7}, Lcom/oculus/vrshell/home/HomeApplication;->onAccessToken(Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;

    iget-object v1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    iget-object v2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v7, v10}, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;->call()Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;

    move-result-object v0

    return-object v0
.end method
