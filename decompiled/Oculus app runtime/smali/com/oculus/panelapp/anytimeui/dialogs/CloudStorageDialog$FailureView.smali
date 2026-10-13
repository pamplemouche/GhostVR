.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;
.super Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;
.source "CloudStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailureView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView<",
        "Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V
    .locals 1

    .line 99
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    .line 100
    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->cloud_storage_dialog_failure:I

    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;I)V

    return-void
.end method


# virtual methods
.method public onInflated()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;->mInflatedView:Landroid/view/View;

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    return-void
.end method
