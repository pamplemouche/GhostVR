.class final Ld/w;
.super Lb/be;


# instance fields
.field a:Ljava/io/IOException;

.field private final b:Lb/be;


# direct methods
.method constructor <init>(Lb/be;)V
    .locals 0

    invoke-direct {p0}, Lb/be;-><init>()V

    iput-object p1, p0, Ld/w;->b:Lb/be;

    return-void
.end method


# virtual methods
.method public a()Lb/an;
    .locals 1

    iget-object v0, p0, Ld/w;->b:Lb/be;

    invoke-virtual {v0}, Lb/be;->a()Lb/an;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Ld/w;->b:Lb/be;

    invoke-virtual {v0}, Lb/be;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lc/j;
    .locals 2

    new-instance v0, Ld/x;

    iget-object v1, p0, Ld/w;->b:Lb/be;

    invoke-virtual {v1}, Lb/be;->c()Lc/j;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ld/x;-><init>(Ld/w;Lc/aa;)V

    invoke-static {v0}, Lc/p;->a(Lc/aa;)Lc/j;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ld/w;->b:Lb/be;

    invoke-virtual {v0}, Lb/be;->close()V

    return-void
.end method

.method e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/w;->a:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method
