.class Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$2;
.super Ljava/lang/Object;
.source "BrowserChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel Pressed, isUpdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
