.class public Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;
.super Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;
.source "AnytimeTabletSettingsViewV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_UPDATE_INTERVAL_MILLIS:I = 0xfa

.field private static final SLIDER_MAX_VALUE:I = 0xff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrightnessSeekBar:Landroid/widget/SeekBar;

.field private mCurrentVolume:I

.field private mLastBrightnessUpdateTimeMillis:J

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field private final mSettingsContentObserver:Landroid/database/ContentObserver;

.field private mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$1;

    new-instance v0, Landroid/os/Handler;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$1;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSettingsContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->onUpdateVolume()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;ILcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->onBrightnessSliderChanged(ILcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->onVolumeSliderChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mCurrentVolume:I

    return p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->onButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    return-void
.end method

.method private onBrightnessSliderChanged(ILcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;)V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setBrightness(I)V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 198
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;->FORCE_UPDATE:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$SliderFlag;

    if-eq p2, p1, :cond_0

    iget-wide p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mLastBrightnessUpdateTimeMillis:J

    sub-long p1, v0, p1

    const-wide/16 v2, 0xfa

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->getBrightness()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBrightness(I)V

    .line 201
    iput-wide v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mLastBrightnessUpdateTimeMillis:J

    :cond_1
    return-void
.end method

.method private onButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->updateSelectedButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 130
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    .line 133
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->navigate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onUpdateBrightness()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private onUpdateVolume()V
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 171
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 172
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v1, v2

    int-to-float v3, v0

    div-float/2addr v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 179
    :goto_0
    iget v3, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mCurrentVolume:I

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

    .line 182
    iput v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mCurrentVolume:I

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mCurrentVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private onVolumeSliderChanged(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mCurrentVolume:I

    .line 207
    iget p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mCurrentVolume:I

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->setVolume(I)V

    return-void
.end method

.method private setVolume(I)V
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 215
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 216
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    mul-float p1, p1, v2

    .line 217
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x0

    .line 218
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 62
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 64
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->brightness_slider_controls_seekbar:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    .line 65
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    new-instance p3, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$2;

    invoke-direct {p3, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$2;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)V

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->volume_slider_controls_seekbar:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mVolumeSeekBar:Landroid/widget/SeekBar;

    .line 84
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 85
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mVolumeSeekBar:Landroid/widget/SeekBar;

    new-instance p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$3;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$3;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->wifi_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setVisibility(I)V

    .line 105
    new-instance p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$4;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$4;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)V

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->onUpdateVolume()V

    .line 116
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->onUpdateBrightness()V

    return-void
.end method

.method protected navigate(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x2c

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 161
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateSelectedButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    .line 141
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->applyActiveState(Landroid/view/View;Z)V

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 145
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setSelected(Z)V

    .line 147
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object p1

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->mSelectedButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {p1, v1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->applyActiveState(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
