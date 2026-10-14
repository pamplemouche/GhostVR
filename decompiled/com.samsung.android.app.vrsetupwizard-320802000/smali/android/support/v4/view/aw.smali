.class public Landroid/support/v4/view/aw;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/bb;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/View;

    sput-object v0, Landroid/support/v4/view/aw;->b:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/view/ba;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ba;-><init>(Landroid/support/v4/view/ax;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0, v1}, Landroid/support/v4/view/az;-><init>(Landroid/support/v4/view/ax;)V

    :goto_0
    sput-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/view/PointerIcon;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/bb;->a(Landroid/view/View;ILandroid/view/PointerIcon;)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->b(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;Z)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->b(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->c(Landroid/view/View;I)V

    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->d(Landroid/view/View;)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/bb;->d(Landroid/view/View;I)V

    return-void
.end method

.method public static e(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->e(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/bb;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->g(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->f(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static i(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->h(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->i(Landroid/view/View;)V

    return-void
.end method

.method public static k(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aw;->a:Landroid/support/v4/view/bb;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bb;->j(Landroid/view/View;)V

    return-void
.end method
