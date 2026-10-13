.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;
.super Ljava/lang/Object;
.source "CloudStorageDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->onResult(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

.field final synthetic val$result:Lcom/oculus/cloudstoragehelper/CloudStorageResult;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->val$result:Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->access$602(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;->val$result:Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V

    return-void
.end method
