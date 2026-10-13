.class Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$1;
.super Lcom/oculus/vrcast/VrCastController$VrCastCallback;
.source "LocalStreamStopFromDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;

    invoke-direct {p0}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindServiceFailed()V
    .locals 0

    return-void
.end method

.method public onBindServiceSucceeded(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method public onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamStopFromDeviceDialog;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method public onDevicesFound(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRemoteServiceDied()V
    .locals 0

    return-void
.end method
