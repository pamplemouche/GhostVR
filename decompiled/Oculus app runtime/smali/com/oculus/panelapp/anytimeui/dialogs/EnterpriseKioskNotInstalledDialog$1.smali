.class Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;
.super Ljava/util/TimerTask;
.source "EnterpriseKioskNotInstalledDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;

.field final synthetic val$dialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->val$dialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
