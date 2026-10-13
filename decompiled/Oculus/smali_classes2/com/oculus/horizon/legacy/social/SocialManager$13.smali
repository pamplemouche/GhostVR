.class Lcom/oculus/horizon/legacy/social/SocialManager$13;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doRejectPartyInvite(Lcom/oculus/horizon/api/common/PartyInvite;)V
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

.field final synthetic val$partyInvite:Lcom/oculus/horizon/api/common/PartyInvite;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/api/common/PartyInvite;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->val$partyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1400(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->val$partyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$700(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;

    .line 866
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;->onPartyInvitesError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 868
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1400(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->val$partyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 857
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$700(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;

    .line 858
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$13;->val$partyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;->onPartyInviteRejected(Lcom/oculus/horizon/api/common/PartyInvite;)V

    goto :goto_0

    .line 860
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 853
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationReadResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$13;->onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V

    return-void
.end method
