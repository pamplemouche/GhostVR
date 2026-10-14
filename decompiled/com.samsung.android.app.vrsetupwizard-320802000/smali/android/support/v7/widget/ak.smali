.class Landroid/support/v7/widget/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/ap;

.field private c:I

.field private d:Landroid/support/v7/widget/kt;

.field private e:Landroid/support/v7/widget/kt;

.field private f:Landroid/support/v7/widget/kt;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ak;->c:I

    iput-object p1, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-static {}, Landroid/support/v7/widget/ap;->a()Landroid/support/v7/widget/ap;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ak;->b:Landroid/support/v7/widget/ap;

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/kt;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/kt;

    invoke-direct {v0}, Landroid/support/v7/widget/kt;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/kt;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->f:Landroid/support/v7/widget/kt;

    invoke-virtual {v0}, Landroid/support/v7/widget/kt;->a()V

    iget-object v1, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/be;->r(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Landroid/support/v7/widget/kt;->d:Z

    iput-object v1, v0, Landroid/support/v7/widget/kt;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/be;->s(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Landroid/support/v7/widget/kt;->c:Z

    iput-object v1, v0, Landroid/support/v7/widget/kt;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v1, v0, Landroid/support/v7/widget/kt;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroid/support/v7/widget/kt;->c:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/kt;[I)V

    return v2
.end method

.method private d()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/kt;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/kt;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method a(I)V
    .locals 2

    iput p1, p0, Landroid/support/v7/widget/ak;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/ak;->b:Landroid/support/v7/widget/ap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/ap;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->c()V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/kt;

    invoke-direct {v0}, Landroid/support/v7/widget/kt;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    iput-object p1, v0, Landroid/support/v7/widget/kt;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/kt;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->c()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/kt;

    invoke-direct {v0}, Landroid/support/v7/widget/kt;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    iput-object p1, v0, Landroid/support/v7/widget/kt;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/kt;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->c()V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/ak;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->c()V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/b/l;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/kv;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/kv;

    move-result-object p1

    :try_start_0
    sget p2, Landroid/support/v7/b/l;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/kv;->g(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    sget p2, Landroid/support/v7/b/l;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/kv;->g(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ak;->c:I

    iget-object p2, p0, Landroid/support/v7/widget/ak;->b:Landroid/support/v7/widget/ap;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ak;->c:I

    invoke-virtual {p2, v1, v2}, Landroid/support/v7/widget/ap;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ak;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget p2, Landroid/support/v7/b/l;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/kv;->g(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    sget v1, Landroid/support/v7/b/l;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/kv;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p2, Landroid/support/v7/b/l;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/kv;->g(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    sget v1, Landroid/support/v7/b/l;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/kv;->a(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ch;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/kv;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/support/v7/widget/kv;->a()V

    throw p2
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/kt;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/kt;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/kt;

    invoke-direct {v0}, Landroid/support/v7/widget/kt;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/kt;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/kt;

    iput-object p1, v0, Landroid/support/v7/widget/kt;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/widget/kt;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/kt;

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->c()V

    return-void
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ak;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ak;->e:Landroid/support/v7/widget/kt;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/kt;[I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/kt;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ak;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/kt;[I)V

    :cond_2
    :goto_0
    return-void
.end method
