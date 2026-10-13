.class Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;
.super Ljava/lang/Object;
.source "StandardNotificationViewBinder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->createMenu(Lcom/oculus/horizon/feed/view/StoryViewHolder;Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;)V
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
    .line 277
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iput-object p2, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    iput-object p3, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$viewHolder:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$000(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v3

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 281
    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-virtual {v5}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getUUID()Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-virtual {v3, v4, v0, v5}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationItemMenuOptionClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget v0, Lcom/oculus/horizon/R$id;->mark_unread:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$300(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/notifications/NotificationsMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 284
    invoke-virtual {v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_BUT_UNREAD:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    new-instance v4, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$1;

    invoke-direct {v4, p0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$1;-><init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;)V

    .line 283
    invoke-virtual {v0, v1, v3, v4}, Lcom/oculus/horizon/notifications/NotificationsMethods;->setNotificationSeenState(Ljava/lang/String;Lcom/oculus/horizon/notifications/api/NotificationSeenState;Lretrofit/Callback;)V

    move v0, v2

    .line 369
    :goto_0
    return v0

    .line 307
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->mark_read:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 308
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$300(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;)Lcom/oculus/horizon/notifications/NotificationsMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 309
    invoke-virtual {v1}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->SEEN_AND_READ:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    new-instance v4, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;

    invoke-direct {v4, p0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$2;-><init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;)V

    .line 308
    invoke-virtual {v0, v1, v3, v4}, Lcom/oculus/horizon/notifications/NotificationsMethods;->setNotificationSeenState(Ljava/lang/String;Lcom/oculus/horizon/notifications/api/NotificationSeenState;Lretrofit/Callback;)V

    move v0, v2

    .line 331
    goto :goto_0

    .line 332
    :cond_1
    sget v0, Lcom/oculus/horizon/R$id;->unsubscribe:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 333
    iget-object v3, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 334
    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getNotificationOptOutType()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$500(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 337
    invoke-virtual {v0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getType()Lcom/oculus/horizon/notifications/core/NotificationType;

    move-result-object v0

    sget-object v4, Lcom/oculus/horizon/notifications/core/NotificationType;->OC_DEVELOPER_CREATED:Lcom/oculus/horizon/notifications/core/NotificationType;

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->mContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$string;->notifications_developer_unsubscribe_popup_title:I

    .line 338
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_1
    iget-object v4, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    .line 342
    invoke-virtual {v4}, Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;->getType()Lcom/oculus/horizon/notifications/core/NotificationType;

    move-result-object v4

    sget-object v5, Lcom/oculus/horizon/notifications/core/NotificationType;->OC_DEVELOPER_CREATED:Lcom/oculus/horizon/notifications/core/NotificationType;

    if-ne v4, v5, :cond_3

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/horizon/R$string;->notifications_developer_unsubscribe_popup_message:I

    .line 343
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    :goto_2
    new-instance v3, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    iget-object v4, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v4, v4, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->notifications_options_unsubscribe:I

    new-instance v3, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$3;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$3;-><init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;)V

    .line 352
    invoke-virtual {v0, v1, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    const/4 v3, 0x0

    .line 361
    invoke-virtual {v0, v1, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    move v0, v2

    .line 364
    goto/16 :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->mContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$string;->notifications_unsubscribe_popup_title:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 339
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 343
    :cond_3
    iget-object v4, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v4, v4, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->mContext:Landroid/content/Context;

    sget v5, Lcom/oculus/horizon/R$string;->notifications_unsubscribe_popup_message:I

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v1

    .line 345
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 365
    :cond_4
    sget v0, Lcom/oculus/horizon/R$id;->subscribe:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 366
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$600(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;)V

    move v0, v2

    .line 367
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 369
    goto/16 :goto_0
.end method
