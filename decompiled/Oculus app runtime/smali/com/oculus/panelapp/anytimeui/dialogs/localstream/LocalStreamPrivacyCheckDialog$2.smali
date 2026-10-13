.class Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "LocalStreamPrivacyCheckDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    .line 92
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "allow_and_disable_privacy_check"

    goto :goto_0

    :cond_0
    const-string v1, "allow"

    .line 91
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "deny"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
