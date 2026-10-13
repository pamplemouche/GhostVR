.class Lcom/oculus/horizon/legacy/social/SocialManager$5;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->refreshGameInvites()V
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
    .line 539
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$5;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$5;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

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

    .line 559
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;->onGameInvitesError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/NotificationResponse;)V
    .locals 4

    .prologue
    .line 543
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    iget-object v0, p1, Lcom/oculus/horizon/social/api/NotificationResponse;->notifications:Lcom/oculus/horizon/social/api/NotificationResponse$SearchResults;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/NotificationResponse$SearchResults;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/notification/Notification;

    .line 545
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/notification/Notification;->getExtraData()Ljava/lang/String;

    move-result-object v3

    .line 546
    iget-object v0, v0, Lcom/oculus/horizon/api/common/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/oculus/horizon/api/common/GameInvite;->fromNotificationResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/api/common/GameInvite;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$5;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/legacy/social/MeManager;->setGameInvitesReceivedCount(I)V

    .line 551
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$5;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$600(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;

    .line 552
    invoke-interface {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;->setGameInvites(Ljava/util/List;)V

    goto :goto_1

    .line 554
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    check-cast p1, Lcom/oculus/horizon/social/api/NotificationResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$5;->onResponse(Lcom/oculus/horizon/social/api/NotificationResponse;)V

    return-void
.end method
