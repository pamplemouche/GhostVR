.class public Landroid/support/v4/widget/az;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/widget/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/bb;

    invoke-direct {v0}, Landroid/support/v4/widget/bb;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/widget/ba;

    invoke-direct {v0}, Landroid/support/v4/widget/ba;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0}, Landroid/support/v4/widget/bc;->a()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/bc;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/bc;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public static a(Ljava/lang/Object;II)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/bc;->a(Ljava/lang/Object;II)V

    return-void
.end method

.method public static b()I
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0}, Landroid/support/v4/widget/bc;->b()I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/bc;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public static b(Ljava/lang/Object;II)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/bc;->b(Ljava/lang/Object;II)V

    return-void
.end method

.method public static c()I
    .locals 1

    sget-object v0, Landroid/support/v4/widget/az;->a:Landroid/support/v4/widget/bc;

    invoke-interface {v0}, Landroid/support/v4/widget/bc;->c()I

    move-result v0

    return v0
.end method
