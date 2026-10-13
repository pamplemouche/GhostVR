.class Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "NotificationsFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->clearBadges()V
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
.field final synthetic this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$3;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$3;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$3;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$1500(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->updateCount()V

    .line 165
    return-void
.end method
