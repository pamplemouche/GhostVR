.class Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;
.super Ljava/lang/Object;
.source "EnterpriseKioskNotInstalledDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getCurrentDialog()Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->val$dialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)V

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)V

    :cond_1
    return-void
.end method
