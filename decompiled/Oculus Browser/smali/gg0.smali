.class public Lgg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_9

    .line 1
    :cond_0
    iget-object p1, p0, Lgg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    .line 2
    iget-object p2, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->M:Log0;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Log0;->a()V

    .line 3
    :cond_1
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->N:Log0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Log0;->a()V

    .line 4
    :cond_2
    iget-object p1, p0, Lgg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    .line 5
    iget-boolean p2, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->S:Z

    if-eqz p2, :cond_8

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->b()I

    move-result p5

    if-ge p3, p5, :cond_4

    .line 8
    invoke-virtual {p1, p3}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object p5

    if-nez p5, :cond_3

    const/4 p5, 0x0

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, p3}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object p5

    .line 10
    iget-object p5, p5, Lv0;->e:Landroid/view/View;

    .line 11
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    iget p6, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->p0:I

    add-int/2addr p5, p6

    iget p6, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->q0:I

    add-int/2addr p5, p6

    :goto_1
    add-int/2addr p4, p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p3

    sub-int p3, p4, p3

    if-lez p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    const/4 p4, 0x1

    new-array p5, p4, [I

    .line 13
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result p6

    if-ne p6, p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    aput p3, p5, p2

    const-string p3, "scrollX"

    .line 14
    invoke-static {p1, p3, p5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->o0:Landroid/animation/ObjectAnimator;

    const-wide/16 p4, 0x3e8

    .line 15
    invoke-virtual {p3, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 16
    iget-object p3, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->o0:Landroid/animation/ObjectAnimator;

    const-wide/16 p4, 0x12c

    invoke-virtual {p3, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 17
    iget-object p3, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->o0:Landroid/animation/ObjectAnimator;

    sget-object p4, LNM0;->a:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object p3, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->o0:Landroid/animation/ObjectAnimator;

    new-instance p4, Lpg0;

    invoke-direct {p4, p1}, Lpg0;-><init>(Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;)V

    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->o0:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 20
    :goto_3
    iget-object p1, p0, Lgg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    .line 21
    iput-boolean p2, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->S:Z

    return-void

    .line 22
    :cond_8
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    .line 23
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->e()V

    :cond_9
    return-void
.end method
