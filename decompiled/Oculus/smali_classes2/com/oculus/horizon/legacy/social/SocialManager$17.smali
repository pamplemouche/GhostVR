.class Lcom/oculus/horizon/legacy/social/SocialManager$17;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doUnblock(Lcom/oculus/horizon/social/api/BlockedUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/UserUnblockedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$17;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$17;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$500(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;

    .line 1021
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;->onUnblockUserError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 1023
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/UserUnblockedResponse;)V
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$17;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$500(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;

    .line 1014
    iget-object v2, p1, Lcom/oculus/horizon/social/api/UserUnblockedResponse;->previously_blocked_user_id:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;->onUnblockUser(Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1010
    check-cast p1, Lcom/oculus/horizon/social/api/UserUnblockedResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$17;->onResponse(Lcom/oculus/horizon/social/api/UserUnblockedResponse;)V

    return-void
.end method
