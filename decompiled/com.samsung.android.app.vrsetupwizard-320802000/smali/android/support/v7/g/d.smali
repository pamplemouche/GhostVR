.class final Landroid/support/v7/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/g/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/g/i;Landroid/support/v7/g/i;)I
    .locals 2

    iget v0, p1, Landroid/support/v7/g/i;->a:I

    iget v1, p2, Landroid/support/v7/g/i;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Landroid/support/v7/g/i;->b:I

    iget p2, p2, Landroid/support/v7/g/i;->b:I

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v7/g/i;

    check-cast p2, Landroid/support/v7/g/i;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/g/d;->a(Landroid/support/v7/g/i;Landroid/support/v7/g/i;)I

    move-result p1

    return p1
.end method
