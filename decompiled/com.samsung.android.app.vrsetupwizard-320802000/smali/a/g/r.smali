.class final La/g/r;
.super La/c/b/k;

# interfaces
.implements La/c/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/c<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "La/f<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, La/g/r;->a:Ljava/util/List;

    iput-boolean p2, p0, La/g/r;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)La/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "La/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/g/r;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-boolean v1, p0, La/g/r;->b:Z

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, La/g/q;->a(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)La/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La/f;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, La/f;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, La/h;->a(Ljava/lang/Object;Ljava/lang/Object;)La/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, La/g/r;->a(Ljava/lang/CharSequence;I)La/f;

    move-result-object p1

    return-object p1
.end method
