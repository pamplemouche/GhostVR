.class Lcom/oculus/horizon/legacy/social/SocialManager$6;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->refreshPartyInvites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/NotificationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$6;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$6;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

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

    .line 593
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;->onPartyInvitesError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/NotificationResponse;)V
    .locals 4

    .prologue
    .line 576
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 577
    iget-object v0, p1, Lcom/oculus/horizon/social/api/NotificationResponse;->notifications:Lcom/oculus/horizon/social/api/NotificationResponse$SearchResults;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/NotificationResponse$SearchResults;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/notification/Notification;

    .line 578
    iget-boolean v3, v0, Lcom/oculus/horizon/api/common/notification/Notification;->is_read:Z

    if-nez v3, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/notification/Notification;->getExtraData()Ljava/lang/String;

    move-result-object v3

    .line 580
    iget-object v0, v0, Lcom/oculus/horizon/api/common/notification/Notification;->id:Ljava/lang/String;

    .line 581
    invoke-static {v0, v3}, Lcom/oculus/horizon/api/common/PartyInvite;->fromNotificationResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/api/common/PartyInvite;

    move-result-object v0

    .line 580
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$6;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$700(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;

    .line 586
    invoke-interface {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;->setPartyInvites(Ljava/util/List;)V

    goto :goto_1

    .line 588
    :cond_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 572
    check-cast p1, Lcom/oculus/horizon/social/api/NotificationResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$6;->onResponse(Lcom/oculus/horizon/social/api/NotificationResponse;)V

    return-void
.end method
