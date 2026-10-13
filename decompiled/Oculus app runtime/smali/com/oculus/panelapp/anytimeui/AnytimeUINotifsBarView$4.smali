.class Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;
.super Ljava/lang/Object;
.source "AnytimeUINotifsBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->inflateCTAViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

.field final synthetic val$notifExtras:Ljava/lang/String;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->val$notifExtras:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 217
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->val$notifExtras:Ljava/lang/String;

    const-string v1, "oculus_hmd_notification_feed_item_dismissed"

    invoke-static {p1, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dismiss"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logNotificationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$300(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$4;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/notifications/NotificationDataSetService;->removeNotification(Ljava/lang/String;)V

    return-void
.end method
