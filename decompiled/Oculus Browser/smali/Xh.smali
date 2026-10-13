.class public LXh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZe;


# instance fields
.field public a:Landroid/support/v7/widget/Toolbar;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/Window$Callback;

.field public m:Z

.field public n:Lee;

.field public o:I

.field public p:I

.field public q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LXh;->o:I

    .line 3
    iput v0, p0, LXh;->p:I

    .line 4
    iput-object p1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    .line 5
    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->T:Ljava/lang/CharSequence;

    .line 6
    iput-object v1, p0, LXh;->i:Ljava/lang/CharSequence;

    .line 7
    iget-object v2, p1, Landroid/support/v7/widget/Toolbar;->U:Ljava/lang/CharSequence;

    .line 8
    iput-object v2, p0, LXh;->j:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iput-boolean v1, p0, LXh;->h:Z

    .line 10
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, LXh;->g:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, LeS;->a:[I

    const v3, 0x7f040005

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v3, v0}, LNh;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)LNh;

    move-result-object p1

    const/16 v1, 0xf

    .line 12
    invoke-virtual {p1, v1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LXh;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    const/16 p2, 0x1b

    .line 13
    invoke-virtual {p1, p2}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iput-boolean v2, p0, LXh;->h:Z

    .line 16
    iput-object p2, p0, LXh;->i:Ljava/lang/CharSequence;

    .line 17
    iget v1, p0, LXh;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0x19

    .line 19
    invoke-virtual {p1, p2}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    iput-object p2, p0, LXh;->j:Ljava/lang/CharSequence;

    .line 22
    iget v1, p0, LXh;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 23
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 p2, 0x14

    .line 24
    invoke-virtual {p1, p2}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 25
    iput-object p2, p0, LXh;->f:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p0}, LXh;->c()V

    :cond_3
    const/16 p2, 0x11

    .line 27
    invoke-virtual {p1, p2}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 28
    iput-object p2, p0, LXh;->e:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, LXh;->c()V

    .line 30
    :cond_4
    iget-object p2, p0, LXh;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, LXh;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 31
    iput-object p2, p0, LXh;->g:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p0}, LXh;->b()V

    :cond_5
    const/16 p2, 0xa

    .line 33
    invoke-virtual {p1, p2, v0}, LNh;->d(II)I

    move-result p2

    invoke-virtual {p0, p2}, LXh;->a(I)V

    const/16 p2, 0x9

    .line 34
    invoke-virtual {p1, p2, v0}, LNh;->f(II)I

    move-result p2

    if-eqz p2, :cond_8

    .line 35
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 36
    iget-object v1, p0, LXh;->d:Landroid/view/View;

    if-eqz v1, :cond_6

    iget v2, p0, LXh;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 37
    iget-object v2, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    :cond_6
    iput-object p2, p0, LXh;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 39
    iget v1, p0, LXh;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 40
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    :cond_7
    iget p2, p0, LXh;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, LXh;->a(I)V

    :cond_8
    const/16 p2, 0xd

    .line 42
    invoke-virtual {p1, p2, v0}, LNh;->e(II)I

    move-result p2

    if-lez p2, :cond_9

    .line 43
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 44
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    iget-object p2, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const/4 p2, 0x7

    const/4 v1, -0x1

    .line 46
    invoke-virtual {p1, p2, v1}, LNh;->b(II)I

    move-result p2

    const/4 v2, 0x3

    .line 47
    invoke-virtual {p1, v2, v1}, LNh;->b(II)I

    move-result v1

    if-gez p2, :cond_a

    if-ltz v1, :cond_b

    .line 48
    :cond_a
    iget-object v2, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 49
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 50
    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->a()V

    .line 51
    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    invoke-virtual {v2, p2, v1}, Lhh;->a(II)V

    :cond_b
    const/16 p2, 0x1c

    .line 52
    invoke-virtual {p1, p2, v0}, LNh;->f(II)I

    move-result p2

    if-eqz p2, :cond_c

    .line 53
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    :cond_c
    const/16 p2, 0x1a

    .line 54
    invoke-virtual {p1, p2, v0}, LNh;->f(II)I

    move-result p2

    if-eqz p2, :cond_d

    .line 55
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 56
    iput p2, v1, Landroid/support/v7/widget/Toolbar;->I:I

    .line 57
    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 58
    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    const/16 p2, 0x16

    .line 59
    invoke-virtual {p1, p2, v0}, LNh;->f(II)I

    move-result p2

    if-eqz p2, :cond_10

    .line 60
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/Toolbar;->d(I)V

    goto :goto_2

    .line 61
    :cond_e
    iget-object p2, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 62
    iget-object p2, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, LXh;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_f
    const/16 v1, 0xb

    .line 63
    :goto_1
    iput v1, p0, LXh;->b:I

    .line 64
    :cond_10
    :goto_2
    iget-object p1, p1, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    iget p1, p0, LXh;->p:I

    const p2, 0x7f1300ab

    if-ne p2, p1, :cond_11

    goto :goto_4

    .line 66
    :cond_11
    iput p2, p0, LXh;->p:I

    .line 67
    iget-object p1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    .line 68
    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    :cond_12
    move-object p1, v4

    .line 69
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 70
    iget p1, p0, LXh;->p:I

    invoke-virtual {p0, p1}, LXh;->b(I)V

    .line 71
    :cond_13
    :goto_4
    iget-object p1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    .line 72
    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 73
    :cond_14
    iput-object v4, p0, LXh;->k:Ljava/lang/CharSequence;

    .line 74
    iget-object p1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    new-instance p2, LVh;

    invoke-direct {p2, p0}, LVh;-><init>(LXh;)V

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 76
    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(IJ)LR7;
    .locals 2

    .line 23
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, LR7;->a(F)LR7;

    .line 25
    invoke-virtual {v0, p2, p3}, LR7;->a(J)LR7;

    new-instance p2, LWh;

    invoke-direct {p2, p0, p1}, LWh;-><init>(LXh;I)V

    .line 26
    iget-object p1, v0, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {v0, p1, p2}, LR7;->a(Landroid/view/View;LS7;)V

    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 28
    iget v0, p0, LXh;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, LXh;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, LXh;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, LXh;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 1
    iget v0, p0, LXh;->b:I

    xor-int/2addr v0, p1

    .line 2
    iput p1, p0, LXh;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, LXh;->a()V

    .line 4
    :cond_0
    invoke-virtual {p0}, LXh;->b()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, LXh;->c()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, LXh;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, LXh;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, LXh;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Ljh;)V
    .locals 2

    .line 13
    iget-object v0, p0, LXh;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 14
    iget-object v0, p0, LXh;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_0
    iput-object p1, p0, LXh;->c:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 16
    iget v0, p0, LXh;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 18
    iget-object p1, p0, LXh;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LSh;

    const/4 v0, -0x2

    .line 19
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 20
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x800053

    .line 21
    iput v0, p1, Ly8;->a:I

    const/4 p1, 0x0

    .line 22
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 5
    iget v0, p0, LXh;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, LXh;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LXh;->q:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    iput-object p1, p0, LXh;->k:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, LXh;->a()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, LXh;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, LXh;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LXh;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, LXh;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
