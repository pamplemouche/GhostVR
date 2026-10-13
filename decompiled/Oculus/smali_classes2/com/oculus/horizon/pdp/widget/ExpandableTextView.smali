.class public Lcom/oculus/horizon/pdp/widget/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.java"


# instance fields
.field private mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExpandIcon:Landroid/view/View;

.field private mIsCollapsed:Z

.field private mMaxLines:I

.field private mNeedsMeasure:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mIsCollapsed:Z

    .line 23
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mNeedsMeasure:Z

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mIsCollapsed:Z

    .line 23
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mNeedsMeasure:Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mIsCollapsed:Z

    .line 23
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mNeedsMeasure:Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/widget/ExpandableTextView;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->onClick()V

    return-void
.end method

.method private getCollapseOrExpandAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 10

    .prologue
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    iget-object v3, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    const-string v4, "maxLines"

    new-array v5, v9, [I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    .line 129
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    :goto_0
    aput v0, v5, v7

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mMaxLines:I

    .line 130
    :goto_1
    aput v0, v5, v8

    .line 126
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mExpandIcon:Landroid/view/View;

    const-string v5, "rotation"

    new-array v6, v9, [F

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    aput v0, v6, v7

    if-eqz p1, :cond_3

    :goto_3
    aput v2, v6, v8

    .line 132
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 135
    new-array v2, v9, [Landroid/animation/Animator;

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 137
    return-object v1

    .line 129
    :cond_0
    iget v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mMaxLines:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 131
    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-array v0, v3, [I

    const v1, 0x1010153

    aput v1, v0, v2

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const v1, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mMaxLines:I

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    :cond_0
    invoke-virtual {p0, v3}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->setOrientation(I)V

    .line 57
    new-instance v0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView$1;-><init>(Lcom/oculus/horizon/pdp/widget/ExpandableTextView;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method private onClick()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mIsCollapsed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mIsCollapsed:Z

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mIsCollapsed:Z

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->getCollapseOrExpandAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 122
    :cond_1
    return-void

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 70
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    .line 71
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mExpandIcon:Landroid/view/View;

    .line 72
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 76
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mNeedsMeasure:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    iput-boolean v2, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mNeedsMeasure:Z

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mExpandIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mMaxLines:I

    if-le v0, v1, :cond_1

    .line 90
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mIsCollapsed:Z

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mExpandIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 100
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mNeedsMeasure:Z

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
