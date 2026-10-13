.class Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "FBConnectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->onFBDataFetchComplete(Lcom/oculus/horizon/fbconnect/FacebookData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;

.field final synthetic val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;Lcom/oculus/horizon/base/OculusBaseFragment;Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;

    iput-object p3, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;

    iget-object v0, v0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    .line 122
    invoke-virtual {v1}, Lcom/oculus/horizon/fbconnect/FacebookData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    .line 123
    invoke-virtual {v2}, Lcom/oculus/horizon/fbconnect/FacebookData;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    .line 124
    invoke-virtual {v3}, Lcom/oculus/horizon/fbconnect/FacebookData;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 121
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$100(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;)V

    .line 126
    return-void
.end method

.method protected onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;)V
    .locals 5

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;->linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$LinkedAccountsInfo;

    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p1, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;->linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$LinkedAccountsInfo;

    iget-object v0, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$LinkedAccountsInfo;->facebook_friends_connected:Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->this$1:Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;

    iget-object v1, v1, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    iget-object v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    .line 113
    invoke-virtual {v2}, Lcom/oculus/horizon/fbconnect/FacebookData;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    .line 114
    invoke-virtual {v3}, Lcom/oculus/horizon/fbconnect/FacebookData;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    .line 115
    invoke-virtual {v4}, Lcom/oculus/horizon/fbconnect/FacebookData;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$100(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;)V

    .line 117
    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$1$1;->onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;)V

    return-void
.end method
