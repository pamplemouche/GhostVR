.class public final Lb/a/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lb/al;


# instance fields
.field private final a:Lb/ar;

.field private final b:Z

.field private c:Lb/a/b/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lb/ar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/c/k;->a:Lb/ar;

    iput-boolean p2, p0, Lb/a/c/k;->b:Z

    return-void
.end method

.method private a(Lb/ai;)Lb/a;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lb/ai;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v1}, Lb/ar;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v1}, Lb/ar;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v3}, Lb/ar;->l()Lb/j;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_0
    new-instance v1, Lb/a;

    invoke-virtual/range {p1 .. p1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lb/ai;->g()I

    move-result v6

    iget-object v2, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->h()Lb/x;

    move-result-object v7

    iget-object v2, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->i()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->n()Lb/b;

    move-result-object v12

    iget-object v2, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->d()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->t()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->u()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->e()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lb/a;-><init>(Ljava/lang/String;ILb/x;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lb/j;Lb/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private a(Lb/bc;)Lb/ax;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_11

    iget-object v0, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/o;->a()Lb/bh;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lb/bc;->b()I

    move-result v2

    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object v3

    invoke-virtual {v3}, Lb/ax;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    const-string v5, "GET"

    if-eq v2, v4, :cond_7

    const/16 v4, 0x134

    if-eq v2, v4, :cond_7

    const/16 v4, 0x191

    if-eq v2, v4, :cond_6

    const/16 v4, 0x197

    if-eq v2, v4, :cond_3

    const/16 v0, 0x198

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object v0

    invoke-virtual {v0}, Lb/ax;->d()Lb/az;

    move-result-object v0

    instance-of v0, v0, Lb/a/c/m;

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lb/bh;->b()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v1}, Lb/ar;->d()Ljava/net/Proxy;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v1}, Lb/ar;->n()Lb/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lb/b;->a(Lb/bh;Lb/bc;)Lb/ax;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v1, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v1}, Lb/ar;->m()Lb/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lb/b;->a(Lb/bh;Lb/bc;)Lb/ax;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :pswitch_0
    iget-object v0, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v0}, Lb/ar;->q()Z

    move-result v0

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lb/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object v2

    invoke-virtual {v2}, Lb/ax;->a()Lb/ai;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/ai;->c(Ljava/lang/String;)Lb/ai;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v0}, Lb/ai;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object v4

    invoke-virtual {v4}, Lb/ax;->a()Lb/ai;

    move-result-object v4

    invoke-virtual {v4}, Lb/ai;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->p()Z

    move-result v2

    if-nez v2, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object v2

    invoke-virtual {v2}, Lb/ax;->e()Lb/ay;

    move-result-object v2

    invoke-static {v3}, Lb/a/c/g;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v3}, Lb/a/c/g;->d(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3}, Lb/a/c/g;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v2, v5, v1}, Lb/ay;->a(Ljava/lang/String;Lb/az;)Lb/ay;

    goto :goto_2

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object v1

    invoke-virtual {v1}, Lb/ax;->d()Lb/az;

    move-result-object v1

    :cond_e
    invoke-virtual {v2, v3, v1}, Lb/ay;->a(Ljava/lang/String;Lb/az;)Lb/ay;

    :goto_2
    if-nez v4, :cond_f

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lb/ay;->a(Ljava/lang/String;)Lb/ay;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lb/ay;->a(Ljava/lang/String;)Lb/ay;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lb/ay;->a(Ljava/lang/String;)Lb/ay;

    :cond_f
    invoke-direct {p0, p1, v0}, Lb/a/c/k;->a(Lb/bc;Lb/ai;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "Authorization"

    invoke-virtual {v2, p1}, Lb/ay;->a(Ljava/lang/String;)Lb/ay;

    :cond_10
    invoke-virtual {v2, v0}, Lb/ay;->a(Lb/ai;)Lb/ay;

    move-result-object p1

    invoke-virtual {p1}, Lb/ay;->a()Lb/ax;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lb/bc;Lb/ai;)Z
    .locals 2

    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object p1

    invoke-virtual {p1}, Lb/ax;->a()Lb/ai;

    move-result-object p1

    invoke-virtual {p1}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lb/ai;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/ai;->g()I

    move-result v0

    invoke-virtual {p2}, Lb/ai;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lb/ai;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lb/ai;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/io/IOException;Z)Z
    .locals 3

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private a(Ljava/io/IOException;ZLb/ax;)Z
    .locals 2

    iget-object v0, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {v0, p1}, Lb/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v0}, Lb/ar;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lb/ax;->d()Lb/az;

    move-result-object p3

    instance-of p3, p3, Lb/a/c/m;

    if-eqz p3, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lb/a/c/k;->a(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {p1}, Lb/a/b/g;->f()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lb/am;)Lb/bc;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/am;->a()Lb/ax;

    move-result-object v0

    new-instance v1, Lb/a/b/g;

    iget-object v2, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->o()Lb/p;

    move-result-object v2

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v3

    invoke-direct {p0, v3}, Lb/a/c/k;->a(Lb/ai;)Lb/a;

    move-result-object v3

    iget-object v4, p0, Lb/a/c/k;->d:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lb/a/b/g;-><init>(Lb/p;Lb/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lb/a/c/k;->c:Lb/a/b/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_0
    iget-boolean v5, p0, Lb/a/c/k;->e:Z

    if-nez v5, :cond_a

    :try_start_0
    move-object v5, p1

    check-cast v5, Lb/a/c/h;

    iget-object v6, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {v5, v0, v6, v2, v2}, Lb/a/c/h;->a(Lb/ax;Lb/a/b/g;Lb/a/c/c;Lb/a/b/c;)Lb/bc;

    move-result-object v0
    :try_end_0
    .catch Lb/a/b/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lb/bc;->h()Lb/bd;

    move-result-object v0

    invoke-virtual {v3}, Lb/bc;->h()Lb/bd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lb/bd;->a(Lb/be;)Lb/bd;

    move-result-object v3

    invoke-virtual {v3}, Lb/bd;->a()Lb/bc;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/bd;->c(Lb/bc;)Lb/bd;

    move-result-object v0

    invoke-virtual {v0}, Lb/bd;->a()Lb/bc;

    move-result-object v0

    :cond_0
    move-object v3, v0

    invoke-direct {p0, v3}, Lb/a/c/k;->a(Lb/bc;)Lb/ax;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lb/a/c/k;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {p1}, Lb/a/b/g;->c()V

    :cond_1
    return-object v3

    :cond_2
    invoke-virtual {v3}, Lb/bc;->g()Lb/be;

    move-result-object v5

    invoke-static {v5}, Lb/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    if-gt v4, v5, :cond_6

    invoke-virtual {v0}, Lb/ax;->d()Lb/az;

    move-result-object v5

    instance-of v5, v5, Lb/a/c/m;

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lb/a/c/k;->a(Lb/bc;Lb/ai;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {v5}, Lb/a/b/g;->c()V

    new-instance v5, Lb/a/b/g;

    iget-object v6, p0, Lb/a/c/k;->a:Lb/ar;

    invoke-virtual {v6}, Lb/ar;->o()Lb/p;

    move-result-object v6

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v7

    invoke-direct {p0, v7}, Lb/a/c/k;->a(Lb/ai;)Lb/a;

    move-result-object v7

    iget-object v8, p0, Lb/a/c/k;->d:Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v8}, Lb/a/b/g;-><init>(Lb/p;Lb/a;Ljava/lang/Object;)V

    iput-object v5, p0, Lb/a/c/k;->c:Lb/a/b/g;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {v5}, Lb/a/b/g;->a()Lb/a/c/c;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the body of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {p1}, Lb/a/b/g;->c()V

    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v3}, Lb/bc;->b()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_6
    iget-object p1, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {p1}, Lb/a/b/g;->c()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    instance-of v6, v5, Lb/a/e/a;

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    invoke-direct {p0, v5, v6, v0}, Lb/a/c/k;->a(Ljava/io/IOException;ZLb/ax;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_0

    :cond_8
    throw v5

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Lb/a/b/e;->a()Ljava/io/IOException;

    move-result-object v6

    invoke-direct {p0, v6, v1, v0}, Lb/a/c/k;->a(Ljava/io/IOException;ZLb/ax;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v5}, Lb/a/b/e;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v0, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {v0, v2}, Lb/a/b/g;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->c()V

    throw p1

    :cond_a
    iget-object p1, p0, Lb/a/c/k;->c:Lb/a/b/g;

    invoke-virtual {p1}, Lb/a/b/g;->c()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/c/k;->e:Z

    iget-object v0, p0, Lb/a/c/k;->c:Lb/a/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/b/g;->e()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a/c/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/c/k;->e:Z

    return v0
.end method
