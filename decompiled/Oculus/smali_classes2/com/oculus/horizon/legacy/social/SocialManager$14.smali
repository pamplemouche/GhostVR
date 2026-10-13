.class Lcom/oculus/horizon/legacy/social/SocialManager$14;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doSendFriendRequest(Lcom/oculus/horizon/api/common/user/BasicUser;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/FriendRequestSendResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

.field final synthetic val$origin:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$14;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$14;->val$origin:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$14;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1500(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;

    .line 939
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;->onFriendRequestSendError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 941
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/FriendRequestSendResponse;)V
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$14;->val$origin:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    sget-object v1, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->SEARCH:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$14;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1500(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;

    .line 927
    iget-object v2, p1, Lcom/oculus/horizon/social/api/FriendRequestSendResponse;->sent_friend_requestee_search_result:Lcom/oculus/horizon/social/api/SearchResultUser;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;->onFriendRequestSent(Lcom/oculus/horizon/social/api/SearchResultUser;)V

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$14;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1500(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;

    .line 931
    iget-object v2, p1, Lcom/oculus/horizon/social/api/FriendRequestSendResponse;->sent_friend_requestee:Lcom/oculus/horizon/api/common/user/User;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;->onFriendRequestSent(Lcom/oculus/horizon/api/common/user/User;)V

    goto :goto_1

    .line 934
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 922
    check-cast p1, Lcom/oculus/horizon/social/api/FriendRequestSendResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$14;->onResponse(Lcom/oculus/horizon/social/api/FriendRequestSendResponse;)V

    return-void
.end method
