.class Ld/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/av;

.field final synthetic b:Ld/r;


# direct methods
.method constructor <init>(Ld/r;Ld/av;)V
    .locals 0

    iput-object p1, p0, Ld/s;->b:Ld/r;

    iput-object p2, p0, Ld/s;->a:Ld/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ld/s;->b:Ld/r;

    iget-object v0, v0, Ld/r;->b:Ld/q;

    iget-object v0, v0, Ld/q;->b:Ld/g;

    invoke-interface {v0}, Ld/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/s;->b:Ld/r;

    iget-object v0, v0, Ld/r;->a:Ld/j;

    iget-object v1, p0, Ld/s;->b:Ld/r;

    iget-object v1, v1, Ld/r;->b:Ld/q;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ld/j;->a(Ld/g;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/s;->b:Ld/r;

    iget-object v0, v0, Ld/r;->a:Ld/j;

    iget-object v1, p0, Ld/s;->b:Ld/r;

    iget-object v1, v1, Ld/r;->b:Ld/q;

    iget-object v2, p0, Ld/s;->a:Ld/av;

    invoke-interface {v0, v1, v2}, Ld/j;->a(Ld/g;Ld/av;)V

    :goto_0
    return-void
.end method
