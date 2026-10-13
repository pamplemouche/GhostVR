.class Lcom/oculus/horizon/legacy/social/SocialManager$16;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doBlock(Lcom/oculus/horizon/api/common/user/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/UserBlockedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$16;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$16;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

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

    .line 997
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;->onBlockUserError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 999
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/UserBlockedResponse;)V
    .locals 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$16;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

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

    .line 990
    iget-object v2, p1, Lcom/oculus/horizon/social/api/UserBlockedResponse;->blocked_user:Lcom/oculus/horizon/social/api/BlockedUser;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;->onBlockUser(Lcom/oculus/horizon/social/api/BlockedUser;)V

    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 986
    check-cast p1, Lcom/oculus/horizon/social/api/UserBlockedResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$16;->onResponse(Lcom/oculus/horizon/social/api/UserBlockedResponse;)V

    return-void
.end method
