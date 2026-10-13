.class public Lorg/chromium/chrome/browser/omnibox/status/StatusView;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public A:I

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/view/View;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:I

.field public J:I

.field public K:I

.field public L:Landroid/graphics/Bitmap;

.field public M:Landroid/view/TouchDelegate;

.field public N:LkM0;

.field public O:LLq0;

.field public P:Z

.field public Q:Landroid/graphics/Rect;

.field public R:LPJ0;

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LLq0;

    invoke-direct {p1}, LLq0;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->O:LLq0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->J:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    iget v5, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->J:I

    invoke-static {v0, v4, v5}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    invoke-static {v0, v4}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->L:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->L:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    move-object v4, v1

    const/4 v0, 0x1

    .line 7
    :goto_1
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 8
    :goto_2
    iget-object v6, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->R:LPJ0;

    if-eqz v6, :cond_5

    iget-object v7, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->O:LLq0;

    .line 9
    invoke-interface {v6}, LPJ0;->a()Z

    move-result v6

    if-eqz v7, :cond_4

    .line 10
    invoke-static {v6}, Lyp0;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_4

    :cond_4
    throw v1

    :cond_5
    const-wide/16 v6, 0xe1

    if-nez v0, :cond_8

    if-nez v5, :cond_6

    .line 11
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->H:Z

    if-eqz v1, :cond_8

    .line 12
    :cond_6
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->H:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 13
    :cond_7
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->H:Z

    .line 14
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->G:Z

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->b()V

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LIq0;

    invoke-direct {v1, p0}, LIq0;-><init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_c

    if-eqz v5, :cond_9

    .line 22
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->G:Z

    if-eqz v0, :cond_c

    .line 23
    :cond_9
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->G:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 24
    :cond_a
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->G:Z

    .line 25
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->H:Z

    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 27
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->F:Z

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    const-wide/16 v6, 0x0

    :goto_3
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LJq0;

    invoke-direct {v1, p0}, LJq0;-><init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 31
    :cond_c
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->c()V

    :goto_4
    if-eqz v4, :cond_10

    if-nez v5, :cond_f

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v5, 0x2

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 34
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v6

    if-ne v6, v5, :cond_d

    .line 35
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 36
    :cond_d
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v2

    aput-object v4, v5, v3

    invoke-direct {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 39
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->F:Z

    if-eqz v0, :cond_e

    const/16 v2, 0xe1

    .line 40
    :cond_e
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 41
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->G:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->c()V

    goto :goto_5

    .line 42
    :cond_f
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    :goto_5
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->O:LLq0;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lyp0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->x:I

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->y:I

    .line 6
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 8
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->L:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->M:Landroid/view/TouchDelegate;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->N:LkM0;

    .line 5
    iget-object v1, v1, LkM0;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->M:Landroid/view/TouchDelegate;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->Q:Landroid/graphics/Rect;

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 10
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_5

    const/4 v1, 0x1

    .line 12
    :cond_5
    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->z:I

    if-nez v2, :cond_6

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->z:I

    .line 14
    :cond_6
    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->A:I

    if-nez v2, :cond_7

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->A:I

    .line 16
    :cond_7
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_8

    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->A:I

    goto :goto_1

    :cond_8
    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->z:I

    :goto_1
    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 17
    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_9

    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->z:I

    goto :goto_2

    :cond_9
    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->A:I

    :goto_2
    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 18
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->M:Landroid/view/TouchDelegate;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->Q:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->P:Z

    if-ne v2, v1, :cond_a

    return-void

    .line 19
    :cond_a
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->Q:Landroid/graphics/Rect;

    .line 20
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->M:Landroid/view/TouchDelegate;

    if-eqz v2, :cond_b

    .line 21
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->N:LkM0;

    .line 22
    iget-object v3, v3, LkM0;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    :cond_b
    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->M:Landroid/view/TouchDelegate;

    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->N:LkM0;

    .line 25
    iget-object v0, v0, LkM0;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->P:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b024a

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    const v0, 0x7f0b024b

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->C:Landroid/widget/TextView;

    const v0, 0x7f0b024d

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->D:Landroid/view/View;

    const v0, 0x7f0b024c

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->E:Landroid/view/View;

    .line 6
    new-instance v0, LKq0;

    invoke-direct {v0, p0}, LKq0;-><init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
