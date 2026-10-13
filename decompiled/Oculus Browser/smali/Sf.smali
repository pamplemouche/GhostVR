.class public LSf;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PG"


# static fields
.field public static final c:LRf;

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I


# instance fields
.field public a:LVf;

.field public b:LVf;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LRf;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, LRf;-><init>(II)V

    sput-object v0, LSf;->c:LRf;

    .line 2
    invoke-virtual {v0}, LRf;->a()I

    move-result v0

    sput v0, LSf;->d:I

    const/4 v0, 0x2

    .line 3
    sput v0, LSf;->e:I

    const/4 v0, 0x3

    .line 4
    sput v0, LSf;->f:I

    const/4 v0, 0x4

    .line 5
    sput v0, LSf;->g:I

    const/4 v0, 0x5

    .line 6
    sput v0, LSf;->h:I

    const/4 v0, 0x6

    .line 7
    sput v0, LSf;->i:I

    const/4 v0, 0x7

    .line 8
    sput v0, LSf;->j:I

    const/16 v0, 0x8

    .line 9
    sput v0, LSf;->k:I

    const/16 v0, 0x9

    .line 10
    sput v0, LSf;->l:I

    const/16 v0, 0xb

    .line 11
    sput v0, LSf;->m:I

    const/16 v0, 0xc

    .line 12
    sput v0, LSf;->n:I

    const/16 v0, 0xd

    .line 13
    sput v0, LSf;->o:I

    const/16 v0, 0xa

    .line 14
    sput v0, LSf;->p:I

    return-void
.end method

.method public constructor <init>(LSf;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 14
    sget-object v0, LVf;->e:LVf;

    iput-object v0, p0, LSf;->a:LVf;

    .line 15
    iput-object v0, p0, LSf;->b:LVf;

    .line 16
    iget-object v0, p1, LSf;->a:LVf;

    iput-object v0, p0, LSf;->a:LVf;

    .line 17
    iget-object p1, p1, LSf;->b:LVf;

    iput-object p1, p0, LSf;->b:LVf;

    return-void
.end method

.method public constructor <init>(LVf;LVf;)V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2
    sget-object v0, LVf;->e:LVf;

    iput-object v0, p0, LSf;->a:LVf;

    .line 3
    iput-object v0, p0, LSf;->b:LVf;

    const/high16 v0, -0x80000000

    .line 4
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5
    iput-object p1, p0, LSf;->a:LVf;

    .line 6
    iput-object p2, p0, LSf;->b:LVf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v0, LVf;->e:LVf;

    iput-object v0, p0, LSf;->a:LVf;

    .line 20
    iput-object v0, p0, LSf;->b:LVf;

    .line 21
    sget-object v0, LeS;->Z:[I

    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    :try_start_0
    sget v1, LSf;->e:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 24
    sget v3, LSf;->f:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    sget v3, LSf;->g:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    sget v3, LSf;->h:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 27
    sget v3, LSf;->i:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    sget-object v0, LeS;->Z:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    :try_start_1
    sget p2, LSf;->p:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 31
    sget v1, LSf;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 32
    sget v3, LSf;->k:I

    sget v4, LSf;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 33
    sget v4, LSf;->l:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v6, 0x1

    .line 34
    invoke-static {p2, v6}, Landroid/support/v7/widget/GridLayout;->a(IZ)LLf;

    move-result-object v6

    invoke-static {v1, v3, v6, v4}, Landroid/support/v7/widget/GridLayout;->a(IILLf;F)LVf;

    move-result-object v1

    iput-object v1, p0, LSf;->b:LVf;

    .line 35
    sget v1, LSf;->m:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 36
    sget v2, LSf;->n:I

    sget v3, LSf;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 37
    sget v3, LSf;->o:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 38
    invoke-static {p2, v0}, Landroid/support/v7/widget/GridLayout;->a(IZ)LLf;

    move-result-object p2

    invoke-static {v1, v2, p2, v3}, Landroid/support/v7/widget/GridLayout;->a(IILLf;F)LVf;

    move-result-object p2

    iput-object p2, p0, LSf;->a:LVf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :catchall_1
    move-exception p1

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    sget-object p1, LVf;->e:LVf;

    iput-object p1, p0, LSf;->a:LVf;

    .line 9
    iput-object p1, p0, LSf;->b:LVf;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11
    sget-object p1, LVf;->e:LVf;

    iput-object p1, p0, LSf;->a:LVf;

    .line 12
    iput-object p1, p0, LSf;->b:LVf;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, LSf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, LSf;

    .line 3
    iget-object v2, p0, LSf;->b:LVf;

    iget-object v3, p1, LSf;->b:LVf;

    invoke-virtual {v2, v3}, LVf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, LSf;->a:LVf;

    iget-object p1, p1, LSf;->a:LVf;

    invoke-virtual {v2, p1}, LVf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, LSf;->a:LVf;

    invoke-virtual {v0}, LVf;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, LSf;->b:LVf;

    invoke-virtual {v1}, LVf;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 2
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-void
.end method
