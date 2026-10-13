.class Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;
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

.field final synthetic val$group:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;->val$group:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 44
    sget-object p1, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_OCULUS:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;->val$group:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 46
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->browser_choice_option_samsung:I

    if-ne v0, v1, :cond_0

    .line 47
    sget-object p1, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_SAMSUNG:Ljava/lang/String;

    .line 50
    :cond_0
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ok Pressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-static {v1, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
