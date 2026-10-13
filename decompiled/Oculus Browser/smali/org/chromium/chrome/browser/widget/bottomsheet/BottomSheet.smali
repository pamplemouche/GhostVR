.class public Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements LxQ0;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final A:F

.field public final B:I

.field public C:Landroid/view/ViewGroup;

.field public D:LyQ0;

.field public E:Landroid/animation/ValueAnimator;

.field public F:I

.field public G:I

.field public H:F

.field public I:F

.field public J:I

.field public K:I

.field public L:LrU;

.field public M:Lbd0;

.field public N:LsQ0;

.field public O:Landroid/view/View;

.field public P:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

.field public Q:F

.field public R:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

.field public S:Landroid/view/View;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:I

.field public final w:Landroid/view/animation/Interpolator;

.field public final x:LWT;

.field public final y:Landroid/graphics/Rect;

.field public final z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->w:Landroid/view/animation/Interpolator;

    .line 3
    new-instance p2, LWT;

    invoke-direct {p2}, LWT;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->y:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 5
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->z:[I

    const/high16 p2, -0x40800000    # -1.0f

    .line 6
    iput p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->H:F

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070069

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->A:F

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07006b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    .line 11
    new-instance p2, LyQ0;

    invoke-direct {p2, p1, p0}, LyQ0;-><init>(Landroid/content/Context;LxQ0;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->D:LyQ0;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->T:Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;FI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(FI)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LsQ0;->q()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->j()F

    move-result v0

    :goto_1
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final a(I)F
    .locals 4

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    invoke-interface {v0}, LsQ0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    .line 106
    invoke-interface {v0}, LsQ0;->m()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->f()V

    .line 108
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->H:F

    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->g()F

    move-result v0

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state: "

    invoke-static {v1, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    if-gtz p1, :cond_3

    goto :goto_0

    .line 112
    :cond_3
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz p1, :cond_4

    invoke-interface {p1}, LsQ0;->i()F

    move-result v1

    :cond_4
    cmpg-float p1, v1, v0

    if-gez p1, :cond_5

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->j()F

    move-result v0

    .line 114
    :cond_7
    :goto_0
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    return v0
.end method

.method public final a(FF)I
    .locals 7

    .line 115
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->h()I

    move-result p1

    return p1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->c()F

    move-result v0

    const/4 v1, 0x3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 117
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 118
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->h()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->h()I

    move-result v4

    move v5, v0

    :goto_1
    if-gt v4, v1, :cond_8

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v3, :cond_6

    .line 120
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->l()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    .line 121
    :cond_6
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_7

    .line 122
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_7

    goto :goto_3

    :cond_7
    move v5, v0

    move v0, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    move v4, v0

    move v0, v5

    .line 123
    :goto_3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result v1

    .line 124
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result v3

    sub-float/2addr v3, v1

    if-eqz v2, :cond_9

    const v2, 0x3e99999a    # 0.3f

    goto :goto_4

    :cond_9
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_4
    if-gez p2, :cond_a

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float v2, p2, v2

    :cond_a
    sub-float/2addr p1, v1

    div-float/2addr p1, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_b

    return v4

    :cond_b
    return v0
.end method

.method public final a(FI)V
    .locals 8

    .line 14
    iput p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    .line 15
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->i()F

    move-result p1

    add-float/2addr p1, v0

    .line 16
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-static {p1, v0}, LEO0;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 19
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float p1, p1

    const/4 v0, 0x0

    mul-float p1, p1, v0

    .line 20
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 21
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->C:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 22
    :cond_1
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 23
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->C:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->h()I

    move-result p1

    .line 25
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->l()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 26
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-nez v1, :cond_3

    .line 27
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    iget v3, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    if-eq v1, v3, :cond_3

    const/4 p1, 0x1

    .line 28
    :cond_3
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result p1

    .line 29
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    .line 30
    invoke-static {v1, p1}, LEO0;->a(FF)Z

    move-result v1

    .line 31
    iget v3, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    const/4 v4, 0x0

    cmpg-float v3, v3, p1

    if-gez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 32
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->l()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 33
    :goto_2
    iget-boolean v6, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    if-nez v3, :cond_6

    if-nez v1, :cond_6

    if-eqz v5, :cond_a

    .line 34
    :cond_6
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-nez p1, :cond_7

    goto/16 :goto_7

    .line 35
    :cond_7
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    .line 36
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->M:Lbd0;

    .line 37
    iget-object p1, p1, Lbd0;->x:LOc0;

    .line 38
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->W:I

    invoke-virtual {p1, v1}, LOc0;->a(I)V

    .line 39
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LuQ0;

    invoke-interface {v1, p2}, LuQ0;->c(I)V

    goto :goto_3

    .line 40
    :cond_8
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz p1, :cond_9

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    .line 43
    invoke-interface {p2}, LsQ0;->j()I

    move-result p2

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 45
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 46
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 48
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 49
    :cond_a
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-nez v1, :cond_11

    .line 50
    iget v3, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    if-eqz v3, :cond_11

    .line 51
    iget v3, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    cmpl-float p1, v3, p1

    if-lez p1, :cond_11

    if-eqz v1, :cond_b

    goto :goto_7

    .line 52
    :cond_b
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    .line 53
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->n()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 54
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->L:LrU;

    if-eqz p1, :cond_c

    invoke-interface {p1}, LrU;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_4

    :cond_c
    move-object p1, v7

    .line 55
    :goto_4
    invoke-static {p1, v2, v4}, LgH0;->a(Lorg/chromium/chrome/browser/tab/Tab;IZ)V

    .line 56
    :cond_d
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->M:Lbd0;

    .line 57
    iget-object p1, p1, Lbd0;->x:LOc0;

    .line 58
    invoke-virtual {p1}, LOc0;->d()I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->W:I

    .line 59
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->L:LrU;

    if-eqz p1, :cond_e

    invoke-interface {p1}, LrU;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lorg/chromium/chrome/browser/tab/Tab;

    :cond_e
    if-nez v7, :cond_f

    goto :goto_5

    .line 60
    :cond_f
    iget-object p1, v7, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez p1, :cond_10

    goto :goto_5

    .line 61
    :cond_10
    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    .line 62
    invoke-interface {p1}, LX01;->f()V

    .line 63
    :goto_5
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LuQ0;

    invoke-interface {v1, p2}, LuQ0;->a(I)V

    goto :goto_6

    .line 64
    :cond_11
    :goto_7
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    .line 65
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->i()F

    move-result p2

    sub-float/2addr p1, p2

    .line 66
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_12

    iget p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->Q:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_12

    goto/16 :goto_d

    .line 67
    :cond_12
    iget p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    if-lez p2, :cond_13

    int-to-float p2, p2

    div-float p2, p1, p2

    goto :goto_8

    :cond_13
    const/4 p2, 0x0

    .line 68
    :goto_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->g()F

    move-result v1

    sub-float/2addr v1, v0

    cmpl-float v3, v1, v0

    if-nez v3, :cond_14

    const/4 p2, 0x0

    goto :goto_9

    :cond_14
    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    invoke-static {p2, v0, v1}, LEO0;->a(FFF)F

    move-result p2

    .line 70
    :goto_9
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_15

    .line 71
    iput v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->Q:F

    goto :goto_a

    .line 72
    :cond_15
    invoke-static {p2, v0}, LEO0;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 p2, 0x0

    :cond_16
    iput p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->Q:F

    .line 73
    :goto_a
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuQ0;

    .line 74
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->Q:F

    .line 75
    iget v3, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    .line 76
    invoke-interface {v0, v1, v3}, LuQ0;->a(FF)V

    goto :goto_b

    .line 77
    :cond_17
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->l()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 78
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result p2

    .line 79
    invoke-static {p1, p2}, LEO0;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 80
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LuQ0;

    invoke-interface {p2}, LuQ0;->a()V

    goto :goto_c

    :cond_18
    :goto_d
    return-void
.end method

.method public a(FZ)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->e()V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 83
    iget p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    sub-float/2addr p2, p1

    neg-float p2, p2

    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(FF)I

    move-result p1

    .line 85
    invoke-virtual {p0, p1, v0, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZI)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    .line 86
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->b(I)V

    .line 87
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(FI)V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZI)V

    return-void
.end method

.method public a(IZI)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x3

    .line 90
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    .line 91
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->e()V

    if-eqz p2, :cond_2

    .line 92
    iget p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    if-eq p1, p2, :cond_2

    .line 93
    iput p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    new-array p2, v1, [F

    .line 94
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    const/4 v2, 0x0

    aput v1, p2, v2

    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result v2

    aput v2, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xda

    .line 96
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object p2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    new-instance v1, LqQ0;

    invoke-direct {v1, p0, p1, p3}, LqQ0;-><init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;II)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    new-instance p2, LrQ0;

    invoke-direct {p2, p0, p3}, LrQ0;-><init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->b(I)V

    .line 101
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result p1

    invoke-virtual {p0, p1, p3}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(FI)V

    .line 103
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->b(I)V

    const/4 p1, -0x1

    .line 104
    iput p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 125
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    .line 127
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->R:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->z:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->z:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->R:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_4

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->i()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-nez p1, :cond_3

    .line 6
    invoke-static {}, LuO0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->y:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->k()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->y:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    cmpl-float p1, v3, p1

    if-lez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    return v0
.end method

.method public final b(I)V
    .locals 2

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(FF)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZ)V

    return-void

    .line 5
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_5

    .line 6
    :cond_2
    iget p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    if-ne p1, v1, :cond_3

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    .line 8
    invoke-interface {p1}, LsQ0;->k()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    .line 10
    invoke-interface {p1}, LsQ0;->g()I

    move-result p1

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    .line 16
    invoke-interface {v0}, LsQ0;->h()I

    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    .line 19
    invoke-interface {v0}, LsQ0;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ". "

    .line 20
    invoke-static {p1, v0}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1301c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 24
    :cond_5
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuQ0;

    .line 25
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    invoke-interface {v0, v1}, LuQ0;->b(I)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public c()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->g()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LsQ0;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->f()V

    .line 4
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->H:F

    iget v2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LsQ0;->d()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->H:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    invoke-interface {v0}, LsQ0;->f()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->F:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 3
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    const/high16 v3, -0x80000000

    .line 4
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    invoke-interface {v0}, LsQ0;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->H:F

    return-void
.end method

.method public g()F
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LsQ0;->m()F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 3
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :cond_2
    return v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, LsQ0;->q()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->l()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final i()F
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LsQ0;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->j()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->M:Lbd0;

    .line 4
    iget v1, v1, Lbd0;->K:F

    mul-float v0, v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()F
    .locals 4

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LsQ0;->n()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    invoke-interface {v0}, LsQ0;->n()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->k()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->F:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    const/high16 v3, -0x80000000

    .line 10
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 13
    :cond_3
    :goto_0
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LsQ0;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    invoke-interface {v0}, LsQ0;->e()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->S:Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LsQ0;->n()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->M:Lbd0;

    if-eqz v0, :cond_1

    .line 2
    iget v0, v0, Lbd0;->H:I

    if-gtz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->R:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final o()Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    iget v1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v2, 0x3f400000    # 0.75f

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->A:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LsQ0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->T:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->O:Landroid/view/View;

    if-nez v0, :cond_1

    const v0, 0x7f0b01cf

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->O:Landroid/view/View;

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->O:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->n()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->D:LyQ0;

    .line 7
    iget-object v1, v0, LyQ0;->w:Landroid/view/GestureDetector;

    .line 8
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v2, v3, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    iget-boolean p1, v0, LyQ0;->z:Z

    return p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 1
    iput p1, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->H:F

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    add-int/2addr p2, v0

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LsQ0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->T:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->n()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->D:LyQ0;

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget-object v3, v0, LyQ0;->w:Landroid/view/GestureDetector;

    .line 6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    :cond_2
    iget-boolean v3, v0, LyQ0;->z:Z

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 12
    :cond_3
    iput-boolean v2, v0, LyQ0;->z:Z

    .line 13
    iget-object p1, v0, LyQ0;->y:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 14
    iget-object p1, v0, LyQ0;->x:LxQ0;

    invoke-interface {p1}, LxQ0;->b()F

    move-result p1

    iget-object v2, v0, LyQ0;->y:Landroid/view/VelocityTracker;

    .line 15
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x435a0000    # 218.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 16
    iget-object p1, v0, LyQ0;->x:LxQ0;

    .line 17
    invoke-interface {p1}, LxQ0;->a()F

    move-result v3

    iget-object v0, v0, LyQ0;->x:LxQ0;

    .line 18
    invoke-interface {v0}, LxQ0;->c()F

    move-result v0

    .line 19
    invoke-static {v2, v3, v0}, LEO0;->a(FFF)F

    move-result v0

    .line 20
    invoke-interface {p1, v0, v1}, LxQ0;->a(FZ)V

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x0

    .line 21
    throw p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
