.class public Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NotificationsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/notifications/NotificationsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationsListViewHolder"
.end annotation


# instance fields
.field private final mAcceptButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mAcceptPartyInviteButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mCancelDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mContext:Landroid/content/Context;

.field private final mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mDescription:Landroid/widget/TextView;

.field private final mIcon:Landroid/view/View;

.field private final mInviteCallButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mLaunchContentButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mNotificationContentContainer:Landroid/view/View;

.field private final mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

.field private final mRetryDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mSeeMoreButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mTitle:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field private final mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

.field final synthetic this$0:Lcom/oculus/panelapp/notifications/NotificationsListAdapter;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;Landroid/widget/LinearLayout;Landroid/content/Context;Lcom/oculus/vrshell/panels/ViewState$Listener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->this$0:Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    .line 54
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    iput-object p3, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mView:Landroid/view/View;

    .line 57
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_icon:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mIcon:Landroid/view/View;

    .line 58
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_title:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mTitle:Landroid/widget/TextView;

    .line 59
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_description:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDescription:Landroid/widget/TextView;

    .line 60
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_progress_bar:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    .line 61
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_deny:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 62
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_accept:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mAcceptButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 63
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_invitecall:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mInviteCallButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 64
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_seemore:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mSeeMoreButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 65
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_canceldownload:I

    .line 66
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mCancelDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 67
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_launchcontent:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mLaunchContentButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 68
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_retrydownload:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mRetryDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 69
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_invitecall:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mAcceptPartyInviteButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 70
    sget p1, Lcom/oculus/panelapp/notifications/R$id;->notification_item_content_container:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mNotificationContentContainer:Landroid/view/View;

    .line 71
    iput-object p4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Lcom/oculus/vrshell/panels/ViewState$Listener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mViewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/PendingIntent;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->invokeCTA(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/Notification$Action;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->dismissAfterClick(Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method

.method private dismissAfterClick(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 275
    invoke-static {p1}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isRetryDownloadActionItem(Landroid/app/Notification$Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-static {p1}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isCancelDownloadActionItem(Landroid/app/Notification$Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {p1}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isSeeMoreActionItem(Landroid/app/Notification$Action;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private invokeCTA(Landroid/app/PendingIntent;)V
    .locals 2

    .line 283
    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Launching CTA PendingIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Could not perform CTA:  "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V
    .locals 1
    .param p1    # Lcom/oculus/vrshell/panels/views/ShellButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->clearOnClickListener()V

    const/16 v0, 0x8

    .line 101
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    return-void
.end method

.method private resetButtons()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mAcceptButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mInviteCallButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    .line 92
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mSeeMoreButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mCancelDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mLaunchContentButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    .line 95
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mRetryDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    .line 96
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mAcceptPartyInviteButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButton(Lcom/oculus/vrshell/panels/views/ShellButton;)V

    return-void
.end method

.method private setupActionButtons(Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    .line 196
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 199
    iget-object p1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p1, :cond_a

    .line 201
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    aget-object v3, p1, v2

    const/4 v4, 0x0

    .line 205
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isAcceptActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mAcceptButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    goto :goto_1

    .line 207
    :cond_0
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isDenyActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    goto :goto_1

    .line 209
    :cond_1
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isInviteActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mInviteCallButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    goto :goto_1

    .line 211
    :cond_2
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isSeeMoreActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mSeeMoreButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    goto :goto_1

    .line 213
    :cond_3
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isCancelDownloadActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 214
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mCancelDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    goto :goto_1

    .line 215
    :cond_4
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isLaunchContentActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 216
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mLaunchContentButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    goto :goto_1

    .line 217
    :cond_5
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isRetryDownloadActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 218
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mRetryDownloadButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    goto :goto_1

    .line 219
    :cond_6
    invoke-static {v3}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isAcceptPartyInviteActionItem(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 220
    iget-object v4, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mAcceptPartyInviteButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    :cond_7
    :goto_1
    if-eqz v4, :cond_9

    .line 227
    invoke-virtual {v4}, Lcom/oculus/vrshell/panels/views/ShellButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    .line 228
    invoke-virtual {v4}, Lcom/oculus/vrshell/panels/views/ShellButton;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    .line 229
    :cond_8
    invoke-virtual {v4, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 230
    new-instance v5, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;

    invoke-direct {v5, p0, v3}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;-><init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/Notification$Action;)V

    invoke-virtual {v4, v5}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method private setupDismissButton(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->shouldHideDismiss(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 253
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 254
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDenyButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance v1, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;-><init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setupNotificationIcon(Landroid/app/Notification;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 110
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mIcon:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setupNotificationOnClickEvent(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 160
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 162
    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mNotificationContentContainer:Landroid/view/View;

    new-instance v1, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;-><init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mNotificationContentContainer:Landroid/view/View;

    new-instance v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$2;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$2;-><init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method

.method private setupNotificationProgressBar(Landroid/app/Notification;)V
    .locals 3

    .line 149
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "download_in_progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v2, "progress_bar_ratio"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 151
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setProgressRatio(F)V

    .line 152
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    invoke-virtual {p1, v1}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupNotificationText(Landroid/app/Notification;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, ""

    const-string v3, "android.title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v3, "download_in_progress"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDescription:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 126
    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.bigText"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.textLines"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 135
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 136
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 137
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 138
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindModel(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->resetButtons()V

    .line 77
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupNotificationIcon(Landroid/app/Notification;)V

    .line 80
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupNotificationText(Landroid/app/Notification;)V

    .line 81
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupNotificationProgressBar(Landroid/app/Notification;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupNotificationOnClickEvent(Landroid/service/notification/StatusBarNotification;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupActionButtons(Landroid/service/notification/StatusBarNotification;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupDismissButton(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
