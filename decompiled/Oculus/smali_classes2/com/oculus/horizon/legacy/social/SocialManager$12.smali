.class Lcom/oculus/horizon/legacy/social/SocialManager$12;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doRejectGameInvite(Lcom/oculus/horizon/api/common/GameInvite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/notifications/api/NotificationReadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

.field final synthetic val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/api/common/GameInvite;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 816
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/GameInvite;->application_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/GameInvite;->room_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/GameInvite;->notification_id:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportInviteRejected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 822
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1300(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 823
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$600(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;

    .line 824
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;->onGameInvitesError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 826
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V
    .locals 5

    .prologue
    .line 801
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/GameInvite;->application_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/GameInvite;->room_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/GameInvite;->notification_id:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportInviteRejected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 807
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1300(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$600(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;

    .line 809
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->val$gameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;->onGameInviteRejected(Lcom/oculus/horizon/api/common/GameInvite;)V

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$12;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->onRejectedGameInvite()V

    .line 812
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 798
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationReadResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$12;->onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V

    return-void
.end method
