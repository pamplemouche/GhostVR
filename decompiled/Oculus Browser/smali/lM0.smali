.class public LlM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:LnM0;


# direct methods
.method public constructor <init>(LnM0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LlM0;->w:LnM0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    instance-of p2, p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    if-nez p4, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, LlM0;->w:LnM0;

    .line 7
    iget-object p1, p1, LnM0;->x:Landroid/view/View;

    .line 8
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, LlM0;->w:LnM0;

    if-eqz p1, :cond_2

    .line 10
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object p4, p1, LnM0;->w:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    .line 12
    invoke-virtual {p4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 13
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    .line 14
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget p5, p1, LnM0;->A:F

    add-float/2addr p2, p5

    const/4 p5, 0x2

    new-array p5, p5, [I

    .line 15
    iget-object p6, p1, LnM0;->x:Landroid/view/View;

    invoke-virtual {p6, p5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p6, 0x1

    .line 16
    aget p7, p5, p6

    iput p7, p1, LnM0;->D:I

    .line 17
    iget p7, p1, LnM0;->y:F

    aget p3, p5, p3

    int-to-float p3, p3

    sub-float/2addr p7, p3

    add-float/2addr p7, p4

    iput p7, p1, LnM0;->B:F

    .line 18
    iget p3, p1, LnM0;->z:F

    aget p4, p5, p6

    int-to-float p4, p4

    sub-float/2addr p3, p4

    add-float/2addr p3, p2

    iput p3, p1, LnM0;->C:F

    .line 19
    invoke-virtual {p1, p6, p7, p3}, LnM0;->a(ZFF)Landroid/view/animation/Animation;

    move-result-object p2

    .line 20
    iget-object p1, p1, LnM0;->x:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 21
    iget-object p1, p0, LlM0;->w:LnM0;

    .line 22
    iget-object p1, p1, LnM0;->x:Landroid/view/View;

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 24
    throw p1
.end method
