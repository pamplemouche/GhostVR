.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$1;
.super Ljava/lang/Object;
.source "CloudStorageDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->startTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    const-string v1, "No response received from service (timeout)."

    .line 330
    invoke-static {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->forFailure(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    move-result-object v1

    .line 329
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->onResult(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V

    return-void
.end method
