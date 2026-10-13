.class Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;
.super Ljava/lang/Object;
.source "StandardNotificationViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

.field final synthetic val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

.field final synthetic val$feedNotificationType:Lcom/oculus/horizon/notifications/core/NotificationType;

.field final synthetic val$referrer:Ljava/lang/String;

.field final synthetic val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationType;Lcom/oculus/horizon/feed/view/StoryViewHolder;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iput-object p2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    iput-object p3, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$referrer:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotificationType:Lcom/oculus/horizon/notifications/core/NotificationType;

    iput-object p5, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$000(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 137
    invoke-virtual {v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 138
    invoke-virtual {v2}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getUUID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 139
    invoke-virtual {v3}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getType()Lcom/oculus/horizon/notifications/core/NotificationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/core/NotificationType;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$referrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 141
    invoke-virtual {v5}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getApplicationGroupingID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 142
    invoke-virtual {v6}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getNotificationRequestID()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationFeedItemClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$300(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/notifications/NotificationsMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 144
    invoke-virtual {v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_AND_READ:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    new-instance v3, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$1;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$1;-><init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;)V

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/NotificationsMethods;->setNotificationSeenState(Ljava/lang/String;Lcom/oculus/horizon/notifications/api/NotificationSeenState;Lretrofit/Callback;)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotificationType:Lcom/oculus/horizon/notifications/core/NotificationType;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->shouldExcludeFromMarkingRead(Lcom/oculus/horizon/notifications/core/NotificationType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$300(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/notifications/NotificationsMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 167
    invoke-virtual {v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$2;-><init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;)V

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/notifications/NotificationsMethods;->markNotificationAsRead(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method
