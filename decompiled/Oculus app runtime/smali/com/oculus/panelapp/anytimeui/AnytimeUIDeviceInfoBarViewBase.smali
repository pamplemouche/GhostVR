.class public abstract Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;
.super Landroid/widget/LinearLayout;
.source "AnytimeUIDeviceInfoBarViewBase.java"


# static fields
.field protected static final AIRPLANE_MODE_UPDATE_INTERVAL_MILLIS:J = 0x3fcL

.field protected static final BATTERY_UPDATE_INTERVAL_MILLIS:J = 0x5dcL

.field protected static final BLUETOOTH_UPDATE_INTERVAL_MILLIS:J = 0x408L

.field protected static final CELL_SIGNAL_UPDATE_INTERVAL_MILLIS:J = 0x7e1L

.field protected static final DATETIME_UPDATE_INTERVAL_MILLIS:J = 0x3e8L

.field protected static final DEFAULT_MIC_MUTED_STATUS:Z = false

.field protected static final MICROPHONE_UPDATE_INTERVAL_MILLIS:J = 0x539L

.field protected static final NIGHT_SHIFT_MODE_UPDATE_INTERVAL_MILLIS:J = 0x4d2L

.field protected static final NUM_WIFI_LEVELS:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field protected static final WIFI_UPDATE_INTERVAL_MILLIS:J = 0x3e8L


# instance fields
.field protected mBluetoothConnected:Z

.field protected mBluetoothEnabled:Z

.field protected mCellularSignalEverReceived:Z

.field protected mCellularStrength:I

.field protected mLastAirplaneModeUpdateTimeMillis:J

.field protected mLastBluetoothUpdateTimeMillis:J

.field protected mLastCellSignalUpdateTimeMillis:J

.field protected mLastDateTimeUpdateTimeMillis:J

.field protected mLastDeviceBatteryUpdateTimeMillis:J

.field protected mLastMicrophoneUpdateTimeMillis:J

.field protected mLastNightShiftUpdateTimeMillis:J

.field protected mLastWifiUpdateTimeMillis:J

.field protected mNightShiftController:Lcom/oculus/os/NightShiftController;

.field protected mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mSettingsManager:Lcom/oculus/os/SettingsManager;

.field protected final mStandaloneVRHeadset:Z

.field protected final mSupportsLockScreen:Z

.field protected final mSupportsNightShiftController:Z

.field protected final mSupportsSettingsManager:Z

.field protected mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 555
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mBluetoothEnabled:Z

    .line 557
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mBluetoothConnected:Z

    .line 558
    iput p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mCellularStrength:I

    .line 559
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mCellularSignalEverReceived:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oculus.hardware.standalone_vr"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mStandaloneVRHeadset:Z

    .line 62
    sget p1, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsSettingsManager:Z

    .line 63
    sget p1, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v1, 0x5

    if-lt p1, v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsNightShiftController:Z

    .line 64
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mStandaloneVRHeadset:Z

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsLockScreen:Z

    .line 66
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->startBluetoothListener()V

    .line 70
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mStandaloneVRHeadset:Z

    if-nez p1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->startCellularListener()V

    :cond_2
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected checkAndMaybeEnableLockScreenIcon()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/oculus/vrshell/panels/ThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    return-void
.end method

.method public disableDebugIcon()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateDebugIndicator(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public enableDebugIcon()V
    .locals 2

    .line 204
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$4;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$4;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateDebugIndicator(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public enableScreenLockIcon()V
    .locals 2

    .line 222
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$5;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$5;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateScreenLockIndicator(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public frame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 2

    .line 248
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateBluetooth(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateWifi(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateDeviceBattery(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateDateTime(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 253
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsSettingsManager:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.oculus.permission.READ_SETTINGS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateMicrophone(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsNightShiftController:Z

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateNightShift(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 265
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mStandaloneVRHeadset:Z

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateAirplaneMode(Lcom/oculus/vrshell/panels/InputFrame;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateCellular(Lcom/oculus/vrshell/panels/InputFrame;)V

    :cond_2
    return-void
.end method

.method protected initLockScreenIcon()V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsLockScreen:Z

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->isMultiUserEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->checkAndMaybeEnableLockScreenIcon()V

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 3

    .line 77
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 79
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->initializeBluetoothState()V

    .line 81
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean p1, p1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isLeaveAdminModeButtonEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V

    invoke-virtual {p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateAdminModeButton(ZLandroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 97
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Hm"

    goto :goto_0

    :cond_1
    const-string v1, "hm"

    .line 99
    :goto_0
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 102
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsNightShiftController:Z

    if-eqz p1, :cond_2

    .line 103
    new-instance p1, Lcom/oculus/os/NightShiftController;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/oculus/os/NightShiftController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    .line 106
    :cond_2
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSupportsSettingsManager:Z

    if-eqz p1, :cond_3

    .line 107
    new-instance p1, Lcom/oculus/os/SettingsManager;

    invoke-direct {p1}, Lcom/oculus/os/SettingsManager;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    .line 110
    :cond_3
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mStandaloneVRHeadset:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateAirplaneModeIndicator(Z)V

    .line 116
    invoke-virtual {p0, p1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateCellularIndicator(ZI)V

    .line 119
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_DEBUG_PANEL:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->enableDebugIcon()V

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_DOGFOODING_UPDATE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 123
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$2;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V

    invoke-virtual {p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateBugReportIndicator(ZLandroid/view/View$OnClickListener;)V

    .line 162
    :cond_6
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->initLockScreenIcon()V

    return-void
.end method

.method protected initializeBluetoothState()V
    .locals 6

    .line 439
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 440
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_1

    const/16 v4, 0xb

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 444
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->setBluetoothEnabled(Z)V

    const/4 v1, 0x1

    :goto_2
    const/16 v4, 0xa

    if-ge v1, v4, :cond_4

    .line 455
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    if-ne v4, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v2, 0x1

    .line 461
    :cond_4
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->setBluetoothConnected(Z)V

    return-void
.end method

.method protected setBluetoothConnected(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mBluetoothConnected:Z

    return-void
.end method

.method protected setBluetoothEnabled(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mBluetoothEnabled:Z

    return-void
.end method

.method protected setCellularSignalStrength(I)V
    .locals 0

    .line 541
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mCellularStrength:I

    return-void
.end method

.method protected startBluetoothListener()V
    .locals 3

    .line 470
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$6;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$6;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V

    .line 475
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected startCellularListener()V
    .locals 3

    .line 506
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 508
    new-instance v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$7;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$7;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method protected abstract updateAdminModeButton(ZLandroid/view/View$OnClickListener;)V
.end method

.method public updateAirplaneMode(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 357
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 358
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastAirplaneModeUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3fc

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "airplane_mode_on"

    .line 359
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 362
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateAirplaneModeIndicator(Z)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateAirplaneModeIndicator(Z)V

    .line 367
    :goto_0
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastAirplaneModeUpdateTimeMillis:J

    :cond_1
    return-void
.end method

.method protected abstract updateAirplaneModeIndicator(Z)V
.end method

.method public updateBluetooth(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 319
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 320
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastBluetoothUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x408

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 323
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mBluetoothConnected:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 332
    :cond_0
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mStandaloneVRHeadset:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mBluetoothEnabled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 334
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateBluetoothIndicator(ZZ)V

    .line 336
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastBluetoothUpdateTimeMillis:J

    :cond_2
    return-void
.end method

.method protected abstract updateBluetoothIndicator(ZZ)V
.end method

.method protected abstract updateBugReportIndicator(ZLandroid/view/View$OnClickListener;)V
.end method

.method public updateCellular(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 374
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 375
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastCellSignalUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7e1

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    const/4 p1, 0x4

    .line 377
    iget v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mCellularStrength:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 382
    iget-boolean v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mCellularSignalEverReceived:Z

    if-eqz v3, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    .line 383
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 388
    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateCellularIndicator(ZI)V

    .line 390
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastCellSignalUpdateTimeMillis:J

    :cond_1
    return-void
.end method

.method protected abstract updateCellularIndicator(ZI)V
.end method

.method public abstract updateControllerBattery(Ljava/lang/String;F)V
.end method

.method public updateDateTime(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 343
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 344
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastDateTimeUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 347
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateDateTimeIndicator(Ljava/lang/String;)V

    .line 350
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastDateTimeUpdateTimeMillis:J

    :cond_0
    return-void
.end method

.method protected abstract updateDateTimeIndicator(Ljava/lang/String;)V
.end method

.method protected abstract updateDebugIndicator(ZLandroid/view/View$OnClickListener;)V
.end method

.method public updateDeviceBattery(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 296
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 297
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastDeviceBatteryUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v2, -0x1

    const-string v3, "status"

    .line 301
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "level"

    .line 302
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "scale"

    .line 303
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 305
    iget-boolean v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mStandaloneVRHeadset:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mPowerManager:Landroid/os/PowerManager;

    .line 306
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 308
    :goto_0
    invoke-virtual {p0, v3, v4, p1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateDeviceBatteryIndicator(IIIZ)V

    .line 310
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastDeviceBatteryUpdateTimeMillis:J

    :cond_1
    return-void
.end method

.method protected abstract updateDeviceBatteryIndicator(IIIZ)V
.end method

.method public abstract updateDoNotDisturbMode(Z)V
.end method

.method public updateMicrophone(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 397
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 398
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastMicrophoneUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x539

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 399
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const/4 v2, 0x0

    const-string v3, "mic_muted"

    .line 400
    invoke-virtual {p1, v3, v2}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 402
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateMicrophoneIndicator(Z)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateMicrophoneIndicator(Z)V

    .line 407
    :goto_0
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastMicrophoneUpdateTimeMillis:J

    :cond_1
    return-void
.end method

.method protected abstract updateMicrophoneIndicator(Z)V
.end method

.method public updateNightShift(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 414
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 415
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastNightShiftUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4d2

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {p1}, Lcom/oculus/os/NightShiftController;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 418
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateNightShiftIndicator(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateNightShiftIndicator(Z)V

    .line 423
    :goto_0
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastNightShiftUpdateTimeMillis:J

    :cond_1
    return-void
.end method

.method protected abstract updateNightShiftIndicator(Z)V
.end method

.method protected abstract updateScreenLockIndicator(ZLandroid/view/View$OnClickListener;)V
.end method

.method public updateWifi(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 6

    .line 274
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTimeMillis()J

    move-result-wide v0

    .line 275
    iget-wide v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastWifiUpdateTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 281
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 283
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const/4 v2, 0x5

    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 286
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->updateWifiIndicator(ZI)V

    .line 288
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mLastWifiUpdateTimeMillis:J

    :cond_1
    return-void
.end method

.method protected abstract updateWifiIndicator(ZI)V
.end method
