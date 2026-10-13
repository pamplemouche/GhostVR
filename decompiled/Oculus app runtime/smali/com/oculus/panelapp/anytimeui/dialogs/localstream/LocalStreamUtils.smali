.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/LocalStreamUtils;
.super Ljava/lang/Object;
.source "LocalStreamUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceTypeText(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->type:Lcom/oculus/vrcast/VrCastController$DeviceType;

    sget-object v0, Lcom/oculus/vrcast/VrCastController$DeviceType;->Chromecast:Lcom/oculus/vrcast/VrCastController$DeviceType;

    if-ne p0, v0, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/oculus/panelapp/anytimeui/R$string;->local_stream_dialog_device_type_chromecast:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/oculus/panelapp/anytimeui/R$string;->local_stream_dialog_device_type_miracast:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImageResourceForDevice(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)I
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->type:Lcom/oculus/vrcast/VrCastController$DeviceType;

    sget-object v0, Lcom/oculus/vrcast/VrCastController$DeviceType;->Chromecast:Lcom/oculus/vrcast/VrCastController$DeviceType;

    if-ne p0, v0, :cond_0

    .line 22
    sget p0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_chromecast:I

    return p0

    .line 24
    :cond_0
    sget p0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_headsetcast:I

    return p0
.end method

.method public static useVrCastingUi(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Z
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    return v1

    .line 17
    :cond_1
    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_VRCAST:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p0

    return p0
.end method
