.class public Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;
.super Landroid/widget/LinearLayout;
.source "CustomPrivacyNuxSetting.java"


# instance fields
.field private mHeader:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mRightArrow:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    sget v1, Lcom/oculus/horizon/R$layout;->widget_privacy_nux_custom_setting:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget v0, Lcom/oculus/horizon/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mIcon:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mTitle:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->header:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mHeader:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mSubtitle:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->right_arrow:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mRightArrow:Landroid/widget/ImageView;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setOrientation(I)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setIcon(I)V

    .line 62
    sget v0, Lcom/oculus/horizon/R$drawable;->pressable_item_dark_background:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v0, Lcom/oculus/horizon/R$styleable;->CustomPrivacyNuxSetting:[I

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomPrivacyNuxSetting_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomPrivacyNuxSetting_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setHeader(Ljava/lang/CharSequence;)V

    .line 74
    :cond_2
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomPrivacyNuxSetting_sidePadding:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    sget v1, Lcom/oculus/horizon/R$styleable;->CustomPrivacyNuxSetting_sidePadding:I

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 75
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setSidePadding(I)V

    .line 78
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public setClickable(Z)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 86
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mRightArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSidePadding(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 99
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {p1}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mSubtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
