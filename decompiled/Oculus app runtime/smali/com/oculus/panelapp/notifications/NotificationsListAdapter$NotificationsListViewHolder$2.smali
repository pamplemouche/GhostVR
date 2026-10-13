.class Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$2;
.super Ljava/lang/Object;
.source "NotificationsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$2;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder$2;->this$1:Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;

    invoke-static {v0}, Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;->access$000(Lcom/oculus/panelapp/notifications/NotificationsListAdapter$NotificationsListViewHolder;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/oculus/vrshell/panels/ViewState;->handleOnHover(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method
