.class Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;
.super Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.source "NotificationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/core/NotificationBuilder;->showNotificationWithCircularImage(Ljava/lang/String;ILandroidx/core/app/NotificationCompat$Builder;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

.field final synthetic val$notifBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic val$notificationId:I

.field final synthetic val$notificationTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/core/NotificationBuilder;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object p3, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notificationTag:Ljava/lang/String;

    iput p4, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notificationId:I

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->access$100(Lcom/oculus/horizon/notifications/core/NotificationBuilder;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notificationTag:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notificationId:I

    iget-object v3, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 337
    invoke-static {}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load picture for notification"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method protected onNewResultImpl(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    invoke-static {v1}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->access$000(Lcom/oculus/horizon/notifications/core/NotificationBuilder;)Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->this$0:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->access$100(Lcom/oculus/horizon/notifications/core/NotificationBuilder;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notificationTag:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notificationId:I

    iget-object v3, p0, Lcom/oculus/horizon/notifications/core/NotificationBuilder$2;->val$notifBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 332
    return-void
.end method
