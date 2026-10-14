.class public Lc/m;
.super Lc/ab;


# instance fields
.field private a:Lc/ab;


# direct methods
.method public constructor <init>(Lc/ab;)V
    .locals 1

    invoke-direct {p0}, Lc/ab;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/m;->a:Lc/ab;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lc/ab;
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    return-object v0
.end method

.method public a(J)Lc/ab;
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0, p1, p2}, Lc/ab;->a(J)Lc/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lc/ab;
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0, p1, p2, p3}, Lc/ab;->a(JLjava/util/concurrent/TimeUnit;)Lc/ab;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/ab;)Lc/m;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/m;->a:Lc/ab;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lc/ab;
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->f()Lc/ab;

    move-result-object v0

    return-object v0
.end method

.method public f_()J
    .locals 2

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->f_()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->g()V

    return-void
.end method

.method public g_()Z
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->g_()Z

    move-result v0

    return v0
.end method

.method public h_()Lc/ab;
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->h_()Lc/ab;

    move-result-object v0

    return-object v0
.end method
