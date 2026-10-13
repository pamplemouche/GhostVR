.class Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;
.super Ljava/lang/Object;
.source "NotificationsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->setupNotificationOnClickEvent(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

.field final synthetic val$contentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/PendingIntent;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iput-object p2, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;->val$contentIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-static {v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$000(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oculus/vrshell/panels/ViewState;->handleOnClick(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;)V

    .line 169
    iget-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object v1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;->val$contentIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$100(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;Landroid/app/PendingIntent;)V

    .line 173
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$1;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    iget-object v0, v0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->this$0:Lcom/oculus/panelapp/notifications/NotificationsListAdapter;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter;->access$200(Lcom/oculus/panelapp/notifications/NotificationsListAdapter;I)V

    :cond_0
    return-void
.end method
