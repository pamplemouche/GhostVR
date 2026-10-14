.class final La/g/s;
.super La/c/b/k;

# interfaces
.implements La/c/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/b<",
        "La/d/d;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, La/g/s;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La/d/d;

    invoke-virtual {p0, p1}, La/g/s;->a(La/d/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(La/d/d;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/g/s;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, La/g/h;->a(Ljava/lang/CharSequence;La/d/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
