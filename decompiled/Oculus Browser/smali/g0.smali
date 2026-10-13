.class public Lg0;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PG"


# instance fields
.field public a:Ld0;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public final q:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lg0;->b:Z

    .line 3
    iput p1, p0, Lg0;->c:I

    .line 4
    iput p1, p0, Lg0;->d:I

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lg0;->e:I

    .line 6
    iput p2, p0, Lg0;->f:I

    .line 7
    iput p1, p0, Lg0;->g:I

    .line 8
    iput p1, p0, Lg0;->h:I

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lg0;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lg0;->b:Z

    .line 12
    iput v0, p0, Lg0;->c:I

    .line 13
    iput v0, p0, Lg0;->d:I

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lg0;->e:I

    .line 15
    iput v1, p0, Lg0;->f:I

    .line 16
    iput v0, p0, Lg0;->g:I

    .line 17
    iput v0, p0, Lg0;->h:I

    .line 18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lg0;->q:Landroid/graphics/Rect;

    .line 19
    sget-object v2, LeS;->O:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lg0;->c:I

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lg0;->f:I

    const/4 v3, 0x2

    .line 22
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lg0;->d:I

    const/4 v3, 0x6

    .line 23
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lg0;->e:I

    const/4 v1, 0x5

    .line 24
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lg0;->g:I

    const/4 v1, 0x4

    .line 25
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lg0;->h:I

    const/4 v0, 0x3

    .line 26
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lg0;->b:Z

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Ld0;

    move-result-object p1

    iput-object p1, p0, Lg0;->a:Ld0;

    .line 28
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    iget-object p1, p0, Lg0;->a:Ld0;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lg0;->b:Z

    .line 50
    iput p1, p0, Lg0;->c:I

    .line 51
    iput p1, p0, Lg0;->d:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lg0;->e:I

    .line 53
    iput v0, p0, Lg0;->f:I

    .line 54
    iput p1, p0, Lg0;->g:I

    .line 55
    iput p1, p0, Lg0;->h:I

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lg0;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lg0;->b:Z

    .line 41
    iput p1, p0, Lg0;->c:I

    .line 42
    iput p1, p0, Lg0;->d:I

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lg0;->e:I

    .line 44
    iput v0, p0, Lg0;->f:I

    .line 45
    iput p1, p0, Lg0;->g:I

    .line 46
    iput p1, p0, Lg0;->h:I

    .line 47
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lg0;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lg0;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lg0;->b:Z

    .line 32
    iput p1, p0, Lg0;->c:I

    .line 33
    iput p1, p0, Lg0;->d:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lg0;->e:I

    .line 35
    iput v0, p0, Lg0;->f:I

    .line 36
    iput p1, p0, Lg0;->g:I

    .line 37
    iput p1, p0, Lg0;->h:I

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lg0;->q:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean p2, p0, Lg0;->o:Z

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean p2, p0, Lg0;->n:Z

    :goto_0
    return-void
.end method

.method public a(Ld0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg0;->a:Ld0;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lg0;->a:Ld0;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lg0;->b:Z

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-boolean p1, p0, Lg0;->o:Z

    return p1

    .line 7
    :cond_1
    iget-boolean p1, p0, Lg0;->n:Z

    return p1
.end method
