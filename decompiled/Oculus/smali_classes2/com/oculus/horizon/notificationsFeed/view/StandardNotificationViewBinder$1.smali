.class Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;
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

.field final synthetic val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;Lcom/oculus/horizon/feed/view/StoryViewHolder;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iput-object p2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    iput-object p3, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$000(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 99
    invoke-virtual {v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-virtual {v2}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getUUID()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationItemMenuClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$1;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$100(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Lcom/oculus/horizon/feed/view/StoryViewHolder;Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;)V

    .line 101
    return-void
.end method
