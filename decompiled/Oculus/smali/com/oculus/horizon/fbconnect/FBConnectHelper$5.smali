.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;
.super Ljava/lang/Object;
.source "FBConnectHelper.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->startReauthAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/horizon/fbconnect/FacebookData;",
        "Lbolts/Task",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iput-object p2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/fbconnect/FacebookData;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 416
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fbconnect/FacebookData;

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FacebookData;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v5}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 420
    :goto_0
    iget-object v5, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v5}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->maybeAccessTokenValid()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    .line 421
    const-string v1, "Facebook reauth terminated. Unable to proxy install."

    .line 422
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget v0, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v5}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$400(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, v3, v4, v4, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookReauthError(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {v4}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    .line 427
    :goto_1
    return-object v0

    :cond_0
    move v1, v3

    .line 418
    goto :goto_0

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->val$accessToken:Lcom/facebook/AccessToken;

    .line 428
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FacebookData;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_2
    invoke-static {v1, v2, v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$600(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    .line 429
    goto :goto_2
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
