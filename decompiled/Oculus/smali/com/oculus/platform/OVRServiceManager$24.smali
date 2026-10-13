.class Lcom/oculus/platform/OVRServiceManager$24;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->launchOverlays(Ljava/lang/String;Landroid/os/Bundle;IJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$messageType:I

.field final synthetic val$overlaysType:Ljava/lang/String;

.field final synthetic val$requestID:J

.field final synthetic val$returnComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Landroid/os/Bundle;Ljava/lang/String;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    .locals 1

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$24;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$extras:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$overlaysType:Ljava/lang/String;

    iput p4, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$messageType:I

    iput-wide p5, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$requestID:J

    iput-object p7, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$returnComponent:Landroid/content/ComponentName;

    iput-object p8, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oculus.vrshell.home"

    .line 1518
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.oculus.vrshell.home.START_RENDERING_OVERLAY"

    .line 1519
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1521
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1522
    const-string v1, "overlays_type"

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$overlaysType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    const-string v1, "platform_message_type"

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$messageType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    const-string v1, "platform_request_id"

    iget-wide v2, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$requestID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const-string v1, "from_pkg"

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$returnComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1526
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "sdk_deeplink"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$24;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$1100(Lcom/oculus/platform/OVRServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1528
    const-string v1, "launchOverlays intent URI"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$24;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$24;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->access$1200(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    .line 1533
    return-void
.end method
