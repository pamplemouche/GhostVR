.class Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;
.super Ljava/lang/Object;
.source "PermissionRequestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    const-string v0, "accept"

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionResumeVideo()V

    .line 146
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;)Lcom/oculus/vrshell/ShellPermissions$Permission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellPermissions$Permission;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
