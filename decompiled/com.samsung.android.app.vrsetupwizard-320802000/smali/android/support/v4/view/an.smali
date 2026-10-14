.class public Landroid/support/v4/view/an;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String; = "android.view.PointerIcon"

.field static final b:Landroid/support/v4/view/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/view/aq;

    invoke-direct {v0, v1}, Landroid/support/v4/view/aq;-><init>(Landroid/support/v4/view/ao;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/view/ap;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ap;-><init>(Landroid/support/v4/view/ao;)V

    :goto_0
    sput-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    invoke-interface {v0}, Landroid/support/v4/view/ar;->a()I

    move-result v0

    return v0
.end method

.method public static b()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    invoke-interface {v0}, Landroid/support/v4/view/ar;->b()I

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    invoke-interface {v0}, Landroid/support/v4/view/ar;->c()I

    move-result v0

    return v0
.end method

.method public static d()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    invoke-interface {v0}, Landroid/support/v4/view/ar;->d()I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    invoke-interface {v0}, Landroid/support/v4/view/ar;->e()I

    move-result v0

    return v0
.end method

.method public static f()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    invoke-interface {v0}, Landroid/support/v4/view/ar;->f()I

    move-result v0

    return v0
.end method

.method public static g()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/an;->b:Landroid/support/v4/view/ar;

    invoke-interface {v0}, Landroid/support/v4/view/ar;->g()I

    move-result v0

    return v0
.end method
