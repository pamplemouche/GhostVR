.class Lcom/oculus/horizon/legacy/social/SocialManager$15;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doUnfriend(Lcom/oculus/horizon/api/common/user/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/FriendRemovedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$15;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$15;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$300(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;

    .line 968
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;->onUnfriendError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 970
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/FriendRemovedResponse;)V
    .locals 3

    .prologue
    .line 960
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$15;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$300(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;

    .line 961
    iget-object v2, p1, Lcom/oculus/horizon/social/api/FriendRemovedResponse;->removed_friend:Lcom/oculus/horizon/api/common/user/User;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;->onUnfriend(Lcom/oculus/horizon/api/common/user/User;)V

    goto :goto_0

    .line 963
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 957
    check-cast p1, Lcom/oculus/horizon/social/api/FriendRemovedResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$15;->onResponse(Lcom/oculus/horizon/social/api/FriendRemovedResponse;)V

    return-void
.end method
