.class public abstract Lcom/oculus/horizon/widget/QuickPromotionBase;
.super Landroid/widget/LinearLayout;
.source "QuickPromotionBase.java"


# instance fields
.field protected mActionButton:Landroid/widget/Button;

.field protected mDescription:Landroid/widget/TextView;

.field protected mSecondaryButton:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/QuickPromotionBase;->getLayout()I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/QuickPromotionBase;->setOrientation(I)V

    .line 34
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/QuickPromotionBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mTitle:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/QuickPromotionBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mDescription:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/oculus/horizon/R$id;->action_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/QuickPromotionBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mActionButton:Landroid/widget/Button;

    .line 37
    sget v0, Lcom/oculus/horizon/R$id;->dismiss_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/QuickPromotionBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mSecondaryButton:Landroid/widget/TextView;

    .line 39
    if-nez p2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/QuickPromotionBase;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;

    .line 49
    :cond_1
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_descriptionText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_descriptionText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/QuickPromotionBase;->setDescription(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;

    .line 52
    :cond_2
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_actionButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_actionButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/QuickPromotionBase;->setActionButtonText(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;

    .line 55
    :cond_3
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_dismissButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    sget v1, Lcom/oculus/horizon/R$styleable;->QuickPromotionBase_dismissButtonText:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/QuickPromotionBase;->setSecondaryButtonText(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;

    .line 59
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    :cond_5
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/QuickPromotionBase;->bringToFront()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getLayout()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public setActionButtonOnClickActionListener(Landroid/view/View$OnClickListener;)Lcom/oculus/horizon/widget/QuickPromotionBase;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-object p0
.end method

.method public setActionButtonText(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;
    .locals 2

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mActionButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    :goto_0
    return-object p0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-object p0
.end method

.method public setSecondaryButtonOnClickActionListener(Landroid/view/View$OnClickListener;)Lcom/oculus/horizon/widget/QuickPromotionBase;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mSecondaryButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object p0
.end method

.method public setSecondaryButtonText(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;
    .locals 2

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mSecondaryButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_0
    return-object p0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mSecondaryButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oculus/horizon/widget/QuickPromotionBase;
    .locals 2

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :goto_0
    return-object p0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/QuickPromotionBase;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
