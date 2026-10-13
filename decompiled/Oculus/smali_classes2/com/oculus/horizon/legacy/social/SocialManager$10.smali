.class Lcom/oculus/horizon/legacy/social/SocialManager$10;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doAcceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/FriendRequestAcceptResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1100(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->val$userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$400(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;

    .line 707
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;->onFriendRequestActionError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 709
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/FriendRequestAcceptResponse;)V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1100(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->val$userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 697
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->onAcceptedFriendRequest()V

    .line 698
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$10;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$400(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;

    .line 699
    iget-object v2, p1, Lcom/oculus/horizon/social/api/FriendRequestAcceptResponse;->accepted_friend_requester:Lcom/oculus/horizon/api/common/user/User;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;->onFriendRequestAccepted(Lcom/oculus/horizon/api/common/user/User;)V

    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 693
    check-cast p1, Lcom/oculus/horizon/social/api/FriendRequestAcceptResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$10;->onResponse(Lcom/oculus/horizon/social/api/FriendRequestAcceptResponse;)V

    return-void
.end method
