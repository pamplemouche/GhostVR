.class Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;
.super Ljava/lang/Object;
.source "NotificationsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupActionButtons(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

.field final synthetic val$action:Landroid/app/Notification$Action;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/Notification$Action;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iput-object p2, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->val$action:Landroid/app/Notification$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-static {v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$000(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oculus/vrshell/panels/ViewState;->handleOnClick(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;)V

    .line 235
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->val$action:Landroid/app/Notification$Action;

    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$100(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/PendingIntent;)V

    .line 239
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->val$action:Landroid/app/Notification$Action;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$300(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/Notification$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$3;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object v0, v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->this$0:Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->access$200(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;I)V

    :cond_0
    return-void
.end method
