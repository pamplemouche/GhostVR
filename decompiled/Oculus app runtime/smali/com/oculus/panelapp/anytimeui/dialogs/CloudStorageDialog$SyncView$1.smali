.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView$1;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "CloudStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->onInflated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    return-void
.end method
