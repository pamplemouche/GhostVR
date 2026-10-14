.class public Landroid/support/v4/d/a/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/d/a/e;

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

    const-class v0, Landroid/hardware/input/InputManager;

    sput-object v0, Landroid/support/v4/d/a/a;->b:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/d/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/d/a/d;-><init>(Landroid/support/v4/d/a/b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/d/a/c;

    invoke-direct {v0}, Landroid/support/v4/d/a/c;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/d/a/a;->a:Landroid/support/v4/d/a/e;

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/d/a/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Landroid/support/v4/d/a/a;->a:Landroid/support/v4/d/a/e;

    invoke-interface {v0, p0}, Landroid/support/v4/d/a/e;->a(I)V

    return-void
.end method
