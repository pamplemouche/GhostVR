.class public Landroid/support/v7/app/MediaRouteButton;
.super Landroid/view/View;
.source "PG"


# static fields
.field public static final I:Landroid/util/SparseArray;

.field public static final J:[I

.field public static final K:[I


# instance fields
.field public A:Z

.field public B:Lq9;

.field public C:Landroid/graphics/drawable/Drawable;

.field public D:Z

.field public E:Z

.field public F:Landroid/content/res/ColorStateList;

.field public G:I

.field public H:I

.field public final w:Lrb;

.field public final x:Lp9;

.field public y:Lbb;

.field public z:Lca;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->I:Landroid/util/SparseArray;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Landroid/support/v7/app/MediaRouteButton;->J:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 3
    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->K:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lfa;->c(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f040191

    .line 2
    invoke-static {v0, p1}, Lfa;->c(Landroid/content/Context;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :cond_0
    const p1, 0x7f040187

    .line 4
    invoke-direct {p0, v0, p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object v0, Lbb;->c:Lbb;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    .line 6
    sget-object v0, Lca;->a:Lca;

    .line 7
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->z:Lca;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lrb;->a(Landroid/content/Context;)Lrb;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    .line 10
    new-instance v1, Lp9;

    invoke-direct {v1, p0}, Lp9;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->x:Lp9;

    .line 11
    sget-object v1, LeS;->l0:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteButton;->F:Landroid/content/res/ColorStateList;

    .line 13
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/app/MediaRouteButton;->G:I

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteButton;->H:I

    const/4 v0, 0x2

    .line 15
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_2

    .line 17
    sget-object p1, Landroid/support/v7/app/MediaRouteButton;->I:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Lq9;

    invoke-direct {p1, p0, v0}, Lq9;-><init>(Landroid/support/v7/app/MediaRouteButton;I)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->B:Lq9;

    .line 21
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->b()V

    .line 23
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 25
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    invoke-virtual {v0}, Lrb;->d()Lqb;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lqb;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v0, v1}, Lqb;->a(Lbb;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 27
    iget-boolean v0, v0, Lqb;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->D:Z

    if-eq v4, v1, :cond_2

    .line 29
    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->D:Z

    const/4 v2, 0x1

    .line 30
    :cond_2
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->E:Z

    if-eq v4, v0, :cond_3

    .line 31
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->E:Z

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 32
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->b()V

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 34
    :cond_4
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->A:Z

    if-eqz v4, :cond_5

    .line 35
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v4, v5, v3}, Lrb;->a(Lbb;I)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    :cond_5
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    .line 37
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_9

    .line 38
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 39
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->A:Z

    if-eqz v5, :cond_7

    if-nez v2, :cond_6

    if-eqz v0, :cond_9

    .line 40
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 41
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    .line 42
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 43
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 44
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->B:Lq9;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 6
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->F:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lx4;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->F:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 13
    :cond_4
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 15
    iget-boolean p1, p0, Landroid/support/v7/app/MediaRouteButton;->A:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 18
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->E:Z

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 21
    :cond_5
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->D:Z

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->E:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1303f0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->D:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1303ef

    goto :goto_0

    :cond_1
    const v0, 0x7f1303f1

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->A:Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v0}, Lbb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->x:Lp9;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lrb;->a(Lbb;Lcb;I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->a()V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->E:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->K:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->D:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->J:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->A:Z

    .line 2
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v0}, Lbb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->x:Lp9;

    invoke-virtual {v0, v1}, Lrb;->b(Lcb;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 7
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 8
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 9
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    .line 10
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 11
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v1

    add-int/2addr v5, v3

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 5
    iget v2, p0, Landroid/support/v7/app/MediaRouteButton;->G:I

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8
    iget v3, p0, Landroid/support/v7/app/MediaRouteButton;->H:I

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v5

    .line 10
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    move v0, v2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_5

    move v1, v3

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public performClick()Z
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 3
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->A:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    :goto_1
    instance-of v4, v2, Landroid/content/ContextWrapper;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 6
    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 7
    check-cast v2, Landroid/app/Activity;

    goto :goto_2

    .line 8
    :cond_2
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v5

    .line 9
    :goto_2
    instance-of v4, v2, LD2;

    if-eqz v4, :cond_4

    .line 10
    check-cast v2, LD2;

    invoke-virtual {v2}, LD2;->D()LH2;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v5

    :goto_3
    if-eqz v2, :cond_12

    .line 11
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    invoke-virtual {v4}, Lrb;->d()Lqb;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lqb;->b()Z

    move-result v6

    const-string v7, "MediaRouteButton"

    if-nez v6, :cond_d

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v4, v6}, Lqb;->a(Lbb;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    const-string v4, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 13
    invoke-virtual {v2, v4}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v2, "showDialog(): Route controller dialog already showing!"

    .line 14
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_6
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->z:Lca;

    if-eqz v6, :cond_c

    .line 16
    new-instance v5, LR9;

    invoke-direct {v5}, LR9;-><init>()V

    .line 17
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    if-eqz v6, :cond_b

    .line 18
    iget-object v7, v5, LR9;->E0:Lbb;

    const-string v8, "selector"

    if-nez v7, :cond_8

    .line 19
    iget-object v7, v5, Lz2;->C:Landroid/os/Bundle;

    if-eqz v7, :cond_7

    .line 20
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object v7

    iput-object v7, v5, LR9;->E0:Lbb;

    .line 21
    :cond_7
    iget-object v7, v5, LR9;->E0:Lbb;

    if-nez v7, :cond_8

    .line 22
    sget-object v7, Lbb;->c:Lbb;

    iput-object v7, v5, LR9;->E0:Lbb;

    .line 23
    :cond_8
    iget-object v7, v5, LR9;->E0:Lbb;

    invoke-virtual {v7, v6}, Lbb;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 24
    iput-object v6, v5, LR9;->E0:Lbb;

    .line 25
    iget-object v7, v5, Lz2;->C:Landroid/os/Bundle;

    if-nez v7, :cond_9

    .line 26
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 27
    :cond_9
    iget-object v6, v6, Lbb;->a:Landroid/os/Bundle;

    .line 28
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {v5, v7}, Lz2;->g(Landroid/os/Bundle;)V

    .line 30
    :cond_a
    invoke-virtual {v5, v2, v4}, Ls2;->a(LH2;Ljava/lang/String;)V

    goto :goto_5

    .line 31
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_c
    throw v5

    :cond_d
    :goto_4
    const-string v4, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 33
    invoke-virtual {v2, v4}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v6

    if-eqz v6, :cond_e

    const-string v2, "showDialog(): Route chooser dialog already showing!"

    .line 34
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 35
    :cond_e
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->z:Lca;

    if-eqz v6, :cond_11

    .line 36
    new-instance v5, Lw9;

    invoke-direct {v5}, Lw9;-><init>()V

    .line 37
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v5, v6}, Lw9;->a(Lbb;)V

    .line 38
    invoke-virtual {v5, v2, v4}, Ls2;->a(LH2;Ljava/lang/String;)V

    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_f

    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1

    .line 39
    :cond_11
    throw v5

    .line 40
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->C:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
