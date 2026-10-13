.class Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;
.super Ljava/lang/Object;
.source "FBConnectFragment.java"

# interfaces
.implements Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBAccountLinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const-string v1, "sdk_connect_failure"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$500(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 156
    return-void
.end method

.method public onFBAccountLinkSuccess()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const-string v1, "sdk_connect_success"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$300(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->getCurrentFBUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$600(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onFBAccountUnlinkError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    return-void
.end method

.method public onFBAccountUnlinkSuccess()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onFBAuthCancelled()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const-string v1, "sdk_connect_cancelled"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$500(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 144
    return-void
.end method

.method public onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->onFBAccountLinkError(Lcom/oculus/http/core/base/ApiError;)V

    .line 138
    return-void
.end method

.method public onFBAuthSuccess(Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$300(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->AUTO_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->registerFBConnectAccount(Lcom/facebook/AccessToken;Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;)V

    .line 133
    return-void
.end method

.method public onFBDataFetchComplete(Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 5
    .param p1    # Lcom/oculus/horizon/fbconnect/FacebookData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$000(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$200(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/oculus/horizon/fbconnect/FacebookData;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-instance v3, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;

    iget-object v4, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-direct {v3, p0, v4, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;Lcom/oculus/horizon/base/OculusBaseFragment;Lcom/oculus/horizon/fbconnect/FacebookData;)V

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->getConnectedFacebookFriends(Ljava/lang/String;ILretrofit/Callback;)V

    .line 128
    return-void
.end method

.method public onFBSyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    return-void
.end method

.method public onFBSyncFriendsSuccess()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onFBUnsyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 186
    return-void
.end method

.method public onFBUnsyncFriendsSuccess()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
