.class Lcom/oculus/auth/service/AuthManager$9;
.super Landroid/os/ResultReceiver;
.source "AuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/AuthManager;->performVerifyPin(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/service/AuthManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$receiverPassedInOriginalIntent:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/AuthManager;Landroid/os/Handler;Landroid/os/ResultReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$9;->this$0:Lcom/oculus/auth/service/AuthManager;

    iput-object p3, p0, Lcom/oculus/auth/service/AuthManager$9;->val$receiverPassedInOriginalIntent:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/oculus/auth/service/AuthManager$9;->val$intent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 633
    const-string v0, "AuthManager"

    const-string v1, "performVerifyPin: onReceiveResult: resultCode %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    if-ne p1, v3, :cond_1

    .line 636
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$9;->val$receiverPassedInOriginalIntent:Landroid/os/ResultReceiver;

    invoke-static {v0, v3}, Lcom/oculus/auth/service/AuthManager;->access$300(Landroid/os/ResultReceiver;I)V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    if-ne p1, v4, :cond_3

    .line 639
    if-eqz p2, :cond_2

    const-string v0, "error_code"

    .line 640
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 643
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$9;->val$intent:Landroid/content/Intent;

    const-string v1, "nonce"

    const-string v2, "nonce"

    .line 644
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$9;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "receiver"

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$9;->val$receiverPassedInOriginalIntent:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$9;->this$0:Lcom/oculus/auth/service/AuthManager;

    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$9;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/oculus/auth/service/AuthManager;->performVerifyLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$9;->val$receiverPassedInOriginalIntent:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$9;->val$receiverPassedInOriginalIntent:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 656
    :cond_3
    const-string v0, "AuthManager"

    const-string v1, "performVerifyPin: Unknown result code %d"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
