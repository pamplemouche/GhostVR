.class public LRh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFd;


# instance fields
.field public w:Lqd;

.field public x:Ltd;

.field public final synthetic y:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LEd;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lqd;)V
    .locals 1

    .line 1
    iget-object p1, p0, LRh;->w:Lqd;

    if-eqz p1, :cond_0

    iget-object v0, p0, LRh;->x:Ltd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lqd;->a(Ltd;)Z

    .line 3
    :cond_0
    iput-object p2, p0, LRh;->w:Lqd;

    return-void
.end method

.method public a(Lqd;Z)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 4
    iget-object p1, p0, LRh;->x:Ltd;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, LRh;->w:Lqd;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lqd;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 7
    iget-object v2, p0, LRh;->w:Lqd;

    invoke-virtual {v2, v1}, Lqd;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 8
    iget-object v3, p0, LRh;->x:Ltd;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 9
    iget-object p1, p0, LRh;->w:Lqd;

    iget-object v0, p0, LRh;->x:Ltd;

    invoke-virtual {p0, p1, v0}, LRh;->b(Lqd;Ltd;)Z

    :cond_2
    return-void
.end method

.method public a(LNd;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lqd;Ltd;)Z
    .locals 6

    .line 10
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    .line 11
    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    const v1, 0x800003

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 12
    new-instance v0, LBe;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f040265

    invoke-direct {v0, v3, v4, v5}, LBe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    .line 13
    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->C:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()LSh;

    move-result-object v0

    .line 16
    iget v3, p1, Landroid/support/v7/widget/Toolbar;->J:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v3, v1

    iput v3, v0, Ly8;->a:I

    .line 17
    iput v2, v0, LSh;->b:I

    .line 18
    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    new-instance v3, LQh;

    invoke-direct {v3, p1}, LQh;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_0
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 21
    iget-object v0, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_2

    .line 22
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 23
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    :cond_1
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    :cond_2
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Ltd;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    .line 26
    iput-object p2, p0, LRh;->x:Ltd;

    .line 27
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 28
    iget-object v0, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_4

    .line 29
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 30
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    :cond_3
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()LSh;

    move-result-object p1

    .line 32
    iget-object v0, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->J:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v1, v3

    iput v1, p1, Ly8;->a:I

    .line 33
    iput v2, p1, LSh;->b:I

    .line 34
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    :cond_4
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_5
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LSh;

    .line 40
    iget v3, v3, LSh;->b:I

    if-eq v3, v2, :cond_5

    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    if-eq v1, v3, :cond_5

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 42
    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_6
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p2, Ltd;->Y:Z

    .line 45
    iget-object p2, p2, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lqd;->b(Z)V

    .line 46
    iget-object p2, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    instance-of v0, p2, LOc;

    if-eqz v0, :cond_7

    .line 47
    check-cast p2, LOc;

    invoke-interface {p2}, LOc;->a()V

    :cond_7
    return p1
.end method

.method public b(Lqd;Ltd;)Z
    .locals 3

    .line 1
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    instance-of v0, p1, LOc;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LOc;

    invoke-interface {p1}, LOc;->d()V

    .line 3
    :cond_0
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    .line 6
    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 7
    iget-object v2, p1, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9
    iput-object v0, p0, LRh;->x:Ltd;

    .line 10
    iget-object p1, p0, LRh;->y:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p2, Ltd;->Y:Z

    .line 12
    iget-object p2, p2, Ltd;->J:Lqd;

    invoke-virtual {p2, p1}, Lqd;->b(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
