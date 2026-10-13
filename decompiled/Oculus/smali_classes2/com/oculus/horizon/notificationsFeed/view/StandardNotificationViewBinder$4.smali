.class Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "StandardNotificationViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->mutateNotificationsPreference(Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

.field final synthetic val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

.field final synthetic val$notifOptOutType:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iput-object p2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    iput-object p3, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$notifOptOutType:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 441
    invoke-static {}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to update notification preference settings for notif %s"

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 443
    invoke-virtual {v2}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    sget v1, Lcom/oculus/horizon/R$string;->settings_notifications_general_error:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$400(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;I)V

    .line 445
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 418
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getType()Lcom/oculus/horizon/notifications/core/NotificationType;

    move-result-object v0

    sget-object v3, Lcom/oculus/horizon/notifications/core/NotificationType;->OC_DEVELOPER_CREATED:Lcom/oculus/horizon/notifications/core/NotificationType;

    if-ne v0, v3, :cond_1

    .line 422
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$000(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v3

    sget-object v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 423
    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/api/NotificationMedium;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 424
    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getApplicationGroupingID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 425
    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getUUID()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v7, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 426
    invoke-virtual {v7}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getApplicationGroupingID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$700(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 422
    :goto_0
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportDevNotificationsPreferenceChangeFromFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 427
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-virtual {v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getApplicationGroupingID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$800(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Ljava/lang/String;)V

    .line 436
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 426
    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$000(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v3

    sget-object v0, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 431
    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/api/NotificationMedium;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$notifOptOutType:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 433
    invoke-virtual {v5}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getUUID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v7, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$notifOptOutType:Ljava/util/ArrayList;

    .line 434
    invoke-static {v6, v7}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$900(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 430
    :goto_2
    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationsPreferenceChangeFromFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 435
    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$4;->val$notifOptOutType:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$1000(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 434
    goto :goto_2
.end method
