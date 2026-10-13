.class Lcom/oculus/platform/OVRServiceManager$23;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

.field final synthetic val$deeplinkUri:Landroid/net/Uri;

.field final synthetic val$returnComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Landroid/net/Uri;Landroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    .locals 0

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$23;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$23;->val$deeplinkUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$23;->val$returnComponent:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/oculus/platform/OVRServiceManager$23;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 1485
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.vrshell"

    const-string v3, "com.oculus.vrshell.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.oculus.vrshell.home/.SystemUtilitiesService"

    .line 1488
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1489
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$23;->val$deeplinkUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const-string v1, "intent_pkg"

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$23;->val$returnComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    const-string v1, "deeplinkToSystemUtilities intent URI"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$23;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$1100(Lcom/oculus/platform/OVRServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1498
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$23;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$23;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->access$1200(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :goto_0
    return-void

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error launching deeplink intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1501
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$23;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$23;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$800(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0
.end method
