.class Landroid/support/v7/widget/ba;
.super Landroid/widget/PopupWindow;


# static fields
.field private static final a:Z


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private final d:Landroid/graphics/Rect;

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/ba;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ba;->d:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/ba;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(I)Landroid/transition/Transition;
    .locals 1

    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ba;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, Landroid/support/v7/b/l;->PopupWindow:[I

    invoke-static {p1, p2, v0, p3, p4}, Landroid/support/v7/widget/kv;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/kv;

    move-result-object p2

    sget p3, Landroid/support/v7/b/l;->PopupWindow_overlapAnchor:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/kv;->g(I)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    sget p3, Landroid/support/v7/b/l;->PopupWindow_overlapAnchor:I

    invoke-virtual {p2, p3, p4}, Landroid/support/v7/widget/kv;->a(IZ)Z

    move-result p3

    invoke-direct {p0, p3}, Landroid/support/v7/widget/ba;->a(Z)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ba;->c:Landroid/content/Context;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_1

    sget p3, Landroid/support/v7/b/l;->PopupWindow_popupEnterTransition:I

    invoke-virtual {p2, p3, p4}, Landroid/support/v7/widget/kv;->g(II)I

    move-result p3

    invoke-direct {p0, p3}, Landroid/support/v7/widget/ba;->a(I)Landroid/transition/Transition;

    move-result-object p3

    sget v0, Landroid/support/v7/b/l;->PopupWindow_popupExitTransition:I

    invoke-virtual {p2, v0, p4}, Landroid/support/v7/widget/kv;->g(II)I

    move-result p4

    invoke-direct {p0, p4}, Landroid/support/v7/widget/ba;->a(I)Landroid/transition/Transition;

    move-result-object p4

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/ba;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/ba;->setExitTransition(Landroid/transition/Transition;)V

    :cond_1
    sget p3, Landroid/support/v7/b/l;->PopupWindow_android_popupBackground:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/kv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/ba;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/kv;->a()V

    invoke-static {p1}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/view/a;->h()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/ba;->e:Z

    iget-object p1, p0, Landroid/support/v7/widget/ba;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/v7/b/e;->sesl_navigation_bar_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ba;->f:I

    return-void
.end method

.method private a(Z)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/ba;->a:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/ba;->b:Z

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/widget/ai;->a(Landroid/widget/PopupWindow;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/widget/ai;->a(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-boolean p3, p0, Landroid/support/v7/widget/ba;->e:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroid/support/v7/widget/ba;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-eq p3, v1, :cond_1

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/widget/ba;->f:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    new-array p3, v1, [I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ba;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    aget p1, p3, v3

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    aget v2, p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_1
    sub-int/2addr v1, p2

    aget p1, p3, v3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/ba;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/ba;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/widget/ba;->d:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Landroid/support/v7/widget/ba;->d:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Landroid/support/v7/widget/ba;->d:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    :cond_3
    return p1
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/ba;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ba;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/ba;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ba;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 6

    sget-boolean v0, Landroid/support/v7/widget/ba;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ba;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    move v3, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method
