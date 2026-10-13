.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView$1;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "CloudStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->onInflated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_LOCAL:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    return-void
.end method

.method public onMiddle()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_REMOTE:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;)V

    return-void
.end method
