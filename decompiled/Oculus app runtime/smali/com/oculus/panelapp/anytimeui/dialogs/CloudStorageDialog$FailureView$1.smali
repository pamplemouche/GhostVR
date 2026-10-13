.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView$1;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "CloudStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;->onInflated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    return-void
.end method
