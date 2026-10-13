.class Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;
.super Ljava/lang/Object;
.source "LocalStreamPrivacyCheckDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$layout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;Landroid/os/Handler;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->val$layout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->val$layout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "deny"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->val$layout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->val$layout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamPrivacyCheckDialog$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
