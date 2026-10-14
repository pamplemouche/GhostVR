.class public Landroid/support/v4/c/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/c/e;

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
    .locals 2

    const-class v0, Landroid/graphics/Paint;

    sput-object v0, Landroid/support/v4/c/b;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/c/d;-><init>(Landroid/support/v4/c/c;)V

    sput-object v0, Landroid/support/v4/c/b;->a:Landroid/support/v4/c/e;

    return-void
.end method

.method public static a(Landroid/graphics/Paint;)F
    .locals 1

    sget-object v0, Landroid/support/v4/c/b;->a:Landroid/support/v4/c/e;

    invoke-interface {v0, p0}, Landroid/support/v4/c/e;->a(Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/c/b;->b:Ljava/lang/Class;

    return-object v0
.end method
