.class Lcom/oculus/horizon/notifications/core/NotificationBuilder$3;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/core/NotificationBuilder;->showVrOnlyNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/core/NotificationBuilder;I)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$3;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    iput p2, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$3;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$3;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    iget v1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$3;->val$notificationId:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->cancelNotification(I)V

    .line 485
    return-void
.end method
