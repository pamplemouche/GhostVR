.class Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;
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

.field final synthetic val$action:Landroid/app/Notification$Action;

.field final synthetic val$notif:Landroid/app/Notification;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Landroid/app/Notification$Action;Landroid/service/notification/StatusBarNotification;Landroid/app/Notification;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$action:Landroid/app/Notification$Action;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$notif:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 196
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$action:Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 197
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {p1, v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logNotificationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$action:Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$200(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;Landroid/app/PendingIntent;)V

    .line 199
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$notif:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$300(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/notifications/NotificationDataSetService;->removeNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
