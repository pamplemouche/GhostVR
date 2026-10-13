.class public final Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;
.source "AnytimeBarStatusViewV2.java"


# static fields
.field private static final DRAWABLE_ICON_BLUETOOTH_CONNECTED:Ljava/lang/String; = "anytime_status_bluetooth_connected"

.field private static final DRAWABLE_ICON_BLUETOOTH_ON:Ljava/lang/String; = "anytime_status_bluetooth_on"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    return-void
.end method

.method protected updateAdminModeButton(ZLandroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public updateAirplaneModeIndicator(Z)V
    .locals 1

    .line 90
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_airplane_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 91
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateBluetoothIndicator(ZZ)V
    .locals 3

    .line 74
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_bluetooth_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 75
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    const-string p1, "anytime_status_bluetooth_connected"

    goto :goto_1

    :cond_1
    const-string p1, "anytime_status_bluetooth_on"

    .line 78
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p2, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected updateBugReportIndicator(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 33
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_bug_report_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 34
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateCellularIndicator(ZI)V
    .locals 3

    .line 95
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_cell_signal_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 96
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anytime_status_cell_signal_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 102
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p2, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 103
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public updateControllerBattery(Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method protected updateDateTimeIndicator(Ljava/lang/String;)V
    .locals 2

    .line 83
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_clock_text_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected updateDebugIndicator(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 39
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_debug_panel_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 40
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateDeviceBatteryIndicator(IIIZ)V
    .locals 0

    return-void
.end method

.method public updateDoNotDisturbMode(Z)V
    .locals 1

    .line 117
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_do_not_disturb_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 118
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateMicrophoneIndicator(Z)V
    .locals 1

    .line 107
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_microphone_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 108
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateNightShiftIndicator(Z)V
    .locals 1

    .line 112
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_night_shift_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 113
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateScreenLockIndicator(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 45
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_lock_screen_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 46
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateWifiIndicator(ZI)V
    .locals 3

    .line 51
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_wifi_icon_v2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anytime_status_wifi_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarStatusViewV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    .line 56
    invoke-virtual {p1, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 60
    :cond_0
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->anytime_status_wifi_off:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
