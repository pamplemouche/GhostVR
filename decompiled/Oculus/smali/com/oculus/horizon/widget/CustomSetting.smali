.class public Lcom/oculus/horizon/widget/CustomSetting;
.super Landroid/widget/LinearLayout;
.source "CustomSetting.java"


# instance fields
.field protected mLeftIcon:Landroid/widget/ImageView;

.field protected mRightIcon:Landroid/widget/ImageView;

.field protected mRightSpinner:Landroid/widget/ProgressBar;

.field protected mSubtitle:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/CustomSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/oculus/horizon/R$attr;->customSettingStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/CustomSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomSetting;->setOrientation(I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    sget v1, Lcom/oculus/horizon/R$layout;->widget_custom_setting:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->left_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mLeftIcon:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->right_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightIcon:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mTitle:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/oculus/horizon/R$id;->right_spinner:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightSpinner:Landroid/widget/ProgressBar;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomSetting;->setLeftIcon(I)V

    .line 62
    if-nez p2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/oculus/horizon/R$styleable;->CustomSetting:[I

    .line 67
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setTitle(Ljava/lang/String;)V

    .line 73
    :cond_2
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_titleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_titleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setTitleColor(Landroid/content/res/ColorStateList;)V

    .line 76
    :cond_3
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_titleFontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_titleFontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    :cond_4
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_subtitleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_subtitleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 86
    :cond_5
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_subtitleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_subtitleColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 89
    :cond_6
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_rightIconDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomSetting_rightIconDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setRightIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setRightIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    return-void
.end method


# virtual methods
.method public setClickable(Z)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 109
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method public setLeftIcon(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomSetting;->mLeftIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoading(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mRightSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {p1}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSubtitleColor(I)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    return-void
.end method

.method public setSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 147
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    return-void
.end method
