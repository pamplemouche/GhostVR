.class public Landroid/support/v4/a/a/j;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/a/a/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/a/a/l;-><init>(Landroid/support/v4/a/a/k;)V

    sput-object v0, Landroid/support/v4/a/a/j;->a:Landroid/support/v4/a/a/m;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;)F
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/j;->a:Landroid/support/v4/a/a/m;

    invoke-interface {v0, p0}, Landroid/support/v4/a/a/m;->a(Landroid/content/res/Resources;)F

    move-result p0

    return p0
.end method
