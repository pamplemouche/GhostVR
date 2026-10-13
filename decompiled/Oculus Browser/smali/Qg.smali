.class public abstract LQg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LWe;

.field public b:Landroid/support/v7/widget/RecyclerView;

.field public final c:Lfi;

.field public final d:Lfi;

.field public e:Lgi;

.field public f:Lgi;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LMg;

    invoke-direct {v0, p0}, LMg;-><init>(LQg;)V

    iput-object v0, p0, LQg;->c:Lfi;

    .line 3
    new-instance v0, LNg;

    invoke-direct {v0, p0}, LNg;-><init>(LQg;)V

    iput-object v0, p0, LQg;->d:Lfi;

    .line 4
    new-instance v0, Lgi;

    iget-object v1, p0, LQg;->c:Lfi;

    invoke-direct {v0, v1}, Lgi;-><init>(Lfi;)V

    iput-object v0, p0, LQg;->e:Lgi;

    .line 5
    new-instance v0, Lgi;

    iget-object v1, p0, LQg;->d:Lfi;

    invoke-direct {v0, v1}, Lgi;-><init>(Lfi;)V

    iput-object v0, p0, LQg;->f:Lgi;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, LQg;->g:Z

    .line 7
    iput-boolean v0, p0, LQg;->h:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, LQg;->i:Z

    .line 9
    iput-boolean v0, p0, LQg;->j:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    .line 14
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 15
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 17
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 89
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_3

    if-ltz p3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_2

    :cond_1
    const/4 p1, 0x0

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    move p3, p0

    :goto_0
    move p2, p1

    move p0, p3

    goto :goto_2

    :cond_3
    if-ltz p3, :cond_4

    :goto_1
    move p0, p3

    const/high16 p2, 0x40000000    # 2.0f

    goto :goto_2

    :cond_4
    if-ne p3, v1, :cond_5

    move p2, p1

    goto :goto_2

    :cond_5
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_8

    :cond_6
    const/high16 p2, -0x80000000

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    .line 90
    :cond_8
    :goto_2
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)LPg;
    .locals 2

    .line 165
    new-instance v0, LPg;

    invoke-direct {v0}, LPg;-><init>()V

    .line 166
    sget-object v1, LeS;->A0:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 167
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, LPg;->a:I

    const/16 p3, 0x9

    .line 168
    invoke-virtual {p0, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, LPg;->b:I

    const/16 p1, 0x8

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, LPg;->c:Z

    const/16 p1, 0xa

    .line 170
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, LPg;->d:Z

    .line 171
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static b(III)Z
    .locals 3

    .line 22
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method


# virtual methods
.method public abstract a(ILXg;Lbh;)I
.end method

.method public a(LXg;Lbh;)I
    .locals 0

    .line 163
    iget-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-nez p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, LQg;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {p1}, LBg;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public abstract a(Lbh;)I
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)LRg;
    .locals 1

    .line 23
    new-instance v0, LRg;

    invoke-direct {v0, p1, p2}, LRg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)LRg;
    .locals 1

    .line 18
    instance-of v0, p1, LRg;

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, LRg;

    check-cast p1, LRg;

    invoke-direct {v0, p1}, LRg;-><init>(LRg;)V

    return-object v0

    .line 20
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, LRg;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, LRg;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 22
    :cond_1
    new-instance v0, LRg;

    invoke-direct {v0, p1}, LRg;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 5

    .line 64
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 65
    invoke-virtual {p0, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v2

    .line 66
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v3}, Ldh;->d()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Ldh;->n()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 68
    iget-boolean v4, v4, Lbh;->g:Z

    if-nez v4, :cond_1

    .line 69
    invoke-virtual {v3}, Ldh;->i()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a(Landroid/view/View;ILXg;Lbh;)Landroid/view/View;
.end method

.method public a(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, LQg;->o:I

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, LQg;->m:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->W0:Z

    if-nez p1, :cond_0

    .line 4
    iput v0, p0, LQg;->o:I

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, LQg;->p:I

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, LQg;->n:I

    if-nez p1, :cond_1

    .line 7
    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->W0:Z

    if-nez p1, :cond_1

    .line 8
    iput v0, p0, LQg;->p:I

    :cond_1
    return-void
.end method

.method public abstract a(IILbh;LOg;)V
.end method

.method public a(ILOg;)V
    .locals 0

    return-void
.end method

.method public a(ILXg;)V
    .locals 1

    .line 70
    invoke-virtual {p0, p1}, LQg;->b(I)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {p0, p1}, LQg;->f(I)V

    .line 72
    invoke-virtual {p2, v0}, LXg;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(LXg;)V
    .locals 4

    .line 73
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 74
    invoke-virtual {p0, v0}, LQg;->b(I)Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ldh;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {v2}, Ldh;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ldh;->i()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 78
    iget-boolean v3, v3, LBg;->x:Z

    if-nez v3, :cond_1

    .line 79
    invoke-virtual {p0, v0}, LQg;->f(I)V

    .line 80
    invoke-virtual {p1, v2}, LXg;->a(Ldh;)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p0, v0}, LQg;->b(I)Landroid/view/View;

    .line 82
    iget-object v3, p0, LQg;->a:LWe;

    invoke-virtual {v3, v0}, LWe;->a(I)V

    .line 83
    invoke-virtual {p1, v1}, LXg;->b(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 85
    invoke-virtual {v1, v2}, Lji;->c(Ldh;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(LXg;Lbh;Landroid/view/View;LZ7;)V
    .locals 6

    .line 159
    invoke-virtual {p0}, LQg;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, LQg;->i(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    invoke-virtual {p0}, LQg;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, LQg;->i(Landroid/view/View;)I

    move-result p2

    move v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 161
    invoke-static/range {v0 .. v5}, LY7;->a(IIIIZZ)LY7;

    move-result-object p1

    .line 162
    invoke-virtual {p4, p1}, LZ7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, LQg;->j()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, LQg;->k()I

    move-result v0

    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, LQg;->l()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, LQg;->i()I

    move-result p1

    add-int/2addr p1, v1

    .line 11
    invoke-virtual {p0}, LQg;->h()I

    move-result v1

    invoke-static {p2, v0, v1}, LQg;->a(III)I

    move-result p2

    .line 12
    invoke-virtual {p0}, LQg;->g()I

    move-result v0

    invoke-static {p3, p1, v0}, LQg;->a(III)I

    move-result p1

    .line 13
    iget-object p3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public abstract a(Landroid/os/Parcelable;)V
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView;LXg;)V
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 24
    invoke-virtual {p0, p1, v1, v0}, LQg;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 3

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 92
    iget-object v1, v0, LRg;->b:Landroid/graphics/Rect;

    .line 93
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 6

    .line 25
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v0

    if-nez p3, :cond_1

    .line 26
    invoke-virtual {v0}, Ldh;->i()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object p3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {p3, v0}, Lji;->c(Ldh;)V

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {p3, v0}, Lji;->a(Ldh;)V

    .line 29
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, LRg;

    .line 30
    invoke-virtual {v0}, Ldh;->o()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ldh;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_7

    .line 32
    iget-object v1, p0, LQg;->a:LWe;

    invoke-virtual {v1, p1}, LWe;->b(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 33
    iget-object p2, p0, LQg;->a:LWe;

    invoke-virtual {p2}, LWe;->a()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_6

    if-eq v1, p2, :cond_a

    .line 34
    iget-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 35
    invoke-virtual {p1, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 36
    invoke-virtual {p1, v1}, LQg;->b(I)Landroid/view/View;

    .line 37
    iget-object v4, p1, LQg;->a:LWe;

    invoke-virtual {v4, v1}, LWe;->a(I)V

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LRg;

    .line 39
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ldh;->i()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    iget-object v5, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v5, v4}, Lji;->a(Ldh;)V

    goto :goto_2

    .line 42
    :cond_4
    iget-object v5, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v5, v4}, Lji;->c(Ldh;)V

    .line 43
    :goto_2
    iget-object p1, p1, LQg;->a:LWe;

    invoke-virtual {v4}, Ldh;->i()Z

    move-result v4

    invoke-virtual {p1, v3, p2, v1, v4}, LWe;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_5

    .line 44
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 46
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-static {p3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p3}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 48
    :cond_7
    iget-object v1, p0, LQg;->a:LWe;

    invoke-virtual {v1, p1, p2, v2}, LWe;->a(Landroid/view/View;IZ)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p3, LRg;->c:Z

    goto :goto_5

    .line 50
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ldh;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 51
    iget-object v1, v0, Ldh;->J:LXg;

    invoke-virtual {v1, v0}, LXg;->b(Ldh;)V

    goto :goto_4

    .line 52
    :cond_9
    invoke-virtual {v0}, Ldh;->b()V

    .line 53
    :goto_4
    iget-object v1, p0, LQg;->a:LWe;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, LWe;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 54
    :cond_a
    :goto_5
    iget-boolean p1, p3, LRg;->d:Z

    if-eqz p1, :cond_b

    .line 55
    iget-object p1, v0, Ldh;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 56
    iput-boolean v2, p3, LRg;->d:Z

    :cond_b
    return-void
.end method

.method public a(Landroid/view/View;LXg;)V
    .locals 3

    .line 57
    iget-object v0, p0, LQg;->a:LWe;

    .line 58
    iget-object v1, v0, LWe;->a:LVe;

    check-cast v1, Lzg;

    .line 59
    iget-object v1, v1, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, v0, LWe;->b:LUe;

    invoke-virtual {v2, v1}, LUe;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v0, p1}, LWe;->d(Landroid/view/View;)Z

    .line 62
    :cond_1
    iget-object v0, v0, LWe;->a:LVe;

    check-cast v0, Lzg;

    invoke-virtual {v0, v1}, Lzg;->b(I)V

    .line 63
    :goto_0
    invoke-virtual {p2, p1}, LXg;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;LZ7;)V
    .locals 2

    .line 156
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Ldh;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LQg;->a:LWe;

    iget-object v0, v0, Ldh;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, LWe;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {p0, v1, v0, p1, p2}, LQg;->a(LXg;Lbh;Landroid/view/View;LZ7;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 112
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 114
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 115
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, LRg;

    iget-object p2, p2, LRg;->b:Landroid/graphics/Rect;

    .line 95
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 97
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    :goto_0
    iget-object p2, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/graphics/RectF;

    .line 103
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 105
    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 110
    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 148
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, -0x1

    .line 150
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 151
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 153
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 154
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0}, LBg;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a()Z
.end method

.method public a(LRg;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 116
    invoke-virtual {p0}, LQg;->j()I

    move-result v1

    .line 117
    invoke-virtual {p0}, LQg;->l()I

    move-result v2

    .line 118
    iget v3, p0, LQg;->o:I

    .line 119
    invoke-virtual {p0}, LQg;->k()I

    move-result v4

    sub-int/2addr v3, v4

    .line 120
    iget v4, p0, LQg;->p:I

    .line 121
    invoke-virtual {p0}, LQg;->i()I

    move-result v5

    sub-int/2addr v4, v5

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v6, p2

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v5

    .line 125
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    .line 126
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    .line 127
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    .line 128
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p3, v4

    .line 129
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 130
    invoke-virtual {p0}, LQg;->f()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 133
    :cond_3
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    .line 134
    aget p2, v0, v1

    .line 135
    aget p3, v0, v8

    if-eqz p5, :cond_7

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_5

    :cond_4
    :goto_3
    const/4 p5, 0x0

    goto :goto_4

    .line 137
    :cond_5
    invoke-virtual {p0}, LQg;->j()I

    move-result v0

    .line 138
    invoke-virtual {p0}, LQg;->l()I

    move-result v2

    .line 139
    iget v3, p0, LQg;->o:I

    .line 140
    invoke-virtual {p0}, LQg;->k()I

    move-result v4

    sub-int/2addr v3, v4

    .line 141
    iget v4, p0, LQg;->p:I

    .line 142
    invoke-virtual {p0}, LQg;->i()I

    move-result v5

    sub-int/2addr v4, v5

    .line 143
    iget-object v5, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    .line 144
    invoke-static {p5, v5}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 145
    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p2

    if-ge p5, v3, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p2

    if-le p5, v0, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    if-ge p5, v4, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p3

    if-gt p5, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 p5, 0x1

    :goto_4
    if-eqz p5, :cond_8

    :cond_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_5

    :cond_8
    return v1

    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    .line 146
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    .line 147
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    :goto_6
    return v8
.end method

.method public a(Landroid/view/View;IILRg;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, LQg;->i:Z

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, LQg;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, LQg;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

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

.method public abstract b(ILXg;Lbh;)I
.end method

.method public b(LXg;Lbh;)I
    .locals 0

    .line 28
    iget-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, LQg;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {p1}, LBg;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public abstract b(Lbh;)I
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 16
    iget-object v0, p0, LQg;->a:LWe;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, LWe;->c(I)I

    move-result p1

    .line 18
    iget-object v0, v0, LWe;->a:LVe;

    check-cast v0, Lzg;

    invoke-virtual {v0, p1}, Lzg;->a(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 12
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 14
    :cond_1
    iget-object v0, p0, LQg;->a:LWe;

    .line 15
    iget-object v0, v0, LWe;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public b(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const v2, 0x7fffffff

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    :goto_0
    if-ge v1, v0, :cond_5

    .line 3
    invoke-virtual {p0, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v6

    .line 4
    iget-object v7, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    .line 5
    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    .line 7
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v4, :cond_2

    move v4, v6

    .line 8
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    move v2, v6

    .line 9
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v5, :cond_4

    move v5, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, LQg;->a(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public b(LXg;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 25
    invoke-virtual {p0, v0}, LQg;->b(I)Landroid/view/View;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v1

    invoke-virtual {v1}, Ldh;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p0, v0, p1}, LQg;->a(ILXg;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 32
    invoke-virtual {p0, v0, p1}, LQg;->a(II)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public abstract b()Z
.end method

.method public b(Landroid/view/View;IILRg;)Z
    .locals 2

    .line 19
    iget-boolean v0, p0, LQg;->i:Z

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, LQg;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, LQg;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

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

.method public c(Landroid/view/View;)I
    .locals 1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LRg;

    iget-object p1, p1, LRg;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    return v0
.end method

.method public abstract c(Lbh;)I
.end method

.method public abstract c()LRg;
.end method

.method public c(I)V
    .locals 4

    .line 30
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 32
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v2}, LWe;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(LXg;)V
    .locals 6

    .line 1
    iget-object v0, p1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 2
    iget-object v2, p1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldh;

    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    .line 3
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ldh;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Ldh;->a(Z)V

    .line 6
    invoke-virtual {v3}, Ldh;->k()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    iget-object v5, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8
    :cond_1
    iget-object v5, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v5, v3}, LJg;->b(Ldh;)V

    :cond_2
    const/4 v5, 0x1

    .line 10
    invoke-virtual {v3, v5}, Ldh;->a(Z)V

    .line 11
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v2

    const/4 v3, 0x0

    .line 12
    iput-object v3, v2, Ldh;->J:LXg;

    .line 13
    iput-boolean v4, v2, Ldh;->K:Z

    .line 14
    invoke-virtual {v2}, Ldh;->b()V

    .line 15
    invoke-virtual {p1, v2}, LXg;->a(Ldh;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, p1, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object p1, p1, LXg;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    .line 19
    iget-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return-void
.end method

.method public abstract c(LXg;Lbh;)V
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 21
    iput-object p1, p0, LQg;->a:LWe;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, LQg;->o:I

    .line 23
    iput p1, p0, LQg;->p:I

    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 25
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    iput-object v0, p0, LQg;->a:LWe;

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, LQg;->o:I

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, LQg;->p:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 28
    iput p1, p0, LQg;->m:I

    .line 29
    iput p1, p0, LQg;->n:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, LQg;->a:LWe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LWe;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LRg;

    iget-object p1, p1, LRg;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public abstract d(Lbh;)I
.end method

.method public d(I)V
    .locals 4

    .line 2
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v2}, LWe;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    iget-object v0, v0, LRg;->b:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public abstract e(Lbh;)I
.end method

.method public e()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v2, p0, LQg;->a:LWe;

    .line 4
    iget-object v2, v2, LWe;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, LA7;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    iget-object v0, v0, LRg;->b:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public abstract f(Lbh;)I
.end method

.method public f(I)V
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, LQg;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, LQg;->a:LWe;

    .line 4
    invoke-virtual {v0, p1}, LWe;->c(I)I

    move-result p1

    .line 5
    iget-object v1, v0, LWe;->a:LVe;

    check-cast v1, Lzg;

    invoke-virtual {v1, p1}, Lzg;->a(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, v0, LWe;->b:LUe;

    invoke-virtual {v2, p1}, LUe;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, LWe;->d(Landroid/view/View;)Z

    .line 8
    :cond_1
    iget-object v0, v0, LWe;->a:LVe;

    check-cast v0, Lzg;

    invoke-virtual {v0, p1}, Lzg;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()I
    .locals 1

    .line 3
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, LA7;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LRg;

    iget-object p1, p1, LRg;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    return v0
.end method

.method public abstract g(I)V
.end method

.method public abstract g(Lbh;)V
.end method

.method public h()I
    .locals 1

    .line 3
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, LA7;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LRg;

    iget-object p1, p1, LRg;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public i()I
    .locals 1

    .line 2
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LRg;

    invoke-virtual {p1}, LRg;->a()I

    move-result p1

    return p1
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract m()Z
.end method

.method public abstract n()Landroid/os/Parcelable;
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract q()Z
.end method
