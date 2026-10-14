.class Lb/a/e/ae;
.super Lc/a;


# instance fields
.field final synthetic a:Lb/a/e/ab;


# direct methods
.method constructor <init>(Lb/a/e/ab;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/ae;->a:Lb/a/e/ab;

    invoke-direct {p0}, Lc/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Lb/a/e/ae;->a:Lb/a/e/ab;

    sget-object v1, Lb/a/e/b;->f:Lb/a/e/b;

    invoke-virtual {v0, v1}, Lb/a/e/ab;->b(Lb/a/e/b;)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/a/e/ae;->e_()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/e/ae;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
