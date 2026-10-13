.class public Lcom/oculus/panelapp/debug/VrCastManager;
.super Ljava/lang/Object;
.source "VrCastManager.java"

# interfaces
.implements Lcom/oculus/vrcast/VrCastController$VrShellCastCallback;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VrCastManager"


# instance fields
.field private final mCastController:Lcom/oculus/vrcast/VrCastController;

.field private mConnectView:Lcom/oculus/panelapp/debug/VrCastConnectView;

.field private final mContext:Landroid/content/Context;

.field private mDeviceAdapter:Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mContext:Landroid/content/Context;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance p1, Lcom/oculus/vrcast/VrCastController;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/oculus/vrcast/VrCastController;-><init>(Landroid/content/Context;Lcom/oculus/vrcast/VrCastController$VrShellCastCallback;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mCastController:Lcom/oculus/vrcast/VrCastController;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/VrCastManager;)Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mDeviceAdapter:Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/debug/VrCastManager;)Lcom/oculus/panelapp/debug/VrCastConnectView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mConnectView:Lcom/oculus/panelapp/debug/VrCastConnectView;

    return-object p0
.end method


# virtual methods
.method public onBindServiceFailed()V
    .locals 2

    .line 75
    sget-object v0, Lcom/oculus/panelapp/debug/VrCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onBindServiceFailed() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBindServiceSucceeded()V
    .locals 2

    .line 68
    sget-object v0, Lcom/oculus/panelapp/debug/VrCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onBindServiceSucceeded() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 3

    .line 50
    sget-object v0, Lcom/oculus/panelapp/debug/VrCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStateUpdated() called with: device = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/panelapp/debug/VrCastManager$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/debug/VrCastManager$2;-><init>(Lcom/oculus/panelapp/debug/VrCastManager;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

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

    .line 36
    sget-object v0, Lcom/oculus/panelapp/debug/VrCastManager;->TAG:Ljava/lang/String;

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

    .line 38
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/panelapp/debug/VrCastManager$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/debug/VrCastManager$1;-><init>(Lcom/oculus/panelapp/debug/VrCastManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoteServiceDied()V
    .locals 2

    .line 82
    sget-object v0, Lcom/oculus/panelapp/debug/VrCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onRemoteServiceDied() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConnectView(Lcom/oculus/panelapp/debug/VrCastConnectView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mConnectView:Lcom/oculus/panelapp/debug/VrCastConnectView;

    return-void
.end method

.method public setDeviceAdapter(Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mDeviceAdapter:Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

    return-void
.end method

.method public startCast(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mCastController:Lcom/oculus/vrcast/VrCastController;

    iget-object p1, p1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oculus/vrcast/VrCastController;->startCast(Ljava/lang/String;)V

    return-void
.end method

.method public startDiscovery()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mCastController:Lcom/oculus/vrcast/VrCastController;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController;->startDiscovery()V

    return-void
.end method

.method public stopCast(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mCastController:Lcom/oculus/vrcast/VrCastController;

    iget-object p1, p1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oculus/vrcast/VrCastController;->stopCast(Ljava/lang/String;)V

    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mCastController:Lcom/oculus/vrcast/VrCastController;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController;->stopDiscovery()V

    return-void
.end method

.method public unbindVrCastService()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager;->mCastController:Lcom/oculus/vrcast/VrCastController;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController;->unbindVrCastService()V

    return-void
.end method
