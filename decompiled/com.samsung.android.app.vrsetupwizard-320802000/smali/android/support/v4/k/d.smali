.class Landroid/support/v4/k/d;
.super Landroid/support/v4/k/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/k/j<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/k/c;


# direct methods
.method constructor <init>(Landroid/support/v4/k/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    invoke-direct {p0}, Landroid/support/v4/k/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    iget v0, v0, Landroid/support/v4/k/c;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/c;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    iget-object p2, p2, Landroid/support/v4/k/c;->g:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/c;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    iget-object p2, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    invoke-virtual {p2, p1}, Landroid/support/v4/k/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/c;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k/d;->a:Landroid/support/v4/k/c;

    invoke-virtual {v0}, Landroid/support/v4/k/c;->clear()V

    return-void
.end method
