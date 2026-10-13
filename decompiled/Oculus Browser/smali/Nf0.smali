.class public LNf0;
.super LN10;
.source "PG"


# static fields
.field public static I:Z = true


# instance fields
.field public final G:LMf0;

.field public final H:LJf0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LMf0;Lbd0;Z)V
    .locals 2

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3}, LN10;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p2, p0, LNf0;->G:LMf0;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x50

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz p4, :cond_0

    const/16 p3, 0x90

    goto :goto_0

    :cond_0
    const/16 p3, 0x68

    .line 5
    :goto_0
    invoke-static {p1}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object p4

    int-to-float p3, p3

    .line 6
    iget p4, p4, Lcd1;->d:F

    mul-float p3, p3, p4

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    .line 7
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p2, LKf0;

    invoke-direct {p2, p0}, LKf0;-><init>(LNf0;)V

    .line 10
    new-instance p3, LJf0;

    new-instance p4, LLf0;

    invoke-direct {p4, p0}, LLf0;-><init>(LNf0;)V

    invoke-direct {p3, p1, p2, p4}, LJf0;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lvf0;)V

    iput-object p3, p0, LNf0;->H:LJf0;

    .line 11
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x1

    invoke-direct {p1, v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LN10;->a(Z)V

    return-void
.end method

.method public final synthetic b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-super {p0, v0}, LN10;->a(Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, LN10;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object p1, p0, LNf0;->G:LMf0;

    check-cast p1, Lsf0;

    .line 4
    iget-object v1, p1, Lsf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    .line 6
    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwf0;

    .line 7
    iget-object v3, p1, Lsf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-interface {v2, v3, v0}, Lwf0;->a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;F)V

    goto :goto_1

    :cond_1
    return-void
.end method
