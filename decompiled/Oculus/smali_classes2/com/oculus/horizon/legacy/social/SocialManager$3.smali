.class Lcom/oculus/horizon/legacy/social/SocialManager$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->refreshFriendRequests()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/social/FriendRequestsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$3;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$3;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

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

    .line 504
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;->onFriendRequestsError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/social/FriendRequestsResponse;)V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$3;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/api/social/FriendRequestsResponse;->friend_requests_received_2:Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;

    iget v1, v1, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;->count:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/MeManager;->setFriendRequestsCount(I)V

    .line 487
    iget-object v0, p1, Lcom/oculus/horizon/api/social/FriendRequestsResponse;->friend_requests_received_2:Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;->edges:Ljava/util/ArrayList;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$3$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$3$1;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager$3;)V

    .line 488
    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 496
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$3;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$400(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;

    .line 497
    invoke-interface {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;->setFriendRequests(Ljava/util/List;)V

    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 483
    check-cast p1, Lcom/oculus/horizon/api/social/FriendRequestsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$3;->onResponse(Lcom/oculus/horizon/api/social/FriendRequestsResponse;)V

    return-void
.end method
