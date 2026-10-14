.class public Landroid/support/v4/a/a/n;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/a/a/r;

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

    const-class v0, Landroid/content/res/Configuration;

    sput-object v0, Landroid/support/v4/a/a/n;->b:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/a/a/q;

    invoke-direct {v0, v1}, Landroid/support/v4/a/a/q;-><init>(Landroid/support/v4/a/a/o;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/a/a/p;

    invoke-direct {v0, v1}, Landroid/support/v4/a/a/p;-><init>(Landroid/support/v4/a/a/o;)V

    :goto_0
    sput-object v0, Landroid/support/v4/a/a/n;->a:Landroid/support/v4/a/a/r;

    return-void
.end method

.method public static a(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/n;->a:Landroid/support/v4/a/a/r;

    invoke-interface {v0, p0}, Landroid/support/v4/a/a/r;->a(Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/n;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static b(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/n;->a:Landroid/support/v4/a/a/r;

    invoke-interface {v0, p0}, Landroid/support/v4/a/a/r;->b(Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method
