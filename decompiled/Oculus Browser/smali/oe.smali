.class public Loe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lye;

.field public c:I

.field public d:LLh;

.field public e:LLh;

.field public f:LLh;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Loe;->c:I

    .line 3
    iput-object p1, p0, Loe;->a:Landroid/view/View;

    .line 4
    invoke-static {}, Lye;->a()Lye;

    move-result-object p1

    iput-object p1, p0, Loe;->b:Lye;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 28
    iget-object v0, p0, Loe;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 29
    iget-object v1, p0, Loe;->d:LLh;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 30
    iget-object v1, p0, Loe;->f:LLh;

    if-nez v1, :cond_1

    .line 31
    new-instance v1, LLh;

    invoke-direct {v1}, LLh;-><init>()V

    iput-object v1, p0, Loe;->f:LLh;

    .line 32
    :cond_1
    iget-object v1, p0, Loe;->f:LLh;

    const/4 v4, 0x0

    .line 33
    iput-object v4, v1, LLh;->a:Landroid/content/res/ColorStateList;

    .line 34
    iput-boolean v3, v1, LLh;->d:Z

    .line 35
    iput-object v4, v1, LLh;->b:Landroid/graphics/PorterDuff$Mode;

    .line 36
    iput-boolean v3, v1, LLh;->c:Z

    .line 37
    iget-object v4, p0, Loe;->a:Landroid/view/View;

    invoke-static {v4}, LA7;->b(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 38
    iput-boolean v2, v1, LLh;->d:Z

    .line 39
    iput-object v4, v1, LLh;->a:Landroid/content/res/ColorStateList;

    .line 40
    :cond_2
    iget-object v4, p0, Loe;->a:Landroid/view/View;

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 42
    iput-boolean v2, v1, LLh;->c:Z

    .line 43
    iput-object v4, v1, LLh;->b:Landroid/graphics/PorterDuff$Mode;

    .line 44
    :cond_3
    iget-boolean v4, v1, LLh;->d:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, LLh;->c:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 45
    :cond_5
    :goto_1
    iget-object v3, p0, Loe;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-static {v0, v1, v3}, Lye;->a(Landroid/graphics/drawable/Drawable;LLh;[I)V

    :goto_2
    if-eqz v2, :cond_6

    return-void

    .line 46
    :cond_6
    iget-object v1, p0, Loe;->e:LLh;

    if-eqz v1, :cond_7

    .line 47
    iget-object v2, p0, Loe;->a:Landroid/view/View;

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 49
    invoke-static {v0, v1, v2}, Lye;->a(Landroid/graphics/drawable/Drawable;LLh;[I)V

    goto :goto_3

    .line 50
    :cond_7
    iget-object v1, p0, Loe;->d:LLh;

    if-eqz v1, :cond_8

    .line 51
    iget-object v2, p0, Loe;->a:Landroid/view/View;

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lye;->a(Landroid/graphics/drawable/Drawable;LLh;[I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 18
    iput p1, p0, Loe;->c:I

    .line 19
    iget-object v0, p0, Loe;->b:Lye;

    if-eqz v0, :cond_0

    iget-object v1, p0, Loe;->a:Landroid/view/View;

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lye;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Loe;->a(Landroid/content/res/ColorStateList;)V

    .line 22
    invoke-virtual {p0}, Loe;->a()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Loe;->d:LLh;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, LLh;

    invoke-direct {v0}, LLh;-><init>()V

    iput-object v0, p0, Loe;->d:LLh;

    .line 56
    :cond_0
    iget-object v0, p0, Loe;->d:LLh;

    iput-object p1, v0, LLh;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, v0, LLh;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Loe;->d:LLh;

    .line 59
    :goto_0
    invoke-virtual {p0}, Loe;->a()V

    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 23
    iget-object v0, p0, Loe;->e:LLh;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, LLh;

    invoke-direct {v0}, LLh;-><init>()V

    iput-object v0, p0, Loe;->e:LLh;

    .line 25
    :cond_0
    iget-object v0, p0, Loe;->e:LLh;

    iput-object p1, v0, LLh;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, v0, LLh;->c:Z

    .line 27
    invoke-virtual {p0}, Loe;->a()V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Loe;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LeS;->X0:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, LNh;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)LNh;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1, v2}, LNh;->e(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, v2, v0}, LNh;->f(II)I

    move-result p2

    iput p2, p0, Loe;->c:I

    .line 4
    iget-object p2, p0, Loe;->b:Lye;

    iget-object v1, p0, Loe;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Loe;->c:I

    invoke-virtual {p2, v1, v2}, Lye;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Loe;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, LNh;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Loe;->a:Landroid/view/View;

    .line 9
    invoke-virtual {p1, p2}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 10
    invoke-static {v1, p2}, LA7;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 p2, 0x2

    .line 11
    invoke-virtual {p1, p2}, LNh;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Loe;->a:Landroid/view/View;

    .line 13
    invoke-virtual {p1, p2, v0}, LNh;->d(II)I

    move-result p2

    const/4 v0, 0x0

    .line 14
    invoke-static {p2, v0}, Lmf;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 15
    invoke-static {v1, p2}, LA7;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    iget-object p1, p1, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    iget-object p1, p1, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    throw p2
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 1

    .line 6
    iget-object v0, p0, Loe;->e:LLh;

    if-eqz v0, :cond_0

    iget-object v0, v0, LLh;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Loe;->e:LLh;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LLh;

    invoke-direct {v0}, LLh;-><init>()V

    iput-object v0, p0, Loe;->e:LLh;

    .line 3
    :cond_0
    iget-object v0, p0, Loe;->e:LLh;

    iput-object p1, v0, LLh;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, LLh;->d:Z

    .line 5
    invoke-virtual {p0}, Loe;->a()V

    return-void
.end method

.method public c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Loe;->e:LLh;

    if-eqz v0, :cond_0

    iget-object v0, v0, LLh;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Loe;->c:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Loe;->a(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Loe;->a()V

    return-void
.end method
