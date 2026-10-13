.class Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$1;
.super Ljava/lang/Object;
.source "NotificationsFeedFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$1;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$1;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$000(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$1;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$100(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$1;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$200(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationFeedRefreshed()V

    .line 87
    return-void
.end method
