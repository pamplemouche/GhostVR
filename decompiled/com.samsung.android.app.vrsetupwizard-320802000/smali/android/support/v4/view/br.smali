.class public final Landroid/support/v4/view/br;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/bt;

    invoke-direct {v0}, Landroid/support/v4/view/bt;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/view/br;->a:Landroid/support/v4/view/bu;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/bs;

    invoke-direct {v0}, Landroid/support/v4/view/bs;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/bu;

    invoke-direct {v0}, Landroid/support/v4/view/bu;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/br;->a:Landroid/support/v4/view/bu;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bu;->a(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
