.class Lcom/oculus/horizon/notifications/core/NotificationBuilder$1;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/core/NotificationBuilder;->buildAndShowNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Landroid/net/Uri;ZLcom/oculus/horizon/notifications/core/NotificationsProperties;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

.field final synthetic val$notifID:I

.field final synthetic val$notificationTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/core/NotificationBuilder;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$1;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$1;->val$notificationTag:Ljava/lang/String;

    iput p3, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$1;->val$notifID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$1;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    iget-object v1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$1;->val$notificationTag:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$1;->val$notifID:I

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->cancelNotification(Ljava/lang/String;I)V

    .line 281
    return-void
.end method
