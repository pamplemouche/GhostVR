.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.source "AnytimeUISettingsButtonBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_UPDATE_INTERVAL_MILLIS:I = 0xfa

.field private static final SLIDER_MAX_VALUE:I = 0xff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrightnessSettingSliderOnQuestGK:Z

.field private mBrightnessSliderControlsView:Landroid/view/ViewGroup;

.field private mBrightnessValue:I

.field private mLastBrightnessUpdateTimeMillis:J

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSettingsContentObserver:Landroid/database/ContentObserver;

.field private mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

.field private mStartVolumeValue:I

.field private final mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeSliderControlsView:Landroid/view/ViewGroup;

.field private mVolumeValue:I

.field private mVolumeValueBeforeMute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object p2, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->NONE:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    .line 42
    new-instance p2, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$1;

    new-instance v0, Landroid/os/Handler;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSettingsContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 53
    invoke-virtual {p2, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    new-instance p2, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$2;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$2;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;IZZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->onSliderChanged(IZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mStartVolumeValue:I

    return p0
.end method

.method static synthetic access$202(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mStartVolumeValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValue:I

    return p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessValue:I

    return p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    return-void
.end method

.method private onSliderChanged(IZZ)V
    .locals 4

    if-eqz p2, :cond_3

    .line 277
    sget-object p2, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$5;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISettingsButtonBarView$SliderMode:[I

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 301
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->TAG:Ljava/lang/String;

    const-string p2, "Slider changed unexpectedly!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessValue:I

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    if-nez p3, :cond_1

    .line 285
    iget-wide v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mLastBrightnessUpdateTimeMillis:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0xfa

    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    .line 288
    :cond_1
    iget-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessValue:I

    invoke-virtual {p3, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBrightness(I)V

    .line 289
    iput-wide p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mLastBrightnessUpdateTimeMillis:J

    goto :goto_0

    .line 295
    :cond_2
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValue:I

    .line 296
    iget p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValue:I

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setVolume(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V
    .locals 6

    .line 308
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_brightness:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 309
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_volume:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->VOLUME:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    if-eq p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetVolumeLayerEnabled(Z)V

    .line 316
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 317
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 320
    :cond_1
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    .line 321
    sget-object v2, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->NONE:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    const/16 v4, 0x8

    if-ne p1, v2, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->showBarButtons()V

    .line 325
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeSliderControlsView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSliderControlsView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p1, 0x2

    .line 330
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setShowDividers(I)V

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 333
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 334
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 336
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    :cond_3
    sget-object v2, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->BRIGHTNESS:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    if-ne p1, v2, :cond_4

    .line 340
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSliderControlsView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSliderControlsView:Landroid/view/ViewGroup;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->brightness_slider_controls_seekbar:I

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iget v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessValue:I

    .line 344
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    .line 346
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeSliderControlsView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeSliderControlsView:Landroid/view/ViewGroup;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->volume_slider_controls_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iget v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValue:I

    .line 349
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 354
    :goto_2
    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setShowDividers(I)V

    :goto_3
    return-void
.end method

.method private setVolume(I)V
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 363
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 364
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    mul-float p1, p1, v2

    .line 365
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x0

    .line 366
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private showBarButtons()V
    .locals 4

    .line 153
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_volume:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_recenter:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isWifiEditable:Z

    if-eqz v0, :cond_0

    .line 157
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_wifi:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isSeeAllEnabled:Z

    if-eqz v0, :cond_1

    .line 161
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_all:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isAdminPinEnabled:Z

    if-eqz v0, :cond_2

    .line 165
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_enterprise_admin_pin:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isManagedLauncherButtonEnabled:Z

    if-eqz v0, :cond_3

    .line 169
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_managed_launcher:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGuardianAware()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isPassthroughButtonEnabled:Z

    if-eqz v0, :cond_4

    .line 175
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_passthrough:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isGuardianButtonEnabled:Z

    if-eqz v0, :cond_5

    .line 177
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_guardian_setup:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    sget-object v2, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 183
    iget-boolean v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSettingSliderOnQuestGK:Z

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_8

    .line 185
    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_brightness:I

    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v2, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_DOGFOODING_UPDATE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_dogfooding:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 3

    .line 110
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 112
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_BRIGHTNESS_SETTINGS_SLIDER_ON_QUEST:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 113
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSettingSliderOnQuestGK:Z

    .line 115
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->showBarButtons()V

    .line 117
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$4;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$4;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)V

    .line 126
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->volume_slider_controls:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeSliderControlsView:Landroid/view/ViewGroup;

    .line 127
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeSliderControlsView:Landroid/view/ViewGroup;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->close_slider_button:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeSliderControlsView:Landroid/view/ViewGroup;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->volume_slider_controls_seekbar:I

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0xff

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 133
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->brightness_slider_controls:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSliderControlsView:Landroid/view/ViewGroup;

    .line 136
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSliderControlsView:Landroid/view/ViewGroup;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->close_slider_button:I

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessSliderControlsView:Landroid/view/ViewGroup;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->brightness_slider_controls_seekbar:I

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 142
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 143
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->updateVolume()V

    return-void
.end method

.method protected onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 3

    .line 234
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 238
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_all:I

    const-string v2, ""

    if-eq v0, v1, :cond_8

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_guardian_setup:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_brightness:I

    if-ne v0, v1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->NONE:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    if-ne p1, v0, :cond_1

    .line 244
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->BRIGHTNESS:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    goto :goto_1

    .line 247
    :cond_1
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->NONE:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    goto :goto_1

    .line 249
    :cond_2
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_volume:I

    if-ne v0, v1, :cond_5

    .line 250
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->NONE:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    if-ne p1, v0, :cond_3

    .line 252
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->VOLUME:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    goto :goto_1

    .line 255
    :cond_3
    iget p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValue:I

    if-nez p1, :cond_4

    .line 256
    iget p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValueBeforeMute:I

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setVolume(I)V

    goto :goto_1

    .line 258
    :cond_4
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValueBeforeMute:I

    const/4 p1, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setVolume(I)V

    goto :goto_1

    .line 263
    :cond_5
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_recenter:I

    if-ne v0, v1, :cond_6

    .line 264
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionReorient()V

    goto :goto_1

    .line 265
    :cond_6
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->settings_detail_dogfooding:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_DOGFOODING_UPDATE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 266
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v0, "com.oculus.vrshell/com.oculus.panelapp.dogfood.DogfoodPanelService"

    invoke-virtual {p1, v0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_7
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    goto :goto_1

    .line 240
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 224
    invoke-super {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 227
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 228
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->NONE:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    :cond_0
    return-void
.end method

.method public updateBrightness(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mBrightnessValue:I

    .line 197
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    return-void
.end method

.method public updateVolume()V
    .locals 5

    .line 202
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 204
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 205
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v1, v2

    int-to-float v3, v0

    div-float/2addr v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 212
    :goto_0
    iget v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValue:I

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    int-to-float v0, v0

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, v2, :cond_1

    mul-float v1, v1, v4

    float-to-int v0, v1

    .line 215
    iput v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mVolumeValue:I

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mSliderMode:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->setSliderMode(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    return-void
.end method
