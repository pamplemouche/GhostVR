.class Lcom/oculus/panelapp/debug/SystemDialogTab$8;
.super Ljava/lang/Object;
.source "SystemDialogTab.java"

# interfaces
.implements Lcom/oculus/systemdialog/DialogResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/SystemDialogTab;->setupDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/SystemDialogTab;

.field final synthetic val$nextDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

.field final synthetic val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

.field final synthetic val$previousDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->this$0:Lcom/oculus/panelapp/debug/SystemDialogTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    iput-object p3, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$nextDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    iput-object p4, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$previousDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDialogResult(Lcom/oculus/systemdialog/DialogResult;)Z
    .locals 2

    .line 263
    invoke-virtual {p1}, Lcom/oculus/systemdialog/DialogResult;->getDialogAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "close"

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 266
    iget-object p1, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionHideSystemDialog()V

    return v1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$nextDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    if-eqz v0, :cond_1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object p1, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$nextDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionShowSystemDialog(Lcom/oculus/systemdialog/DialogDefinitionBase;)V

    return v1

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$previousDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    if-eqz v0, :cond_2

    const-string v0, "back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;->val$previousDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionShowSystemDialog(Lcom/oculus/systemdialog/DialogDefinitionBase;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
