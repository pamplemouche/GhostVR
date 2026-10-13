.class Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;
.super Lcom/oculus/horizon/common/UICallback;
.source "NotificationsFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->fetchNotificationsFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$1100(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    sget-object v1, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->LOADED:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$1200(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_generic_title:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    :goto_0
    invoke-static {}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    sget-object v1, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->ERROR:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$1300(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;)V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$300(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeedProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeedProvider;->get(Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;)Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeed;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$400(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeed;->getNotifications()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->setData(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mStandardNotificationViewBinder:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, p1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;->viewer:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer;->user:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;->notification_opt_out_preferences_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->setOptOutTypes(Ljava/util/ArrayList;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mStandardNotificationViewBinder:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, p1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;->viewer:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer;->user:Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse$Viewer$User;->dev_notif_opt_out_preferences_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->setDevOptOutTypes(Ljava/util/ArrayList;)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    sget-object v1, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->LOADED:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$500(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$600(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$700(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->getData()Ljava/util/List;

    move-result-object v2

    .line 135
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$800(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/FeedItem;

    invoke-interface {v0}, Lcom/oculus/horizon/feedbuilder/FeedItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$900(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->access$1002(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    :cond_1
    return-void

    .line 135
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 121
    check-cast p1, Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;->onResponse(Lcom/oculus/horizon/notificationsFeed/api/NotificationsFeedResponse;)V

    return-void
.end method
