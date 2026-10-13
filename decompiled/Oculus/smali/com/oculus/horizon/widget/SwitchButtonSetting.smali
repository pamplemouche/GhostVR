.class public Lcom/oculus/horizon/widget/SwitchButtonSetting;
.super Lcom/oculus/horizon/widget/CustomSetting;
.source "SwitchButtonSetting.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;,
        Lcom/oculus/horizon/widget/SwitchButtonSetting$OnCheckedChangeListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBroadcasting:Z

.field private mOnCheckedChangeListener:Lcom/oculus/horizon/widget/SwitchButtonSetting$OnCheckedChangeListener;

.field private mStatus:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

.field private mToggleOnDrawableResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/oculus/horizon/R$attr;->switchButtonSettingStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/widget/CustomSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget v0, Lcom/oculus/horizon/R$drawable;->toggle_switch_on:I

    iput v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mToggleOnDrawableResId:I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    sget-object v0, Lcom/oculus/horizon/R$styleable;->SwitchButtonSetting:[I

    .line 49
    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    sget v1, Lcom/oculus/horizon/R$styleable;->SwitchButtonSetting_toggleOnDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget v1, Lcom/oculus/horizon/R$styleable;->SwitchButtonSetting_toggleOnDrawable:I

    sget v2, Lcom/oculus/horizon/R$drawable;->toggle_switch_on:I

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mToggleOnDrawableResId:I

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    sget-object v0, Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;->UNCHECKED:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    iput-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mStatus:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mRightIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/horizon/R$drawable;->toggle_switch_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setClickable(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mStatus:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    sget-object v1, Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;->CHECKED:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mStatus:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    sget-object v1, Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;->LOADING:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->toggle()V

    .line 71
    invoke-super {p0}, Lcom/oculus/horizon/widget/CustomSetting;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    if-eqz p1, :cond_1

    sget-object v0, Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;->CHECKED:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mStatus:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    if-ne v1, v0, :cond_2

    .line 103
    :cond_0
    :goto_1
    return-void

    .line 76
    :cond_1
    sget-object v0, Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;->UNCHECKED:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    goto :goto_0

    .line 82
    :cond_2
    iput-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mStatus:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    .line 83
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mRightIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/horizon/R$drawable;->toggle_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mRightSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mBroadcasting:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mBroadcasting:Z

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mOnCheckedChangeListener:Lcom/oculus/horizon/widget/SwitchButtonSetting$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mOnCheckedChangeListener:Lcom/oculus/horizon/widget/SwitchButtonSetting$OnCheckedChangeListener;

    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/oculus/horizon/widget/SwitchButtonSetting$OnCheckedChangeListener;->onCheckedChanged(Lcom/oculus/horizon/widget/SwitchButtonSetting;Z)V

    .line 102
    :cond_3
    iput-boolean v2, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mBroadcasting:Z

    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mRightIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mToggleOnDrawableResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mRightIcon:Landroid/widget/ImageView;

    sget v1, Lcom/oculus/horizon/R$drawable;->toggle_switch_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public setLoading(Z)V
    .locals 2

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwitchButtonSetting does not support setting loading to false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/widget/CustomSetting;->setLoading(Z)V

    .line 118
    sget-object v0, Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;->LOADING:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    iput-object v0, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mStatus:Lcom/oculus/horizon/widget/SwitchButtonSetting$SwitchButtonStatus;

    .line 119
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchButtonSetting$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oculus/horizon/widget/SwitchButtonSetting;->mOnCheckedChangeListener:Lcom/oculus/horizon/widget/SwitchButtonSetting$OnCheckedChangeListener;

    .line 141
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
