.class public final Lb/a/b/c;
.super Lb/a/e/s;

# interfaces
.implements Lb/o;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lb/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:J

.field private final g:Lb/p;

.field private final h:Lb/bh;

.field private i:Ljava/net/Socket;

.field private j:Ljava/net/Socket;

.field private k:Lb/af;

.field private l:Lb/au;

.field private m:Lb/a/e/j;

.field private n:Lc/j;

.field private o:Lc/i;


# direct methods
.method public constructor <init>(Lb/p;Lb/bh;)V
    .locals 2

    invoke-direct {p0}, Lb/a/e/s;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lb/a/b/c;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/b/c;->d:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lb/a/b/c;->e:J

    iput-object p1, p0, Lb/a/b/c;->g:Lb/p;

    iput-object p2, p0, Lb/a/b/c;->h:Lb/bh;

    return-void
.end method

.method private a(IILb/ax;Lb/ai;)Lb/ax;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lb/a/c;->a(Lb/ai;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    new-instance v0, Lb/a/d/a;

    iget-object v1, p0, Lb/a/b/c;->n:Lc/j;

    iget-object v2, p0, Lb/a/b/c;->o:Lc/i;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lb/a/d/a;-><init>(Lb/ar;Lb/a/b/g;Lc/j;Lc/i;)V

    iget-object v1, p0, Lb/a/b/c;->n:Lc/j;

    invoke-interface {v1}, Lc/j;->a()Lc/ab;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lc/ab;->a(JLjava/util/concurrent/TimeUnit;)Lc/ab;

    iget-object v1, p0, Lb/a/b/c;->o:Lc/i;

    invoke-interface {v1}, Lc/i;->a()Lc/ab;

    move-result-object v1

    int-to-long v4, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lc/ab;->a(JLjava/util/concurrent/TimeUnit;)Lc/ab;

    invoke-virtual {p3}, Lb/ax;->c()Lb/ag;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lb/a/d/a;->a(Lb/ag;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/d/a;->b()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/d/a;->a(Z)Lb/bd;

    move-result-object v1

    invoke-virtual {v1, p3}, Lb/bd;->a(Lb/ax;)Lb/bd;

    move-result-object p3

    invoke-virtual {p3}, Lb/bd;->a()Lb/bc;

    move-result-object p3

    invoke-static {p3}, Lb/a/c/f;->a(Lb/bc;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    const-wide/16 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lb/a/d/a;->b(J)Lc/aa;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lb/a/c;->b(Lc/aa;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lc/aa;->close()V

    invoke-virtual {p3}, Lb/bc;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->a()Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->d()Lb/b;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-interface {v0, v1, p3}, Lb/b;->a(Lb/bh;Lb/bc;)Lb/ax;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    invoke-virtual {p3, v1}, Lb/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto/16 :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lb/bc;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lb/a/b/c;->n:Lc/j;

    invoke-interface {p1}, Lc/j;->c()Lc/f;

    move-result-object p1

    invoke-virtual {p1}, Lc/f;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lb/a/b/c;->o:Lc/i;

    invoke-interface {p1}, Lc/i;->c()Lc/f;

    move-result-object p1

    invoke-virtual {p1}, Lc/f;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lb/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    iget-object v0, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object p2

    iget-object v0, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lb/a/g/h;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    invoke-static {p1}, Lc/p;->b(Ljava/net/Socket;)Lc/aa;

    move-result-object p1

    invoke-static {p1}, Lc/p;->a(Lc/aa;)Lc/j;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c;->n:Lc/j;

    iget-object p1, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    invoke-static {p1}, Lc/p;->a(Ljava/net/Socket;)Lc/z;

    move-result-object p1

    invoke-static {p1}, Lc/p;->a(Lc/z;)Lc/i;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c;->o:Lc/i;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "throw with null exception"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method private a(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lb/a/b/c;->g()Lb/ax;

    move-result-object v0

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    invoke-direct {p0, p1, p2}, Lb/a/b/c;->a(II)V

    invoke-direct {p0, p2, p3, v0, v1}, Lb/a/b/c;->a(IILb/ax;Lb/ai;)Lb/ax;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v3}, Lb/a/c;->a(Ljava/net/Socket;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    iput-object v3, p0, Lb/a/b/c;->o:Lc/i;

    iput-object v3, p0, Lb/a/b/c;->n:Lc/j;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many tunnel connections attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lb/a/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->a()Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lb/au;->b:Lb/au;

    iput-object p1, p0, Lb/a/b/c;->l:Lb/au;

    iget-object p1, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    iput-object p1, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lb/a/b/c;->b(Lb/a/b/b;)V

    iget-object p1, p0, Lb/a/b/c;->l:Lb/au;

    sget-object v0, Lb/au;->d:Lb/au;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance p1, Lb/a/e/r;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lb/a/e/r;-><init>(Z)V

    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/a/b/c;->n:Lc/j;

    iget-object v3, p0, Lb/a/b/c;->o:Lc/i;

    invoke-virtual {p1, v0, v1, v2, v3}, Lb/a/e/r;->a(Ljava/net/Socket;Ljava/lang/String;Lc/j;Lc/i;)Lb/a/e/r;

    move-result-object p1

    invoke-virtual {p1, p0}, Lb/a/e/r;->a(Lb/a/e/s;)Lb/a/e/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/e/r;->a()Lb/a/e/j;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c;->m:Lb/a/e/j;

    iget-object p1, p0, Lb/a/b/c;->m:Lb/a/e/j;

    invoke-virtual {p1}, Lb/a/e/j;->c()V

    :cond_1
    return-void
.end method

.method private b(Lb/a/b/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->a()Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Lb/a;->a()Lb/ai;

    move-result-object v4

    invoke-virtual {v4}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lb/a;->a()Lb/ai;

    move-result-object v5

    invoke-virtual {v5}, Lb/ai;->g()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Lb/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)Lb/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/r;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object v3

    invoke-virtual {v0}, Lb/a;->a()Lb/ai;

    move-result-object v4

    invoke-virtual {v4}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lb/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lb/a/g/h;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lb/af;->a(Ljavax/net/ssl/SSLSession;)Lb/af;

    move-result-object v3

    invoke-virtual {v0}, Lb/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v0}, Lb/a;->a()Lb/ai;

    move-result-object v5

    invoke-virtual {v5}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lb/a;->k()Lb/j;

    move-result-object v4

    invoke-virtual {v0}, Lb/a;->a()Lb/ai;

    move-result-object v0

    invoke-virtual {v0}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lb/af;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lb/j;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lb/r;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/a/g/h;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v1, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    iget-object p1, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-static {p1}, Lc/p;->b(Ljava/net/Socket;)Lc/aa;

    move-result-object p1

    invoke-static {p1}, Lc/p;->a(Lc/aa;)Lc/j;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c;->n:Lc/j;

    iget-object p1, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-static {p1}, Lc/p;->a(Ljava/net/Socket;)Lc/z;

    move-result-object p1

    invoke-static {p1}, Lc/p;->a(Lc/z;)Lc/i;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c;->o:Lc/i;

    iput-object v3, p0, Lb/a/b/c;->k:Lb/af;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lb/au;->a(Ljava/lang/String;)Lb/au;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lb/au;->b:Lb/au;

    :goto_0
    iput-object p1, p0, Lb/a/b/c;->l:Lb/au;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/a/g/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_3
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lb/af;->b()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb/a;->a()Lb/ai;

    move-result-object v0

    invoke-virtual {v0}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb/j;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb/a/i/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_3
    invoke-static {p1}, Lb/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/a/g/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_6
    invoke-static {v1}, Lb/a/c;->a(Ljava/net/Socket;)V

    throw p1
.end method

.method private g()Lb/ax;
    .locals 3

    new-instance v0, Lb/ay;

    invoke-direct {v0}, Lb/ay;-><init>()V

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ay;->a(Lb/ai;)Lb/ay;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lb/a/c;->a(Lb/ai;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    move-result-object v0

    invoke-static {}, Lb/a/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    move-result-object v0

    invoke-virtual {v0}, Lb/ay;->a()Lb/ax;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lb/ar;Lb/a/b/g;)Lb/a/c/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/c;->m:Lb/a/e/j;

    if-eqz v0, :cond_0

    new-instance v1, Lb/a/e/h;

    invoke-direct {v1, p1, p2, v0}, Lb/a/e/h;-><init>(Lb/ar;Lb/a/b/g;Lb/a/e/j;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {p1}, Lb/ar;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lb/a/b/c;->n:Lc/j;

    invoke-interface {v0}, Lc/j;->a()Lc/ab;

    move-result-object v0

    invoke-virtual {p1}, Lb/ar;->b()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lc/ab;->a(JLjava/util/concurrent/TimeUnit;)Lc/ab;

    iget-object v0, p0, Lb/a/b/c;->o:Lc/i;

    invoke-interface {v0}, Lc/i;->a()Lc/ab;

    move-result-object v0

    invoke-virtual {p1}, Lb/ar;->c()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lc/ab;->a(JLjava/util/concurrent/TimeUnit;)Lc/ab;

    new-instance v0, Lb/a/d/a;

    iget-object v1, p0, Lb/a/b/c;->n:Lc/j;

    iget-object v2, p0, Lb/a/b/c;->o:Lc/i;

    invoke-direct {v0, p1, p2, v1, v2}, Lb/a/d/a;-><init>(Lb/ar;Lb/a/b/g;Lc/j;Lc/i;)V

    return-object v0
.end method

.method public a()Lb/bh;
    .locals 1

    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    return-object v0
.end method

.method public a(IIIZ)V
    .locals 5

    iget-object v0, p0, Lb/a/b/c;->l:Lb/au;

    if-nez v0, :cond_7

    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->a()Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lb/a/b/b;

    invoke-direct {v1, v0}, Lb/a/b/b;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v2}, Lb/bh;->a()Lb/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lb/r;->c:Lb/r;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->a()Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->a()Lb/ai;

    move-result-object v0

    invoke-virtual {v0}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/a/g/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lb/a/b/e;

    new-instance p2, Ljava/net/UnknownServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CLEARTEXT communication to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not permitted by network security policy"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lb/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    new-instance p1, Lb/a/b/e;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lb/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    move-object v2, v0

    :goto_1
    :try_start_0
    iget-object v3, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v3}, Lb/bh;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lb/a/b/c;->a(III)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, p2}, Lb/a/b/c;->a(II)V

    :goto_2
    invoke-direct {p0, v1}, Lb/a/b/c;->a(Lb/a/b/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lb/a/b/c;->m:Lb/a/e/j;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lb/a/b/c;->g:Lb/p;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lb/a/b/c;->m:Lb/a/e/j;

    invoke-virtual {p2}, Lb/a/e/j;->a()I

    move-result p2

    iput p2, p0, Lb/a/b/c;->c:I

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_4
    :goto_3
    return-void

    :catch_0
    move-exception v3

    iget-object v4, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v4}, Lb/a/c;->a(Ljava/net/Socket;)V

    iget-object v4, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v4}, Lb/a/c;->a(Ljava/net/Socket;)V

    iput-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    iput-object v0, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    iput-object v0, p0, Lb/a/b/c;->n:Lc/j;

    iput-object v0, p0, Lb/a/b/c;->o:Lc/i;

    iput-object v0, p0, Lb/a/b/c;->k:Lb/af;

    iput-object v0, p0, Lb/a/b/c;->l:Lb/au;

    iput-object v0, p0, Lb/a/b/c;->m:Lb/a/e/j;

    if-nez v2, :cond_5

    new-instance v2, Lb/a/b/e;

    invoke-direct {v2, v3}, Lb/a/b/e;-><init>(Ljava/io/IOException;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v3}, Lb/a/b/e;->a(Ljava/io/IOException;)V

    :goto_4
    if-eqz p4, :cond_6

    invoke-virtual {v1, v3}, Lb/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    throw v2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/a/e/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a/e/b;->e:Lb/a/e/b;

    invoke-virtual {p1, v0}, Lb/a/e/ab;->a(Lb/a/e/b;)V

    return-void
.end method

.method public a(Lb/a/e/j;)V
    .locals 1

    iget-object v0, p0, Lb/a/b/c;->g:Lb/p;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lb/a/e/j;->a()I

    move-result p1

    iput p1, p0, Lb/a/b/c;->c:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lb/a;Lb/bh;)Z
    .locals 4
    .param p2    # Lb/bh;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lb/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lb/a/b/c;->c:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lb/a/b/c;->a:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lb/a/a;->a:Lb/a/a;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lb/a/a;->a(Lb/a;Lb/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lb/a;->a()Lb/ai;

    move-result-object v0

    invoke-virtual {v0}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/b/c;->a()Lb/bh;

    move-result-object v1

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lb/a/b/c;->m:Lb/a/e/j;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    :cond_4
    invoke-virtual {p2}, Lb/bh;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v0}, Lb/bh;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lb/bh;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p2}, Lb/bh;->a()Lb/a;

    move-result-object p2

    invoke-virtual {p2}, Lb/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lb/a/i/d;->a:Lb/a/i/d;

    if-eq p2, v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p1}, Lb/a;->a()Lb/ai;

    move-result-object p2

    invoke-virtual {p0, p2}, Lb/a/b/c;->a(Lb/ai;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lb/a;->k()Lb/j;

    move-result-object p2

    invoke-virtual {p1}, Lb/a;->a()Lb/ai;

    move-result-object p1

    invoke-virtual {p1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lb/a/b/c;->e()Lb/af;

    move-result-object v0

    invoke-virtual {v0}, Lb/af;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lb/j;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public a(Lb/ai;)Z
    .locals 4

    invoke-virtual {p1}, Lb/ai;->g()I

    move-result v0

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v1}, Lb/ai;->g()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/b/c;->k:Lb/af;

    if-eqz v0, :cond_1

    sget-object v0, Lb/a/i/d;->a:Lb/a/i/d;

    invoke-virtual {p1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lb/a/b/c;->k:Lb/af;

    invoke-virtual {v3}, Lb/af;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, v3}, Lb/a/i/d;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public a(Z)Z
    .locals 4

    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/b/c;->m:Lb/a/e/j;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/a/e/j;->d()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lb/a/b/c;->n:Lc/j;

    invoke-interface {v0}, Lc/j;->f()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public b()Lb/au;
    .locals 1

    iget-object v0, p0, Lb/a/b/c;->l:Lb/au;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lb/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void
.end method

.method public d()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lb/a/b/c;->j:Ljava/net/Socket;

    return-object v0
.end method

.method public e()Lb/af;
    .locals 1

    iget-object v0, p0, Lb/a/b/c;->k:Lb/af;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lb/a/b/c;->m:Lb/a/e/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->a()Lb/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v1}, Lb/ai;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c;->h:Lb/bh;

    invoke-virtual {v1}, Lb/bh;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c;->k:Lb/af;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/af;->a()Lb/m;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c;->l:Lb/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
