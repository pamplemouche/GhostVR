.class Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;
.super Ljava/lang/Object;
.source "NotificationsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupDismissButton(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iput-object p2, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-static {v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$000(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oculus/vrshell/panels/ViewState;->handleOnClick(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;)V

    .line 261
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object v0, v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->this$0:Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->access$200(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;I)V

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object p1, p1, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->this$0:Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object v0, v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->this$0:Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    .line 266
    invoke-static {v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->access$400(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;)Lcom/oculus/panelapp/notifications/NotificationsView;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/panelapp/notifications/NotificationsView;->mPanelApp:Lcom/oculus/panelapp/notifications/NotificationsPanelApp;

    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$4;->val$sbn:Landroid/service/notification/StatusBarNotification;

    .line 268
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->access$500(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oculus_hmd_notification_feed_item_dismissed"

    .line 265
    invoke-static {p1, v0, v2, v1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->access$600(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;Lcom/oculus/panelapp/notifications/NotificationsPanelApp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
