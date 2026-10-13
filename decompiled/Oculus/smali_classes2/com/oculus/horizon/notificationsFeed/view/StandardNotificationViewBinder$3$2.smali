.class Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;
.super Ljava/lang/Object;
.source "StandardNotificationViewBinder.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/oculus/horizon/notifications/api/NotificationReadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 4

    .prologue
    .line 324
    invoke-static {}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification %s failed to be marked as SEEN_AND_READ: %s"

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v2, v2, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 326
    invoke-virtual {v2}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    sget v1, Lcom/oculus/horizon/R$string;->notifications_feed_options_error:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$400(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;I)V

    .line 329
    return-void
.end method

.method public success(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;Lretrofit/client/Response;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_AND_READ:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->setSeenState(Lcom/oculus/horizon/notifications/api/NotificationSeenState;)V

    .line 316
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setBackgroundColor(I)V

    .line 317
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$color;->oculus_black_6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationReadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;->success(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;Lretrofit/client/Response;)V

    return-void
.end method
