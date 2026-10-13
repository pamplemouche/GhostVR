.class Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$3;
.super Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.source "InstallerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->requestIconForNotification(Lcom/oculus/library/model/App;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

.field final synthetic val$currentPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$3;->this$0:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$3;->val$currentPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 2
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
    .line 306
    invoke-static {}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to fetch an icon for this notification."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method protected onNewResultImpl(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$3;->this$0:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$3;->val$currentPackage:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->access$100(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method
