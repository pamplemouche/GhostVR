.class Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;
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

.field final synthetic val$contentIntent:Landroid/app/PendingIntent;

.field final synthetic val$notif:Landroid/app/Notification;

.field final synthetic val$notifExtras:Ljava/lang/String;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$notifExtras:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$contentIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$notif:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oculus/vrshell/panels/ViewState;->handleOnClick(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;)V

    .line 150
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logNotificationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$notifExtras:Ljava/lang/String;

    const-string v1, "oculus_hmd_notification_feed_item_clicked"

    invoke-static {p1, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$contentIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$200(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Landroid/app/PendingIntent;)V

    .line 153
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$notif:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$300(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/notifications/NotificationDataSetService;->removeNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
