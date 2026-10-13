.class Lcom/oculus/horizon/legacy/social/SocialManager$7;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->refreshFacebookFriendsPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$7;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$7;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$800(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;

    .line 618
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;->onFacebookFriendsPolicyError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 620
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;)V
    .locals 3

    .prologue
    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p1}, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;->getFriendPolicy()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->fromString(Ljava/lang/String;)Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    move-result-object v1

    .line 610
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$7;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$800(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;

    .line 611
    invoke-interface {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;->onFacebookFriendsPolicyGet(Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;)V

    goto :goto_1

    .line 609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 605
    check-cast p1, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$7;->onResponse(Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;)V

    return-void
.end method
