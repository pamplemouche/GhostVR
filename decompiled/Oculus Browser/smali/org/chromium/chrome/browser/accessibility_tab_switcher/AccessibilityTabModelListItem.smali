.class public Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final A:F

.field public final B:F

.field public final C:I

.field public final D:I

.field public final E:Landroid/content/res/ColorStateList;

.field public final F:Landroid/content/res/ColorStateList;

.field public final G:Landroid/content/res/ColorStateList;

.field public final H:Landroid/content/res/ColorStateList;

.field public I:F

.field public J:Landroid/widget/LinearLayout;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/ImageView;

.field public N:Landroid/widget/ImageButton;

.field public O:Landroid/widget/LinearLayout;

.field public P:Landroid/widget/Button;

.field public Q:Lorg/chromium/chrome/browser/tab/Tab;

.field public R:Z

.field public S:Ls00;

.field public final T:Landroid/view/GestureDetector;

.field public final U:I

.field public V:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListView;

.field public W:Z

.field public final a0:Ljava/lang/Runnable;

.field public final b0:Landroid/os/Handler;

.field public final c0:Landroid/animation/AnimatorListenerAdapter;

.field public final d0:Landroid/animation/AnimatorListenerAdapter;

.field public final e0:LpH0;

.field public w:I

.field public x:I

.field public y:I

.field public z:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lo00;

    invoke-direct {p2, p0}, Lo00;-><init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a0:Ljava/lang/Runnable;

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b0:Landroid/os/Handler;

    .line 4
    new-instance p2, Lp00;

    invoke-direct {p2, p0}, Lp00;-><init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c0:Landroid/animation/AnimatorListenerAdapter;

    .line 5
    new-instance p2, Lq00;

    invoke-direct {p2, p0}, Lq00;-><init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->d0:Landroid/animation/AnimatorListenerAdapter;

    .line 6
    new-instance p2, Lr00;

    invoke-direct {p2, p0}, Lr00;-><init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->e0:LpH0;

    .line 7
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lt00;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt00;-><init>(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;Lo00;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->T:Landroid/view/GestureDetector;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702bc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->A:F

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p2, v0

    .line 9
    iput p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->B:F

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07004b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->U:I

    const/4 p2, 0x0

    .line 11
    invoke-static {p1, p2}, LAO0;->a(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->E:Landroid/content/res/ColorStateList;

    const p2, 0x7f06007b

    .line 12
    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->F:Landroid/content/res/ColorStateList;

    const p2, 0x7f060080

    .line 13
    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->G:Landroid/content/res/ColorStateList;

    const p2, 0x7f0601a4

    .line 14
    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->H:Landroid/content/res/ColorStateList;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0017

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->C:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0018

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->D:I

    const/16 p1, 0x64

    .line 17
    iput p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->w:I

    const/16 p1, 0x12c

    .line 18
    iput p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->x:I

    const/16 p1, 0xfa0

    .line 19
    iput p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->y:I

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    check-cast p0, Lm00;

    .line 31
    iget-object p0, p0, Lm00;->a:Ln00;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b(Z)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->z:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->z:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->z:Landroid/animation/Animator;

    return-void
.end method

.method public final a(J)V
    .locals 6

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->I:F

    .line 5
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    neg-int v3, v3

    :goto_0
    int-to-float v3, v3

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 7
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v1, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 9
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v5

    aput-object v0, v4, v1

    .line 10
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c0:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->x:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 14
    iput-object v3, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->z:Landroid/animation/Animator;

    return-void
.end method

.method public final a(Z)V
    .locals 9

    .line 15
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a()V

    .line 16
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 17
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v1, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 18
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v1, [F

    aput v5, v6, v4

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 19
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v1, [F

    aput v5, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v1, [I

    .line 20
    iget v7, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->U:I

    aput v7, v6, v4

    const-string v7, "height"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 21
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v0, v8, v4

    aput-object v2, v8, v1

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v6, v8, v0

    .line 22
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 23
    iget p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->w:I

    goto :goto_0

    .line 24
    :cond_0
    iget p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->x:I

    :goto_0
    int-to-long v0, p1

    .line 25
    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 26
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 27
    iput-object v7, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->z:Landroid/animation/Animator;

    return-void
.end method

.method public final b()V
    .locals 6

    .line 9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const-string v3, "height"

    .line 10
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 11
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v0, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 12
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v2

    aput-object v3, v5, v0

    .line 13
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->d0:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    iget v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->x:I

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 16
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 17
    iput-object v4, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->z:Landroid/animation/Animator;

    return-void
.end method

.method public final b(Z)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->R:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->O:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->O:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->d()V

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c()V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TabFavicon;->b(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->F:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->E:Landroid/content/res/ColorStateList;

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1305f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->K:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->K:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v6, 0x7f13010d

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->N:Landroid/widget/ImageButton;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f130105

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0600e7

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 18
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->D:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 19
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->K:Landroid/widget/TextView;

    const v2, 0x7f140220

    invoke-static {v1, v2}, LdT;->a(Landroid/widget/TextView;I)V

    .line 20
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->L:Landroid/widget/TextView;

    const v2, 0x7f14021b

    invoke-static {v1, v2}, LdT;->a(Landroid/widget/TextView;I)V

    .line 21
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->N:Landroid/widget/ImageButton;

    iget-object v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->H:Landroid/content/res/ColorStateList;

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_5
    const v1, 0x7f06011e

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 24
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->C:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 25
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->K:Landroid/widget/TextView;

    const v2, 0x7f1401c4

    invoke-static {v1, v2}, LdT;->a(Landroid/widget/TextView;I)V

    .line 26
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->L:Landroid/widget/TextView;

    const v2, 0x7f1401b7

    invoke-static {v1, v2}, LdT;->a(Landroid/widget/TextView;I)V

    .line 27
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->N:Landroid/widget/ImageButton;

    iget-object v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->G:Landroid/content/res/ColorStateList;

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->L:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 31
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c()V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->d()V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->e0:LpH0;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    const/4 v1, 0x3

    if-ne p1, p0, :cond_1

    .line 3
    iget-object v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    check-cast v2, Lm00;

    invoke-virtual {v2, v0}, Lm00;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    check-cast p1, Lm00;

    .line 5
    iget-object v2, p1, Lm00;->a:Ln00;

    .line 6
    iget-object v2, v2, Ln00;->y:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 7
    invoke-static {v2, v0}, LFI0;->b(LdI0;I)I

    move-result v0

    .line 8
    invoke-interface {v2, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    .line 9
    iget-object p1, p1, Lm00;->a:Ln00;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->N:Landroid/widget/ImageButton;

    const v3, 0x3f99999a    # 1.2f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne p1, v2, :cond_3

    .line 11
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->W:Z

    .line 12
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->R:Z

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a()V

    .line 14
    iput v6, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->I:F

    .line 15
    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v0, v4, [F

    aput v3, v0, v5

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 16
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v4, [F

    aput v6, v2, v5

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 17
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 18
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v5

    aput-object v0, v1, v4

    const/4 v0, 0x2

    aput-object p1, v1, v0

    .line 19
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 20
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->c0:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    iget p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->w:I

    int-to-long v0, p1

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 22
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 23
    iput-object v3, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->z:Landroid/animation/Animator;

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b()V

    goto :goto_0

    .line 25
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->P:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 26
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b0:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a0:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->S:Ls00;

    check-cast p1, Lm00;

    .line 28
    iget-object v1, p1, Lm00;->a:Ln00;

    .line 29
    iget-object v1, v1, Ln00;->y:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 30
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(I)V

    .line 31
    iget-object p1, p1, Lm00;->a:Ln00;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 32
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b(Z)V

    .line 33
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 34
    iget p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->I:F

    cmpl-float v0, p1, v6

    if-lez v0, :cond_4

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 36
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Z)V

    goto :goto_0

    :cond_4
    cmpg-float p1, p1, v6

    if-gez p1, :cond_5

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 38
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Z)V

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 40
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 41
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->Q:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->e0:LpH0;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0458

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->J:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0494

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->K:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->J:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->L:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->J:Landroid/widget/LinearLayout;

    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->J:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->N:Landroid/widget/ImageButton;

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->M:Landroid/widget/ImageView;

    const v1, 0x7f080256

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0b04c5

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->O:Landroid/widget/LinearLayout;

    const v0, 0x7f0b04c4

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->P:Landroid/widget/Button;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->N:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->P:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->b0:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->T:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->A:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const-wide/16 v2, 0x12c

    .line 5
    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->a(Z)V

    .line 7
    :goto_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListItem;->V:Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListView;

    .line 8
    iput-boolean v1, p1, Lorg/chromium/chrome/browser/accessibility_tab_switcher/AccessibilityTabModelListView;->x:Z

    return v1

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setHeight(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-ne v1, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput p1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
