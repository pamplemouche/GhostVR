.class public Landroid/support/v4/os/h;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/os/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/os/j;

    invoke-direct {v0}, Landroid/support/v4/os/j;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/os/i;

    invoke-direct {v0}, Landroid/support/v4/os/i;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/os/h;->a:Landroid/support/v4/os/k;

    return-void
.end method

.method public static a(Z)Z
    .locals 1

    sget-object v0, Landroid/support/v4/os/h;->a:Landroid/support/v4/os/k;

    invoke-interface {v0, p0}, Landroid/support/v4/os/k;->a(Z)Z

    move-result p0

    return p0
.end method
