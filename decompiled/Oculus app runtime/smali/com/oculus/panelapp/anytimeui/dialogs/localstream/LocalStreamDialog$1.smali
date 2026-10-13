.class Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;
.super Lcom/oculus/vrcast/VrCastController$VrCastCallback;
.source "LocalStreamDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;

    invoke-direct {p0}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindServiceFailed()V
    .locals 0

    return-void
.end method

.method public onBindServiceSucceeded(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;->onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method public onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 0

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;)Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->startDiscovery()V

    :cond_0
    return-void
.end method

.method public onDevicesFound(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamDialog;->updateDevicesList(Ljava/util/List;)V

    return-void
.end method

.method public onRemoteServiceDied()V
    .locals 0

    return-void
.end method
