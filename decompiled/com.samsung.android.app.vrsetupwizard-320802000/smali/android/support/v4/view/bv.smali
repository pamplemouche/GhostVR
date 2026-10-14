.class final Landroid/support/v4/view/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/view/ca;",
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
.method public a(Landroid/support/v4/view/ca;Landroid/support/v4/view/ca;)I
    .locals 0

    iget p1, p1, Landroid/support/v4/view/ca;->b:I

    iget p2, p2, Landroid/support/v4/view/ca;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v4/view/ca;

    check-cast p2, Landroid/support/v4/view/ca;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/bv;->a(Landroid/support/v4/view/ca;Landroid/support/v4/view/ca;)I

    move-result p1

    return p1
.end method
