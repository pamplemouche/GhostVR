.class Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "ServerBasedNotificationsFeedUnseenCountTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->updateCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker$1;->this$0:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse;->viewer:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer;->user:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse;->viewer:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer;->user:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User;->notifications:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User$Notifications;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker$1;->this$0:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->access$100(Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "response.viewer.user or response.viewer.user.notifications was unexpectedly null"

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker$1;->this$0:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    iget-object v1, p1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse;->viewer:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer;->user:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User;->notifications:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User$Notifications;

    iget v1, v1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse$Viewer$User$Notifications;->unseen_count:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->access$202(Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;I)I

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker$1;->this$0:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->access$300(Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker$1;->onResponse(Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedUnseenCountResponse;)V

    return-void
.end method
