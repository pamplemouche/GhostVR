.class public Landroid/support/v4/widget/bd;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/widget/bh;

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

    const-class v0, Landroid/widget/TextView;

    sput-object v0, Landroid/support/v4/widget/bd;->b:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/widget/bg;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/bg;-><init>(Landroid/support/v4/widget/be;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/widget/bf;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/bf;-><init>(Landroid/support/v4/widget/be;)V

    :goto_0
    sput-object v0, Landroid/support/v4/widget/bd;->a:Landroid/support/v4/widget/bh;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Landroid/support/v4/widget/bd;->a:Landroid/support/v4/widget/bh;

    invoke-interface {v0}, Landroid/support/v4/widget/bh;->a()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/TextView;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/widget/bd;->a:Landroid/support/v4/widget/bh;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/bh;->a(Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Landroid/support/v4/widget/bd;->a:Landroid/support/v4/widget/bh;

    invoke-interface {v0}, Landroid/support/v4/widget/bh;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/bd;->b:Ljava/lang/Class;

    return-object v0
.end method
