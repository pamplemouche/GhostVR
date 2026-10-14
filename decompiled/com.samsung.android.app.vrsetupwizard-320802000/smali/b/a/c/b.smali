.class public final Lb/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/al;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/a/c/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lb/am;)Lb/bc;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lb/a/c/h;

    invoke-virtual {p1}, Lb/a/c/h;->d()Lb/a/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/c/h;->c()Lb/a/b/g;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/c/h;->b()Lb/o;

    move-result-object v2

    check-cast v2, Lb/a/b/c;

    invoke-virtual {p1}, Lb/a/c/h;->a()Lb/ax;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, p1}, Lb/a/c/c;->a(Lb/ax;)V

    invoke-virtual {p1}, Lb/ax;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lb/a/c/g;->c(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lb/ax;->d()Lb/az;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "Expect"

    invoke-virtual {p1, v5}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "100-continue"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lb/a/c/c;->a()V

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lb/a/c/c;->a(Z)Lb/bd;

    move-result-object v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p1}, Lb/ax;->d()Lb/az;

    move-result-object v2

    invoke-virtual {v2}, Lb/az;->b()J

    move-result-wide v7

    invoke-interface {v0, p1, v7, v8}, Lb/a/c/c;->a(Lb/ax;J)Lc/z;

    move-result-object v2

    invoke-static {v2}, Lc/p;->a(Lc/z;)Lc/i;

    move-result-object v2

    invoke-virtual {p1}, Lb/ax;->d()Lb/az;

    move-result-object v5

    invoke-virtual {v5, v2}, Lb/az;->a(Lc/i;)V

    invoke-interface {v2}, Lc/i;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lb/a/b/c;->f()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lb/a/b/g;->d()V

    :cond_2
    :goto_0
    invoke-interface {v0}, Lb/a/c/c;->b()V

    if-nez v6, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lb/a/c/c;->a(Z)Lb/bd;

    move-result-object v6

    :cond_3
    invoke-virtual {v6, p1}, Lb/bd;->a(Lb/ax;)Lb/bd;

    move-result-object p1

    invoke-virtual {v1}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/b/c;->e()Lb/af;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb/bd;->a(Lb/af;)Lb/bd;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lb/bd;->a(J)Lb/bd;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lb/bd;->b(J)Lb/bd;

    move-result-object p1

    invoke-virtual {p1}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    invoke-virtual {p1}, Lb/bc;->b()I

    move-result v2

    iget-boolean v3, p0, Lb/a/c/b;->a:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lb/bc;->h()Lb/bd;

    move-result-object p1

    sget-object v0, Lb/a/c;->c:Lb/be;

    invoke-virtual {p1, v0}, Lb/bd;->a(Lb/be;)Lb/bd;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lb/bc;->h()Lb/bd;

    move-result-object v3

    invoke-interface {v0, p1}, Lb/a/c/c;->a(Lb/bc;)Lb/be;

    move-result-object p1

    invoke-virtual {v3, p1}, Lb/bd;->a(Lb/be;)Lb/bd;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object v0

    const-string v3, "Connection"

    invoke-virtual {v0, v3}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "close"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v3}, Lb/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {v1}, Lb/a/b/g;->d()V

    :cond_6
    const/16 v0, 0xcc

    if-eq v2, v0, :cond_7

    const/16 v0, 0xcd

    if-ne v2, v0, :cond_8

    :cond_7
    invoke-virtual {p1}, Lb/bc;->g()Lb/be;

    move-result-object v0

    invoke-virtual {v0}, Lb/be;->b()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_9

    :cond_8
    return-object p1

    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/bc;->g()Lb/be;

    move-result-object p1

    invoke-virtual {p1}, Lb/be;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
