.class Lcom/oculus/horizon/notifications/legacy/OculusNotifications$1;
.super Ljava/lang/Object;
.source "OculusNotifications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->showFriendOnlineNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZIZLcom/oculus/horizon/social/model/PrivacyState;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/legacy/OculusNotifications;I)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$1;->this$0:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    iput p2, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$1;->this$0:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->access$000(Lcom/oculus/horizon/notifications/legacy/OculusNotifications;)Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$1;->val$notificationId:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->cancelNotification(I)V

    .line 347
    return-void
.end method
