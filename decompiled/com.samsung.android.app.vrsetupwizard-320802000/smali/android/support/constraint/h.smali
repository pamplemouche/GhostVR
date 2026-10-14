.class public Landroid/support/constraint/h;
.super Landroid/view/ViewGroup;


# instance fields
.field a:Landroid/support/constraint/e;


# virtual methods
.method protected a()Landroid/support/constraint/i;
    .locals 2

    new-instance v0, Landroid/support/constraint/i;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/i;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/constraint/i;
    .locals 2

    new-instance v0, Landroid/support/constraint/i;

    invoke-virtual {p0}, Landroid/support/constraint/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/h;->a()Landroid/support/constraint/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/constraint/h;->a(Landroid/util/AttributeSet;)Landroid/support/constraint/i;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/c;

    invoke-direct {v0, p1}, Landroid/support/constraint/c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConstraintSet()Landroid/support/constraint/e;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/h;->a:Landroid/support/constraint/e;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/e;

    invoke-direct {v0}, Landroid/support/constraint/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/h;->a:Landroid/support/constraint/e;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/h;->a:Landroid/support/constraint/e;

    invoke-virtual {v0, p0}, Landroid/support/constraint/e;->a(Landroid/support/constraint/h;)V

    iget-object v0, p0, Landroid/support/constraint/h;->a:Landroid/support/constraint/e;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
