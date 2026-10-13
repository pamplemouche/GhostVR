.class public Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;
.super Landroid/support/design/widget/TabLayout;
.source "PG"


# instance fields
.field public n0:Lv0;

.field public o0:Landroid/animation/ObjectAnimator;

.field public p0:I

.field public q0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, LeS;->M0:[I

    const v1, 0x7f1402f8

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xf

    .line 3
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->q0:I

    iput p2, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->p0:I

    const/16 v0, 0x12

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->p0:I

    .line 5
    iget p2, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->q0:I

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->q0:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lv0;->e:Landroid/view/View;

    .line 4
    check-cast v0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iput-object p2, p1, Lv0;->c:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, Lv0;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lv0;IZ)V
    .locals 1

    .line 8
    iget-object v0, p1, Lv0;->e:Landroid/view/View;

    .line 9
    instance-of v0, v0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    if-eqz v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->a(Lv0;IZ)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Lv0;Z)V
    .locals 1

    .line 12
    iget-object v0, p1, Lv0;->e:Landroid/view/View;

    .line 13
    instance-of v0, v0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->a(Lv0;IZ)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public e()V
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->o0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->n0:Lv0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->n0:Lv0;

    .line 3
    iget-object p1, p1, Lv0;->e:Landroid/view/View;

    .line 4
    instance-of v0, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    .line 6
    iget-object v0, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->w:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->x:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->n0:Lv0;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->e()V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
