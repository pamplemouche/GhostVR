.class Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog$1;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "LocalStreamStartFromDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->inflateOldDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStartFromDeviceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
