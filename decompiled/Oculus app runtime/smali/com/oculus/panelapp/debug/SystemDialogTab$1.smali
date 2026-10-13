.class Lcom/oculus/panelapp/debug/SystemDialogTab$1;
.super Ljava/lang/Object;
.source "SystemDialogTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/SystemDialogTab;->initializeBackButtonDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/SystemDialogTab;

.field final synthetic val$backButtonDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

.field final synthetic val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$1;->this$0:Lcom/oculus/panelapp/debug/SystemDialogTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$1;->val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    iput-object p3, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$1;->val$backButtonDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$1;->val$panelApp:Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/SystemDialogTab$1;->val$backButtonDialog:Lcom/oculus/systemdialog/DialogDefinitionCustom;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionShowSystemDialog(Lcom/oculus/systemdialog/DialogDefinitionBase;)V

    return-void
.end method
