.class Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$1;
.super Ljava/lang/Object;
.source "HomeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Quit Pressed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/logging/NUXLogging;->logAborted(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    const-string v0, "quit"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$200()V

    return-void
.end method
