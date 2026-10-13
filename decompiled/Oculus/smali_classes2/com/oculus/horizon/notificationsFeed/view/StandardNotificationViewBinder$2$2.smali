.class Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$2;
.super Ljava/lang/Object;
.source "StandardNotificationViewBinder.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification %s failed to be marked as read"

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;

    iget-object v2, v2, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 180
    invoke-virtual {v2}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public success(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;Lretrofit/client/Response;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$2;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2;->val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setBackgroundColor(I)V

    .line 173
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 168
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationReadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$2$2;->success(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;Lretrofit/client/Response;)V

    return-void
.end method
