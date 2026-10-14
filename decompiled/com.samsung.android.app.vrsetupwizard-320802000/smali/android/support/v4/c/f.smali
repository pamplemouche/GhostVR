.class public Landroid/support/v4/c/f;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/c/i;

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

    const-class v0, Landroid/graphics/Rect;

    sput-object v0, Landroid/support/v4/c/f;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/c/h;-><init>(Landroid/support/v4/c/g;)V

    sput-object v0, Landroid/support/v4/c/f;->a:Landroid/support/v4/c/i;

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/c/f;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/graphics/Rect;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/c/f;->a:Landroid/support/v4/c/i;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/c/i;->a(Landroid/graphics/Rect;F)V

    return-void
.end method
