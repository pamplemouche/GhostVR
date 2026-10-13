.class Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;
.super Ljava/lang/Object;
.source "FBConnectInit.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;->onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;

.field final synthetic val$currentAccessToken:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;

    iput-object p2, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;->val$currentAccessToken:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;->access$300(Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;->val$currentAccessToken:Lcom/facebook/AccessToken;

    .line 102
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;->val$currentAccessToken:Lcom/facebook/AccessToken;

    .line 103
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->FACEBOOK:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;->insert(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)J

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
