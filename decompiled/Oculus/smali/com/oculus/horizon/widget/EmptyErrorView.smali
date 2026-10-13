.class public Lcom/oculus/horizon/widget/EmptyErrorView;
.super Landroid/widget/FrameLayout;
.source "EmptyErrorView.java"


# instance fields
.field private mButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/widget/EmptyErrorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/widget/EmptyErrorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 40
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p1, v0}, Lcom/oculus/horizon/util/SizeUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v0

    .line 41
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->setPadding(IIII)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    sget v1, Lcom/oculus/horizon/R$layout;->widget_empty_error_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->empty_error_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/EmptyErrorView;->mButton:Landroid/widget/TextView;

    .line 48
    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v0, Lcom/oculus/horizon/R$styleable;->EmptyErrorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 57
    sget v0, Lcom/oculus/horizon/R$id;->empty_error_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    sget v2, Lcom/oculus/horizon/R$styleable;->EmptyErrorView_iconSrc:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 59
    if-eq v2, v3, :cond_2

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    sget v2, Lcom/oculus/horizon/R$styleable;->EmptyErrorView_iconHeight:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    :cond_3
    sget v0, Lcom/oculus/horizon/R$id;->empty_error_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    sget v2, Lcom/oculus/horizon/R$styleable;->EmptyErrorView_titleText:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v0, Lcom/oculus/horizon/R$id;->empty_error_description:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    sget v2, Lcom/oculus/horizon/R$styleable;->EmptyErrorView_descriptionText:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v0, Lcom/oculus/horizon/R$styleable;->EmptyErrorView_buttonText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    iget-object v2, p0, Lcom/oculus/horizon/widget/EmptyErrorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/widget/EmptyErrorView;->mButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/widget/EmptyErrorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
