.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;
.source "AnytimeUIDeviceInfoBarView.java"


# static fields
.field private static final DRAWABLE_ICON_BLUETOOTH_CONNECTED:Ljava/lang/String; = "anytime_status_bluetooth_connected"

.field private static final DRAWABLE_ICON_BLUETOOTH_ON:Ljava/lang/String; = "anytime_status_bluetooth_on"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneModeIcon:Landroid/view/View;

.field private mBluetoothIcon:Landroid/view/View;

.field private mBugReportIcon:Landroid/view/View;

.field private mCellSignalIcon:Landroid/view/View;

.field private mClockTextView:Landroid/widget/TextView;

.field private mControllerBatteryContainer:Landroid/widget/LinearLayout;

.field private mControllerBatteryIcon:Landroid/view/View;

.field private mControllerBatteryTextView:Landroid/widget/TextView;

.field private mControllerLeftBatteryContainer:Landroid/widget/LinearLayout;

.field private mControllerLeftBatteryIcon:Landroid/view/View;

.field private mControllerRightBatteryContainer:Landroid/widget/LinearLayout;

.field private mControllerRightBatteryIcon:Landroid/view/View;

.field private mDebugPanelIcon:Landroid/view/View;

.field private mDeviceBatteryIcon:Landroid/view/View;

.field private mDeviceBatteryTextView:Landroid/widget/TextView;

.field private mDoNotDisturbIcon:Landroid/view/View;

.field private mGuardian3DofButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field private mGuardian3dofGKEnabled:Z

.field private mGuardianStatusRoomscaleButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field private mGuardianStatusStationaryButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field private mLeaveAdminModeButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field private mMicrophoneIcon:Landroid/view/View;

.field private mNightShiftIcon:Landroid/view/View;

.field private mScreenLockIcon:Landroid/view/View;

.field private mTooltipGKEnabled:Z

.field private mWifiIcon:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getBatteryChargePercent(F)Ljava/lang/String;
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-string p1, "alert"

    goto :goto_0

    :cond_0
    const v0, 0x3e19999a    # 0.15f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const-string p1, "0"

    goto :goto_0

    :cond_1
    const v0, 0x3eb33333    # 0.35f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const-string p1, "25"

    goto :goto_0

    :cond_2
    const v0, 0x3f266666    # 0.65f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    const-string p1, "50"

    goto :goto_0

    :cond_3
    const v0, 0x3f59999a    # 0.85f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    const-string p1, "75"

    goto :goto_0

    :cond_4
    const-string p1, "100"

    :goto_0
    return-object p1
.end method

.method private getDeviceBatteryIconStringId(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "anytime_status_device_battery_charge_charging"

    return-object p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string p1, "anytime_status_device_battery_charge_100"

    return-object p1

    :cond_1
    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "anytime_status_device_battery_charge_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 422
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getBatteryChargePercent(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "anytime_status_device_battery_charge_unknown"

    return-object p1
.end method

.method private getDeviceBatteryText(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "100%"

    return-object p1

    .line 409
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getPercentageString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDeviceBatteryTooltipText(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 435
    sget p1, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_headset_battery_charging_battery_saver_tooltip:I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 438
    sget p1, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_headset_battery_charging_tooltip:I

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 440
    sget p1, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_headset_battery_saver_tooltip:I

    goto :goto_1

    .line 442
    :cond_3
    sget p1, Lcom/oculus/panelapp/anytimeui/R$string;->anytime_headset_battery_tooltip:I

    .line 445
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGuardianStatusButton(Z)Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;
    .locals 0

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusRoomscaleButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusStationaryButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    :goto_0
    return-object p1
.end method

.method private getGuardianStatusIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 261
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->anytime_status_guardian_roomscale:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->anytime_status_guardian_stationary:I

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getLCONBatteryChargeIconPostfix(F)Ljava/lang/String;
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const-string p1, "empty"

    return-object p1

    :cond_0
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    const-string p1, "low"

    return-object p1

    :cond_1
    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_2

    const-string p1, "medium"

    return-object p1

    :cond_2
    const-string p1, "high"

    return-object p1
.end method

.method private getPercentageString(F)Ljava/lang/String;
    .locals 3

    .line 463
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPercentageString(II)Ljava/lang/String;
    .locals 0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 455
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getPercentageString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private initializeBatteryViews()V
    .locals 1

    .line 107
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_device_battery_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDeviceBatteryIcon:Landroid/view/View;

    .line 108
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_device_battery_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDeviceBatteryTextView:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_controller_battery_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerBatteryIcon:Landroid/view/View;

    .line 112
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_controller_battery_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerBatteryTextView:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_controller_battery_container:I

    .line 114
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerBatteryContainer:Landroid/widget/LinearLayout;

    .line 117
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_controller_left_battery_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerLeftBatteryIcon:Landroid/view/View;

    .line 118
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_controller_left_battery_container:I

    .line 119
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerLeftBatteryContainer:Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_controller_right_battery_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerRightBatteryIcon:Landroid/view/View;

    .line 123
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_controller_right_battery_container:I

    .line 124
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerRightBatteryContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private updateControllerBatteryViews(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 364
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 374
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "drawable"

    .line 373
    invoke-virtual {p1, p4, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 375
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    .line 379
    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateLCONControllerBatteryViews(Landroid/view/View;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 389
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    .line 391
    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 393
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    .line 397
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 1

    .line 28
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_wifi_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mWifiIcon:Landroid/view/View;

    .line 29
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_cell_signal_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mCellSignalIcon:Landroid/view/View;

    .line 30
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_bluetooth_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mBluetoothIcon:Landroid/view/View;

    .line 31
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_airplane_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mAirplaneModeIcon:Landroid/view/View;

    .line 32
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_do_not_disturb_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDoNotDisturbIcon:Landroid/view/View;

    .line 33
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_clock_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mClockTextView:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_debug_panel_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDebugPanelIcon:Landroid/view/View;

    .line 35
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_bug_report_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mBugReportIcon:Landroid/view/View;

    .line 36
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_microphone_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mMicrophoneIcon:Landroid/view/View;

    .line 37
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_night_shift_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mNightShiftIcon:Landroid/view/View;

    .line 38
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_lock_screen_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mScreenLockIcon:Landroid/view/View;

    .line 39
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_admin_mode_toggle:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mLeaveAdminModeButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 40
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_guardian_roomscale_button:I

    .line 41
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusRoomscaleButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 42
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_guardian_stationary_button:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusStationaryButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 44
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_guardian_3dof_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3DofButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 46
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->initializeBatteryViews()V

    .line 50
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 52
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne p1, v0, :cond_1

    .line 53
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean p1, p1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->areGuardianPillButtonsEnabled:Z

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusRoomscaleButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusStationaryButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_3DOF_MODE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3dofGKEnabled:Z

    .line 68
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3dofGKEnabled:Z

    if-eqz p1, :cond_1

    .line 69
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$2;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$2;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3DofButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TOOLTIPS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mTooltipGKEnabled:Z

    return-void
.end method

.method protected updateAdminModeButton(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mLeaveAdminModeButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mLeaveAdminModeButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateAirplaneModeIndicator(Z)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mAirplaneModeIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateBluetoothIndicator(ZZ)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mBluetoothIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    const-string p1, "anytime_status_bluetooth_connected"

    goto :goto_1

    :cond_1
    const-string p1, "anytime_status_bluetooth_on"

    .line 223
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p2, p1, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 224
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mBluetoothIcon:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected updateBugReportIndicator(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mBugReportIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mBugReportIcon:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateCellularIndicator(ZI)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mCellSignalIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "anytime_status_cell_signal_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 243
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 244
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p2, p1, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 245
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mCellSignalIcon:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public updateControllerBattery(Ljava/lang/String;F)V
    .locals 6

    .line 180
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView$3;->$SwitchMap$com$oculus$vrshell$util$DeviceUtil$DeviceType:[I

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 212
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateControllerBattery() - Unsupported device type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 214
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getPercentageString(F)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerBatteryTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerBatteryIcon:Landroid/view/View;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "anytime_status_controller_battery_charge_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getBatteryChargePercent(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerBatteryContainer:Landroid/widget/LinearLayout;

    move-object v0, p0

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->updateControllerBatteryViews(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_1
    const-string v0, "left"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerLeftBatteryIcon:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anytime_status_controller_left_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getLCONBatteryChargeIconPostfix(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerLeftBatteryContainer:Landroid/widget/LinearLayout;

    .line 186
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->updateLCONControllerBatteryViews(Landroid/view/View;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerRightBatteryIcon:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anytime_status_controller_right_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getLCONBatteryChargeIconPostfix(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mControllerRightBatteryContainer:Landroid/widget/LinearLayout;

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->updateLCONControllerBatteryViews(Landroid/view/View;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    :goto_0
    return-void
.end method

.method protected updateDateTimeIndicator(Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mClockTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mClockTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected updateDebugIndicator(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDebugPanelIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDebugPanelIcon:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateDeviceBatteryIndicator(IIIZ)V
    .locals 2

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getDeviceBatteryText(III)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDeviceBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDeviceBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getDeviceBatteryIconStringId(III)Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 153
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 154
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p3, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 155
    iget-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDeviceBatteryIcon:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p4, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oculus/panelapp/anytimeui/R$color;->oc_orange:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 161
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 162
    iget-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDeviceBatteryIcon:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDeviceBatteryIcon:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 169
    :goto_0
    iget-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mTooltipGKEnabled:Z

    if-eqz p2, :cond_2

    .line 171
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 172
    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getSystemTooltipController()Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    move-result-object p2

    .line 175
    invoke-direct {p0, p1, p4}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getDeviceBatteryTooltipText(IZ)Ljava/lang/String;

    move-result-object p1

    const-string p3, "taskbar_headset_battery_tooltip"

    .line 173
    invoke-virtual {p2, p3, p1}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->setTooltipText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updateDoNotDisturbMode(Z)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mDoNotDisturbIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateGuardianStatus(ZIZ)V
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->areGuardianPillButtonsEnabled:Z

    if-eqz v0, :cond_7

    .line 277
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3dofGKEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3DofButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    const/16 v3, 0x8

    if-eqz p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusRoomscaleButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p3, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardianStatusStationaryButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 283
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->anytime_status_guardian_6dof_disabled:I

    .line 284
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 287
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 289
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3DofButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p2, p1, v0, v0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mGuardian3DofButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    goto :goto_5

    .line 297
    :cond_4
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 299
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getGuardianStatusIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_6

    if-eq p2, v1, :cond_5

    goto :goto_4

    .line 312
    :cond_5
    invoke-static {p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 313
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/oculus/panelapp/anytimeui/R$color;->oc_orange:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_4

    .line 307
    :cond_6
    invoke-static {p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 308
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/oculus/panelapp/anytimeui/R$color;->oc_red_3:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 322
    :goto_4
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getGuardianStatusButton(Z)Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    move-result-object p2

    .line 323
    invoke-virtual {p2, p3, v0, v0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 324
    invoke-virtual {p2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    xor-int/lit8 p2, p1, 0x1

    xor-int/2addr p1, v1

    .line 328
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getGuardianStatusButton(Z)Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    move-result-object p1

    .line 329
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getGuardianStatusIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 330
    invoke-virtual {p1, p2, v0, v0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 332
    invoke-virtual {p1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    :cond_7
    :goto_5
    return-void
.end method

.method protected updateMicrophoneIndicator(Z)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mMicrophoneIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateNightShiftIndicator(Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mNightShiftIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateScreenLockIndicator(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mScreenLockIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mScreenLockIcon:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateWifiIndicator(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anytime_status_wifi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    .line 132
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 134
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mWifiIcon:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->mWifiIcon:Landroid/view/View;

    sget p2, Lcom/oculus/panelapp/anytimeui/R$drawable;->anytime_status_wifi_off:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
