.class public Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;
.super Landroid/widget/FrameLayout;
.source "FeatureFlagSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMaximum:D

.field private mMinimum:D

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStyle:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

.field private mTextView:Landroid/widget/TextView;

.field private mType:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget p2, Lcom/oculus/panelapp/debug/R$layout;->debug_feature_flag_seekbar:I

    invoke-static {p1, p2, p0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private updateFormat()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$InputHint:[I

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mStyle:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 129
    iput-wide v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMinimum:D

    .line 130
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mType:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-ne v0, v1, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->updateFormatContinuousInt()V

    goto :goto_0

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->updateFormatContinuousFloat()V

    :goto_0
    return-void
.end method

.method private updateFormatContinuousFloat()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMinimum:D

    .line 144
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method private updateFormatContinuousInt()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMinimum:D

    .line 149
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 6

    .line 70
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$InputHint:[I

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mStyle:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 73
    iget-wide v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMaximum:D

    iget-wide v4, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMinimum:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    add-double/2addr v0, v4

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mType:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    sget-object v3, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-ne v2, v3, :cond_2

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    :cond_2
    return-wide v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 25
    sget v0, Lcom/oculus/panelapp/debug/R$id;->feature_flag_seekbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 26
    sget v0, Lcom/oculus/panelapp/debug/R$id;->feature_flag_seekbar_overlay:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mTextView:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 34
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$SettingType:[I

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mType:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mTextView:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->getValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.3f"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mTextView:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->getValue()D

    move-result-wide v3

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 44
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_2

    .line 45
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setPresets(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    const/4 v0, 0x0

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMinimum:D

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMaximum:D

    .line 119
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->updateFormat()V

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "`values` must contain at least 2 values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "`values` can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStyle(Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mStyle:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    .line 106
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->updateFormat()V

    return-void
.end method

.method public setType(Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mType:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    return-void
.end method

.method public setValue(D)V
    .locals 4

    .line 89
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar$1;->$SwitchMap$com$oculus$panelapp$debug$SettingsIPC$InputHint:[I

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mStyle:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mValues:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-wide v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMinimum:D

    sub-double/2addr p1, v0

    iget-wide v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mMaximum:D

    sub-double/2addr v2, v0

    div-double/2addr p1, v2

    .line 92
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-double v1, v1

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method
