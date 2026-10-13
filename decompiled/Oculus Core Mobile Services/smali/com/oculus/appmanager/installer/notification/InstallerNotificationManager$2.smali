.class Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$2;
.super Ljava/lang/Object;
.source "InstallerNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->setInstallFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

.field final synthetic val$app:Lcom/oculus/library/model/App;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$2;->this$0:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$2;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 183
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$2;->this$0:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    .line 184
    invoke-static {v0}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->access$000(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$2;->this$0:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    .line 185
    invoke-static {v1}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->access$000(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->notifications_install_failed_message:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$2;->val$app:Lcom/oculus/library/model/App;

    iget-object v5, v5, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    return-void
.end method
