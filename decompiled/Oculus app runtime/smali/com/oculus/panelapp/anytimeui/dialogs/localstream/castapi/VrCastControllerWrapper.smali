.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;
.super Lcom/oculus/vrcast/VrCastController$VrCastCallback;
.source "VrCastControllerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/oculus/vrcast/VrCastController$VrCastCallback;

.field private final mCastController:Lcom/oculus/vrcast/VrCastController;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrcast/VrCastController$VrCastCallback;Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCallback:Lcom/oculus/vrcast/VrCastController$VrCastCallback;

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance p1, Lcom/oculus/vrcast/VrCastController;

    invoke-direct {p1, p2, p0}, Lcom/oculus/vrcast/VrCastController;-><init>(Landroid/content/Context;Lcom/oculus/vrcast/VrCastController$VrCastCallback;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCastController:Lcom/oculus/vrcast/VrCastController;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDeviceStateUpdated$4$VrCastControllerWrapper(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCallback:Lcom/oculus/vrcast/VrCastController$VrCastCallback;

    invoke-virtual {v0, p1}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;->onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method public synthetic lambda$onDevicesFound$3$VrCastControllerWrapper(Ljava/util/List;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCallback:Lcom/oculus/vrcast/VrCastController$VrCastCallback;

    invoke-virtual {v0, p1}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;->onDevicesFound(Ljava/util/List;)V

    return-void
.end method

.method public onBindServiceFailed()V
    .locals 2

    .line 48
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onBindServiceFailed() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBindServiceSucceeded(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindServiceSucceeded() called with: device = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCallback:Lcom/oculus/vrcast/VrCastController$VrCastCallback;

    invoke-virtual {v0, p1}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;->onBindServiceSucceeded(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method

.method public onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 3

    .line 36
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStateUpdated() called with: device = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$Up15WpSKKTttY6SCY0p78EIVQiw;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$Up15WpSKKTttY6SCY0p78EIVQiw;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDevicesFound(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDevicesFound() called with: devices = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$B2kquMzbH6LQMVieHOP1XsJH1rY;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$B2kquMzbH6LQMVieHOP1XsJH1rY;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoteServiceDied()V
    .locals 2

    .line 53
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onRemoteServiceDied() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startCast(Ljava/lang/String;)V
    .locals 3

    .line 57
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCast() called with: deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCastController:Lcom/oculus/vrcast/VrCastController;

    invoke-virtual {v0, p1}, Lcom/oculus/vrcast/VrCastController;->startCast(Ljava/lang/String;)V

    return-void
.end method

.method public startDiscovery()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCastController:Lcom/oculus/vrcast/VrCastController;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController;->startDiscovery()V

    return-void
.end method

.method public unbind()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->mCastController:Lcom/oculus/vrcast/VrCastController;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController;->unbindVrCastService()V

    return-void
.end method
