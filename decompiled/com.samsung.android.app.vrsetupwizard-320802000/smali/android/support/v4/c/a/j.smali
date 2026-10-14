.class public Landroid/support/v4/c/a/j;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/c/a/m;

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

    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    sput-object v0, Landroid/support/v4/c/a/j;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/c/a/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/c/a/l;-><init>(Landroid/support/v4/c/a/k;)V

    sput-object v0, Landroid/support/v4/c/a/j;->a:Landroid/support/v4/c/a/m;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1

    sget-object v0, Landroid/support/v4/c/a/j;->a:Landroid/support/v4/c/a/m;

    invoke-interface {v0, p0}, Landroid/support/v4/c/a/m;->a(Landroid/graphics/drawable/StateListDrawable;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Landroid/support/v4/c/a/j;->a:Landroid/support/v4/c/a/m;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/c/a/m;->a(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/c/a/j;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static b(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1

    sget-object v0, Landroid/support/v4/c/a/j;->a:Landroid/support/v4/c/a/m;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/c/a/m;->b(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object p0

    return-object p0
.end method
