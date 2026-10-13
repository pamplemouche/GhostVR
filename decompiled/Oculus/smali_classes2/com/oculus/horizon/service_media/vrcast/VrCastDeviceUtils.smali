.class public Lcom/oculus/horizon/service_media/vrcast/VrCastDeviceUtils;
.super Ljava/lang/Object;
.source "VrCastDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isCasting(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z
    .locals 2

    .prologue
    .line 10
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CASTING:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isConnecting(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 14
    if-nez p0, :cond_1

    .line 18
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTING_TO_PEER:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_INITIATED:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->CONNECTION_SUCCESS:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v2, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->STARTING_SESSION:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
