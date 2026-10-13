.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "PG"


# static fields
.field public static final E:Landroid/util/Printer;

.field public static final F:I

.field public static final G:I

.field public static final H:I

.field public static final I:I

.field public static final J:I

.field public static final K:I

.field public static final L:I

.field public static final M:LLf;

.field public static final N:LLf;

.field public static final O:LLf;

.field public static final P:LLf;

.field public static final Q:LLf;

.field public static final R:LLf;

.field public static final S:LLf;

.field public static final T:LLf;

.field public static final U:LLf;

.field public static final V:LLf;

.field public static final W:LLf;

.field public static final a0:LLf;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Landroid/util/Printer;

.field public final w:LPf;

.field public final x:LPf;

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->E:Landroid/util/Printer;

    .line 2
    sput v2, Landroid/support/v7/widget/GridLayout;->F:I

    const/4 v0, 0x4

    .line 3
    sput v0, Landroid/support/v7/widget/GridLayout;->G:I

    const/4 v0, 0x1

    .line 4
    sput v0, Landroid/support/v7/widget/GridLayout;->H:I

    const/4 v0, 0x6

    .line 5
    sput v0, Landroid/support/v7/widget/GridLayout;->I:I

    const/4 v0, 0x0

    .line 6
    sput v0, Landroid/support/v7/widget/GridLayout;->J:I

    const/4 v0, 0x5

    .line 7
    sput v0, Landroid/support/v7/widget/GridLayout;->K:I

    const/4 v0, 0x2

    .line 8
    sput v0, Landroid/support/v7/widget/GridLayout;->L:I

    .line 9
    new-instance v0, LDf;

    invoke-direct {v0}, LDf;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->M:LLf;

    .line 10
    new-instance v0, LEf;

    invoke-direct {v0}, LEf;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->N:LLf;

    .line 11
    new-instance v0, LFf;

    invoke-direct {v0}, LFf;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->O:LLf;

    .line 12
    sget-object v1, Landroid/support/v7/widget/GridLayout;->N:LLf;

    sput-object v1, Landroid/support/v7/widget/GridLayout;->P:LLf;

    .line 13
    sput-object v0, Landroid/support/v7/widget/GridLayout;->Q:LLf;

    .line 14
    sput-object v1, Landroid/support/v7/widget/GridLayout;->R:LLf;

    .line 15
    sput-object v0, Landroid/support/v7/widget/GridLayout;->S:LLf;

    .line 16
    new-instance v2, LGf;

    invoke-direct {v2, v1, v0}, LGf;-><init>(LLf;LLf;)V

    .line 17
    sput-object v2, Landroid/support/v7/widget/GridLayout;->T:LLf;

    .line 18
    sget-object v0, Landroid/support/v7/widget/GridLayout;->S:LLf;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->R:LLf;

    .line 19
    new-instance v2, LGf;

    invoke-direct {v2, v0, v1}, LGf;-><init>(LLf;LLf;)V

    .line 20
    sput-object v2, Landroid/support/v7/widget/GridLayout;->U:LLf;

    .line 21
    new-instance v0, LHf;

    invoke-direct {v0}, LHf;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->V:LLf;

    .line 22
    new-instance v0, LJf;

    invoke-direct {v0}, LJf;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->W:LLf;

    .line 23
    new-instance v0, LKf;

    invoke-direct {v0}, LKf;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->a0:LLf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, LPf;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LPf;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    .line 3
    new-instance v1, LPf;

    invoke-direct {v1, p0, v0}, LPf;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    .line 4
    iput v0, p0, Landroid/support/v7/widget/GridLayout;->y:I

    .line 5
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->z:Z

    .line 6
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->A:I

    .line 7
    iput v0, p0, Landroid/support/v7/widget/GridLayout;->C:I

    .line 8
    sget-object v1, Landroid/support/v7/widget/GridLayout;->E:Landroid/util/Printer;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->D:Landroid/util/Printer;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700b9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/GridLayout;->B:I

    .line 10
    sget-object v1, LeS;->Y:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    :try_start_0
    sget p2, Landroid/support/v7/widget/GridLayout;->G:I

    const/high16 v1, -0x80000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 12
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v3, p2}, LPf;->b(I)V

    .line 13
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 14
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 16
    sget p2, Landroid/support/v7/widget/GridLayout;->H:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayout;->a(I)V

    .line 17
    sget p2, Landroid/support/v7/widget/GridLayout;->F:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 18
    iget v1, p0, Landroid/support/v7/widget/GridLayout;->y:I

    if-eq v1, p2, :cond_0

    .line 19
    iput p2, p0, Landroid/support/v7/widget/GridLayout;->y:I

    .line 20
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 21
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 22
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 23
    :cond_0
    sget p2, Landroid/support/v7/widget/GridLayout;->I:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 24
    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayout;->z:Z

    .line 25
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 26
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 27
    sget p2, Landroid/support/v7/widget/GridLayout;->J:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 28
    iput p2, p0, Landroid/support/v7/widget/GridLayout;->A:I

    .line 29
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 30
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 31
    sget p2, Landroid/support/v7/widget/GridLayout;->K:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 32
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    .line 33
    iput-boolean p2, v0, LPf;->u:Z

    .line 34
    invoke-virtual {v0}, LPf;->h()V

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 36
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 37
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 38
    sget p2, Landroid/support/v7/widget/GridLayout;->L:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 39
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    .line 40
    iput-boolean p2, v0, LPf;->u:Z

    .line 41
    invoke-virtual {v0}, LPf;->h()V

    .line 42
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 43
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 44
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public static a([II)I
    .locals 3

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    aget v2, p0, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static a(IZ)LLf;
    .locals 3

    const/4 v0, 0x7

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    and-int/2addr p0, v1

    shr-int/2addr p0, v2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x3

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    const p1, 0x800003

    if-eq p0, p1, :cond_3

    const p1, 0x800005

    if-eq p0, p1, :cond_2

    .line 10
    sget-object p0, Landroid/support/v7/widget/GridLayout;->M:LLf;

    return-object p0

    .line 11
    :cond_2
    sget-object p0, Landroid/support/v7/widget/GridLayout;->S:LLf;

    return-object p0

    .line 12
    :cond_3
    sget-object p0, Landroid/support/v7/widget/GridLayout;->R:LLf;

    return-object p0

    .line 13
    :cond_4
    sget-object p0, Landroid/support/v7/widget/GridLayout;->a0:LLf;

    return-object p0

    :cond_5
    if-eqz p1, :cond_6

    .line 14
    sget-object p0, Landroid/support/v7/widget/GridLayout;->U:LLf;

    goto :goto_2

    :cond_6
    sget-object p0, Landroid/support/v7/widget/GridLayout;->Q:LLf;

    :goto_2
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    .line 15
    sget-object p0, Landroid/support/v7/widget/GridLayout;->T:LLf;

    goto :goto_3

    :cond_8
    sget-object p0, Landroid/support/v7/widget/GridLayout;->P:LLf;

    :goto_3
    return-object p0

    .line 16
    :cond_9
    sget-object p0, Landroid/support/v7/widget/GridLayout;->V:LLf;

    return-object p0
.end method

.method public static a(IILLf;)LVf;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->a(IILLf;F)LVf;

    move-result-object p0

    return-object p0
.end method

.method public static a(IILLf;F)LVf;
    .locals 7

    .line 82
    new-instance v6, LVf;

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v6

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, LVf;-><init>(ZIILLf;F)V

    return-object v6
.end method

.method public static a(LSf;IIII)V
    .locals 3

    .line 36
    new-instance v0, LRf;

    add-int/2addr p2, p1

    invoke-direct {v0, p1, p2}, LRf;-><init>(II)V

    .line 37
    iget-object p1, p0, LSf;->a:LVf;

    .line 38
    new-instance p2, LVf;

    iget-boolean v1, p1, LVf;->a:Z

    iget-object v2, p1, LVf;->c:LLf;

    iget p1, p1, LVf;->d:F

    invoke-direct {p2, v1, v0, v2, p1}, LVf;-><init>(ZLRf;LLf;F)V

    .line 39
    iput-object p2, p0, LSf;->a:LVf;

    .line 40
    new-instance p1, LRf;

    add-int/2addr p4, p3

    invoke-direct {p1, p3, p4}, LRf;-><init>(II)V

    .line 41
    iget-object p2, p0, LSf;->b:LVf;

    .line 42
    new-instance p3, LVf;

    iget-boolean p4, p2, LVf;->a:Z

    iget-object v0, p2, LVf;->c:LLf;

    iget p2, p2, LVf;->d:F

    invoke-direct {p3, p4, p1, v0, p2}, LVf;-><init>(ZLRf;LLf;F)V

    .line 43
    iput-object p3, p0, LSf;->b:LVf;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ". "

    invoke-static {p0, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static c(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 57
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LSf;

    mul-int/lit8 v1, v1, 0x1f

    .line 60
    invoke-virtual {v3}, LSf;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    move v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final a(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final a(Landroid/view/View;ZZ)I
    .locals 3

    .line 17
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 19
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    :goto_0
    if-eqz p3, :cond_4

    .line 20
    iget-object v2, v0, LPf;->j:[I

    if-nez v2, :cond_2

    .line 21
    invoke-virtual {v0}, LPf;->c()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [I

    iput-object v2, v0, LPf;->j:[I

    .line 22
    :cond_2
    iget-boolean v2, v0, LPf;->k:Z

    if-nez v2, :cond_3

    .line 23
    invoke-virtual {v0, v1}, LPf;->a(Z)V

    .line 24
    iput-boolean v1, v0, LPf;->k:Z

    .line 25
    :cond_3
    iget-object v0, v0, LPf;->j:[I

    goto :goto_1

    .line 26
    :cond_4
    iget-object v2, v0, LPf;->l:[I

    if-nez v2, :cond_5

    .line 27
    invoke-virtual {v0}, LPf;->c()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [I

    iput-object v2, v0, LPf;->l:[I

    .line 28
    :cond_5
    iget-boolean v2, v0, LPf;->m:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, LPf;->a(Z)V

    .line 30
    iput-boolean v1, v0, LPf;->m:Z

    .line 31
    :cond_6
    iget-object v0, v0, LPf;->l:[I

    .line 32
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)LSf;

    move-result-object p1

    if-eqz p2, :cond_7

    .line 33
    iget-object p1, p1, LSf;->b:LVf;

    goto :goto_2

    :cond_7
    iget-object p1, p1, LSf;->a:LVf;

    .line 34
    :goto_2
    iget-object p1, p1, LVf;->b:LRf;

    if-eqz p3, :cond_8

    iget p1, p1, LRf;->a:I

    goto :goto_3

    :cond_8
    iget p1, p1, LRf;->b:I

    .line 35
    :goto_3
    aget p1, v0, p1

    return p1
.end method

.method public final a(Landroid/view/View;)LSf;
    .locals 0

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LSf;

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    invoke-virtual {v0, p1}, LPf;->b(I)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    return-void
.end method

.method public final a(IIZ)V
    .locals 10

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    .line 67
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    goto/16 :goto_4

    .line 69
    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)LSf;

    move-result-object v3

    if-eqz p3, :cond_1

    .line 70
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_4

    .line 71
    :cond_1
    iget v5, p0, Landroid/support/v7/widget/GridLayout;->y:I

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 72
    iget-object v6, v3, LSf;->b:LVf;

    goto :goto_2

    :cond_3
    iget-object v6, v3, LSf;->a:LVf;

    .line 73
    :goto_2
    invoke-virtual {v6, v5}, LVf;->a(Z)LLf;

    move-result-object v7

    sget-object v8, Landroid/support/v7/widget/GridLayout;->a0:LLf;

    if-ne v7, v8, :cond_6

    .line 74
    iget-object v6, v6, LVf;->b:LRf;

    if-eqz v5, :cond_4

    .line 75
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    goto :goto_3

    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    .line 76
    :goto_3
    invoke-virtual {v7}, LPf;->f()[I

    move-result-object v7

    .line 77
    iget v8, v6, LRf;->b:I

    aget v8, v7, v8

    iget v6, v6, LRf;->a:I

    aget v6, v7, v6

    sub-int/2addr v8, v6

    .line 78
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v6

    sub-int/2addr v8, v6

    if-eqz v5, :cond_5

    .line 79
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, v8

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_4

    .line 80
    :cond_5
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;IIII)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final a(LSf;Z)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string v0, "row"

    :goto_0
    if-eqz p2, :cond_1

    .line 46
    iget-object p1, p1, LSf;->b:LVf;

    goto :goto_1

    :cond_1
    iget-object p1, p1, LSf;->a:LVf;

    .line 47
    :goto_1
    iget-object p1, p1, LVf;->b:LRf;

    .line 48
    iget v1, p1, LRf;->a:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    if-ltz v1, :cond_2

    goto :goto_2

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " indices must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/widget/GridLayout;->a(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 50
    iget-object p2, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    goto :goto_3

    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    .line 51
    :goto_3
    iget p2, p2, LPf;->b:I

    if-eq p2, v2, :cond_7

    .line 52
    iget v1, p1, LRf;->b:I

    const-string v2, " count"

    if-gt v1, p2, :cond_6

    .line 53
    invoke-virtual {p1}, LRf;->a()I

    move-result p1

    if-gt p1, p2, :cond_5

    goto :goto_4

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " span mustn\'t exceed the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/widget/GridLayout;->a(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/widget/GridLayout;->a(Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_4
    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result v0

    .line 62
    invoke-static {p2, v0, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p4, 0x0

    .line 63
    invoke-virtual {p0, p1, p4}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;Z)I

    move-result p4

    .line 64
    invoke-static {p3, p4, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final b(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public b(Landroid/view/View;ZZ)I
    .locals 4

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)LSf;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_c

    .line 7
    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout;->z:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_7

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    iget-object v0, v0, LSf;->b:LVf;

    goto :goto_1

    :cond_4
    iget-object v0, v0, LSf;->a:LVf;

    :goto_1
    if-eqz p2, :cond_5

    .line 9
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    .line 10
    :goto_2
    iget-object v0, v0, LVf;->b:LRf;

    const/4 v3, 0x1

    if-eqz p2, :cond_8

    .line 11
    invoke-static {p0}, LA7;->i(Landroid/view/View;)I

    move-result p2

    if-ne p2, v3, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_8

    if-nez p3, :cond_7

    const/4 p3, 0x1

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    .line 12
    iget p2, v0, LRf;->a:I

    goto :goto_5

    :cond_9
    iget p2, v0, LRf;->b:I

    invoke-virtual {v1}, LPf;->c()I

    .line 13
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lu8;

    if-eq p2, p3, :cond_b

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/widget/Space;

    if-ne p1, p2, :cond_a

    goto :goto_6

    .line 15
    :cond_a
    iget p1, p0, Landroid/support/v7/widget/GridLayout;->B:I

    div-int/lit8 v2, p1, 0x2

    :cond_b
    :goto_6
    move v1, v2

    :cond_c
    :goto_7
    return v1
.end method

.method public final b()V
    .locals 16

    move-object/from16 v0, p0

    .line 17
    iget v1, v0, Landroid/support/v7/widget/GridLayout;->C:I

    if-nez v1, :cond_13

    .line 18
    iget v1, v0, Landroid/support/v7/widget/GridLayout;->y:I

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 19
    iget-object v4, v0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    goto :goto_1

    :cond_1
    iget-object v4, v0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    .line 20
    :goto_1
    iget v4, v4, LPf;->b:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 21
    :goto_2
    new-array v5, v4, [I

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v7, v6, :cond_12

    .line 23
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, LSf;

    if-eqz v1, :cond_3

    .line 24
    iget-object v11, v10, LSf;->a:LVf;

    goto :goto_4

    :cond_3
    iget-object v11, v10, LSf;->b:LVf;

    .line 25
    :goto_4
    iget-object v12, v11, LVf;->b:LRf;

    .line 26
    iget-boolean v11, v11, LVf;->a:Z

    .line 27
    invoke-virtual {v12}, LRf;->a()I

    move-result v13

    if-eqz v11, :cond_4

    .line 28
    iget v9, v12, LRf;->a:I

    :cond_4
    if-eqz v1, :cond_5

    .line 29
    iget-object v12, v10, LSf;->b:LVf;

    goto :goto_5

    :cond_5
    iget-object v12, v10, LSf;->a:LVf;

    .line 30
    :goto_5
    iget-object v14, v12, LVf;->b:LRf;

    .line 31
    iget-boolean v12, v12, LVf;->a:Z

    .line 32
    invoke-virtual {v14}, LRf;->a()I

    move-result v15

    if-nez v4, :cond_6

    goto :goto_7

    :cond_6
    if-eqz v12, :cond_7

    .line 33
    iget v2, v14, LRf;->a:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    sub-int v2, v4, v2

    .line 34
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_7
    if-eqz v12, :cond_8

    .line 35
    iget v2, v14, LRf;->a:I

    goto :goto_8

    :cond_8
    move v2, v8

    :goto_8
    if-eqz v4, :cond_10

    if-eqz v11, :cond_9

    if-nez v12, :cond_f

    :cond_9
    :goto_9
    add-int v8, v2, v15

    if-le v8, v4, :cond_a

    goto :goto_b

    :cond_a
    move v11, v2

    :goto_a
    if-ge v11, v8, :cond_c

    .line 36
    aget v14, v5, v11

    if-le v14, v9, :cond_b

    :goto_b
    const/4 v11, 0x0

    goto :goto_c

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_c
    const/4 v11, 0x1

    :goto_c
    if-nez v11, :cond_f

    if-eqz v12, :cond_d

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_d
    if-gt v8, v4, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto :goto_9

    :cond_f
    add-int v8, v2, v15

    add-int v11, v9, v13

    .line 37
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v12, v8, v11}, Ljava/util/Arrays;->fill([IIII)V

    :cond_10
    if-eqz v1, :cond_11

    .line 38
    invoke-static {v10, v9, v13, v2, v15}, Landroid/support/v7/widget/GridLayout;->a(LSf;IIII)V

    goto :goto_d

    .line 39
    :cond_11
    invoke-static {v10, v2, v15, v9, v13}, Landroid/support/v7/widget/GridLayout;->a(LSf;IIII)V

    :goto_d
    add-int v8, v2, v15

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 40
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/GridLayout;->C:I

    goto :goto_e

    .line 41
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->a()I

    move-result v2

    if-eq v1, v2, :cond_14

    .line 42
    iget-object v1, v0, Landroid/support/v7/widget/GridLayout;->D:Landroid/util/Printer;

    const-string v2, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->b()V

    :cond_14
    :goto_e
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v0, p1}, LPf;->b(I)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/support/v7/widget/GridLayout;->C:I

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LPf;->h()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LPf;->h()V

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, LPf;->i()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v0}, LPf;->i()V

    :cond_2
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    .line 1
    instance-of v0, p1, LSf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, LSf;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->a(LSf;Z)V

    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/GridLayout;->a(LSf;Z)V

    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, LSf;

    .line 2
    sget-object v1, LVf;->e:LVf;

    invoke-direct {v0, v1, v1}, LSf;-><init>(LVf;LVf;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, LSf;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LSf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    instance-of v0, p1, LSf;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, LSf;

    check-cast p1, LSf;

    invoke-direct {v0, p1}, LSf;-><init>(LSf;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, LSf;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, LSf;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, LSf;

    invoke-direct {v0, p1}, LSf;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 32

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->b()V

    sub-int v7, p4, p2

    sub-int v0, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 6
    iget-object v2, v6, Landroid/support/v7/widget/GridLayout;->w:LPf;

    sub-int v3, v7, v8

    sub-int/2addr v3, v10

    .line 7
    iget-object v4, v2, LPf;->v:LTf;

    iput v3, v4, LTf;->a:I

    .line 8
    iget-object v4, v2, LPf;->w:LTf;

    neg-int v3, v3

    iput v3, v4, LTf;->a:I

    const/4 v11, 0x0

    .line 9
    iput-boolean v11, v2, LPf;->q:Z

    .line 10
    invoke-virtual {v2}, LPf;->f()[I

    .line 11
    iget-object v2, v6, Landroid/support/v7/widget/GridLayout;->x:LPf;

    sub-int/2addr v0, v9

    sub-int/2addr v0, v1

    .line 12
    iget-object v1, v2, LPf;->v:LTf;

    iput v0, v1, LTf;->a:I

    .line 13
    iget-object v1, v2, LPf;->w:LTf;

    neg-int v0, v0

    iput v0, v1, LTf;->a:I

    .line 14
    iput-boolean v11, v2, LPf;->q:Z

    .line 15
    invoke-virtual {v2}, LPf;->f()[I

    .line 16
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->w:LPf;

    invoke-virtual {v0}, LPf;->f()[I

    move-result-object v12

    .line 17
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v0}, LPf;->f()[I

    move-result-object v13

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_5

    .line 19
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move-object/from16 p3, v12

    const/16 v29, 0x0

    goto/16 :goto_3

    .line 21
    :cond_0
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)LSf;

    move-result-object v0

    .line 22
    iget-object v1, v0, LSf;->b:LVf;

    .line 23
    iget-object v0, v0, LSf;->a:LVf;

    .line 24
    iget-object v2, v1, LVf;->b:LRf;

    .line 25
    iget-object v3, v0, LVf;->b:LRf;

    .line 26
    iget v4, v2, LRf;->a:I

    aget v16, v12, v4

    .line 27
    iget v4, v3, LRf;->a:I

    aget v17, v13, v4

    .line 28
    iget v2, v2, LRf;->b:I

    aget v2, v12, v2

    .line 29
    iget v3, v3, LRf;->b:I

    aget v3, v13, v3

    sub-int v18, v2, v16

    sub-int v19, v3, v17

    const/4 v4, 0x1

    .line 30
    invoke-virtual {v6, v5, v4}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;Z)I

    move-result v3

    .line 31
    invoke-virtual {v6, v5, v11}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;Z)I

    move-result v2

    .line 32
    invoke-virtual {v1, v4}, LVf;->a(Z)LLf;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v11}, LVf;->a(Z)LLf;

    move-result-object v0

    .line 34
    iget-object v11, v6, Landroid/support/v7/widget/GridLayout;->w:LPf;

    invoke-virtual {v11}, LPf;->e()LUf;

    move-result-object v11

    invoke-virtual {v11, v15}, LUf;->a(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LQf;

    .line 35
    iget-object v4, v6, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v4}, LPf;->e()LUf;

    move-result-object v4

    invoke-virtual {v4, v15}, LUf;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQf;

    move-object/from16 p3, v12

    const/4 v12, 0x1

    .line 36
    invoke-virtual {v11, v12}, LQf;->a(Z)I

    move-result v20

    move/from16 p2, v2

    sub-int v2, v18, v20

    invoke-virtual {v1, v5, v2}, LLf;->a(Landroid/view/View;I)I

    move-result v20

    .line 37
    invoke-virtual {v4, v12}, LQf;->a(Z)I

    move-result v2

    sub-int v2, v19, v2

    invoke-virtual {v0, v5, v2}, LLf;->a(Landroid/view/View;I)I

    move-result v21

    .line 38
    invoke-virtual {v6, v5, v12, v12}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v22

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v6, v5, v2, v12}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v23

    .line 40
    invoke-virtual {v6, v5, v12, v2}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v24

    .line 41
    invoke-virtual {v6, v5, v2, v2}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v25

    add-int v26, v22, v24

    add-int v25, v23, v25

    add-int v27, v3, v26

    const/16 v28, 0x1

    move-object/from16 p1, v0

    move-object v0, v11

    move-object v11, v1

    move-object/from16 v1, p0

    move/from16 v12, p2

    const/16 v29, 0x0

    move-object v2, v5

    move/from16 v30, v3

    move-object v3, v11

    move-object/from16 v31, v4

    const/4 v6, 0x1

    move/from16 v4, v27

    move-object/from16 p2, v5

    move/from16 v5, v28

    .line 42
    invoke-virtual/range {v0 .. v5}, LQf;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;LLf;IZ)I

    move-result v27

    add-int v4, v12, v25

    const/4 v5, 0x0

    move-object/from16 v0, v31

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 43
    invoke-virtual/range {v0 .. v5}, LQf;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;LLf;IZ)I

    move-result v0

    sub-int v1, v18, v26

    move/from16 v3, v30

    .line 44
    invoke-virtual {v11, v2, v3, v1}, LLf;->b(Landroid/view/View;II)I

    move-result v1

    sub-int v3, v19, v25

    move-object/from16 v4, p1

    .line 45
    invoke-virtual {v4, v2, v12, v3}, LLf;->b(Landroid/view/View;II)I

    move-result v3

    add-int v16, v16, v20

    add-int v16, v16, v27

    .line 46
    invoke-static/range {p0 .. p0}, LA7;->i(Landroid/view/View;)I

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    add-int v22, v8, v22

    add-int v22, v22, v16

    goto :goto_2

    :cond_2
    sub-int v4, v7, v1

    sub-int/2addr v4, v10

    sub-int v4, v4, v24

    sub-int v22, v4, v16

    :goto_2
    move/from16 v4, v22

    add-int v17, v9, v17

    add-int v17, v17, v21

    add-int v17, v17, v0

    add-int v0, v17, v23

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v1, v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v3, v5, :cond_4

    :cond_3
    const/high16 v5, 0x40000000    # 2.0f

    .line 48
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/view/View;->measure(II)V

    :cond_4
    add-int/2addr v1, v4

    add-int/2addr v3, v0

    .line 49
    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v12, p3

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->b()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, LPf;->i()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v0}, LPf;->i()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    neg-int v0, v1

    add-int/2addr v0, p1

    .line 7
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 8
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    neg-int v3, v2

    add-int/2addr v3, p2

    .line 9
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 10
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x1

    .line 11
    invoke-virtual {p0, v0, v3, v4}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 12
    iget v4, p0, Landroid/support/v7/widget/GridLayout;->y:I

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 13
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    invoke-virtual {v4, v0}, LPf;->a(I)I

    move-result v4

    .line 14
    invoke-virtual {p0, v0, v3, v5}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 15
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v0, v3}, LPf;->a(I)I

    move-result v0

    move v6, v4

    move v4, v0

    move v0, v6

    goto :goto_0

    .line 16
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->x:LPf;

    invoke-virtual {v4, v3}, LPf;->a(I)I

    move-result v4

    .line 17
    invoke-virtual {p0, v0, v3, v5}, Landroid/support/v7/widget/GridLayout;->a(IIZ)V

    .line 18
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout;->w:LPf;

    invoke-virtual {v3, v0}, LPf;->a(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v4, v2

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 21
    invoke-static {v0, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 22
    invoke-static {v1, p2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->c()V

    return-void
.end method
