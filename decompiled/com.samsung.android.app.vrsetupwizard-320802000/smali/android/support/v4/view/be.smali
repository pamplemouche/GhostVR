.class public Landroid/support/v4/view/be;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/bo;

    invoke-direct {v0}, Landroid/support/v4/view/bo;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    goto/16 :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/bn;

    invoke-direct {v0}, Landroid/support/v4/view/bn;-><init>()V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/bm;

    invoke-direct {v0}, Landroid/support/v4/view/bm;-><init>()V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/bk;

    invoke-direct {v0}, Landroid/support/v4/view/bk;-><init>()V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/bj;

    invoke-direct {v0}, Landroid/support/v4/view/bj;-><init>()V

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/view/bh;

    invoke-direct {v0}, Landroid/support/v4/view/bh;-><init>()V

    goto :goto_0

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0}, Landroid/support/v4/view/bg;-><init>()V

    goto :goto_0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    new-instance v0, Landroid/support/v4/view/bf;

    invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V

    goto :goto_0

    :cond_8
    new-instance v0, Landroid/support/v4/view/bp;

    invoke-direct {v0}, Landroid/support/v4/view/bp;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/cu;)Landroid/support/v4/view/cu;
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/support/v4/view/cu;)Landroid/support/v4/view/cu;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;F)V

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/bp;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/bp;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a/b;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/z;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Landroid/support/v4/view/z;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->z(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/bp;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/cu;)Landroid/support/v4/view/cu;
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->b(Landroid/view/View;Landroid/support/v4/view/cu;)Landroid/support/v4/view/cu;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->c(Landroid/view/View;)V

    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/view/u;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/u;

    invoke-interface {p0, p1}, Landroid/support/v4/view/u;->a(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/bp;->v(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->d(Landroid/view/View;I)V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->j(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bp;->c(Landroid/view/View;I)V

    return-void
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->k(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->l(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->e(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->f(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)Landroid/support/v4/view/cn;
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->A(Landroid/view/View;)Landroid/support/v4/view/cn;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->s(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static l(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->m(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static n(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->g(Landroid/view/View;)V

    return-void
.end method

.method public static o(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->h(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static p(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->i(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static q(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->n(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->w(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->x(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->u(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static u(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->v(Landroid/view/View;)V

    return-void
.end method

.method public static v(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->p(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static w(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->y(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static x(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->q(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static y(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static z(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    sget-object v0, Landroid/support/v4/view/be;->a:Landroid/support/v4/view/bp;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bp;->o(Landroid/view/View;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method
