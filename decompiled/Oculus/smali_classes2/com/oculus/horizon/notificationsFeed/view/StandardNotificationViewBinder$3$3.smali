.class Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$3;
.super Ljava/lang/Object;
.source "StandardNotificationViewBinder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$3;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$3;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v0, v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->this$0:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3$3;->this$1:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;

    iget-object v1, v1, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder$3;->val$feedNotification:Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;

    invoke-static {v0, v1}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->access$600(Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;Lcom/oculus/horizon/notificationsFeed/model/NotificationItem;)V

    .line 358
    const/4 v0, 0x0

    return v0
.end method
