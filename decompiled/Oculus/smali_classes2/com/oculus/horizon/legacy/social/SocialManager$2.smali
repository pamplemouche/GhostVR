.class Lcom/oculus/horizon/legacy/social/SocialManager$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->refreshFriends(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/social/FriendsResponse;",
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
    .line 455
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$2;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$2;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$2;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

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

    .line 471
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;->onFriendsError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/social/FriendsResponse;)V
    .locals 4

    .prologue
    .line 458
    iget-object v2, p1, Lcom/oculus/horizon/api/social/FriendsResponse;->friends:Lcom/oculus/horizon/api/social/FriendsResponse$Friends;

    .line 459
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$2;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$100(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/social/SocialUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$2;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$2;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iget v1, v2, Lcom/oculus/horizon/api/social/FriendsResponse$Friends;->count:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/MeManager;->setFriendsCount(I)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$2;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$300(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;

    .line 464
    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/oculus/horizon/api/social/FriendsResponse$Friends;->nodes:Ljava/util/ArrayList;

    :goto_1
    invoke-interface {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;->setFriends(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    .line 466
    :cond_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 455
    check-cast p1, Lcom/oculus/horizon/api/social/FriendsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$2;->onResponse(Lcom/oculus/horizon/api/social/FriendsResponse;)V

    return-void
.end method
