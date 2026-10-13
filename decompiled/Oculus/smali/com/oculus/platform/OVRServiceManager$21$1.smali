.class Lcom/oculus/platform/OVRServiceManager$21$1;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/platform/OVRServiceManager$21;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager$21;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$21$1;->this$1:Lcom/oculus/platform/OVRServiceManager$21;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$21$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1266
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$21$1;->this$1:Lcom/oculus/platform/OVRServiceManager$21;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager$21;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/platform/OVRServiceManager;->access$1100(Lcom/oculus/platform/OVRServiceManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$21$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_0
    return-void

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error launching IAP intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$21$1;->this$1:Lcom/oculus/platform/OVRServiceManager$21;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager$21;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$21$1;->this$1:Lcom/oculus/platform/OVRServiceManager$21;

    iget-object v1, v1, Lcom/oculus/platform/OVRServiceManager$21;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$600(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0
.end method
