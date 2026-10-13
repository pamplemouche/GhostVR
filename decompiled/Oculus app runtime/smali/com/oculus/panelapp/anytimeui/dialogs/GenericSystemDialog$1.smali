.class Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "GenericSystemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getAcceptResult()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "accept"

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getCancelResult()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "cancel"

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method public onGearClicked()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getGearResult()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "gear"

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method public onMiddle()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getMiddleResult()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "middle"

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
