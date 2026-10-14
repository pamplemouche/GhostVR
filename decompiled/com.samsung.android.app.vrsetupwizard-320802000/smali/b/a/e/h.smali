.class public final Lb/a/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/c/c;


# static fields
.field private static final b:Lc/k;

.field private static final c:Lc/k;

.field private static final d:Lc/k;

.field private static final e:Lc/k;

.field private static final f:Lc/k;

.field private static final g:Lc/k;

.field private static final h:Lc/k;

.field private static final i:Lc/k;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lb/a/b/g;

.field private final l:Lb/ar;

.field private final m:Lb/a/e/j;

.field private n:Lb/a/e/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->b:Lc/k;

    const-string v0, "host"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->c:Lc/k;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->d:Lc/k;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->e:Lc/k;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->f:Lc/k;

    const-string v0, "te"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->g:Lc/k;

    const-string v0, "encoding"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->h:Lc/k;

    const-string v0, "upgrade"

    invoke-static {v0}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->i:Lc/k;

    const/16 v0, 0xc

    new-array v0, v0, [Lc/k;

    sget-object v1, Lb/a/e/h;->b:Lc/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lb/a/e/h;->c:Lc/k;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lb/a/e/h;->d:Lc/k;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lb/a/e/h;->e:Lc/k;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lb/a/e/h;->g:Lc/k;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lb/a/e/h;->f:Lc/k;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lb/a/e/h;->h:Lc/k;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lb/a/e/h;->i:Lc/k;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lb/a/e/c;->c:Lc/k;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lb/a/e/c;->d:Lc/k;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lb/a/e/c;->e:Lc/k;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lb/a/e/c;->f:Lc/k;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->j:Ljava/util/List;

    new-array v0, v10, [Lc/k;

    sget-object v1, Lb/a/e/h;->b:Lc/k;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/e/h;->c:Lc/k;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/e/h;->d:Lc/k;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/e/h;->e:Lc/k;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/e/h;->g:Lc/k;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/e/h;->f:Lc/k;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/e/h;->h:Lc/k;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/e/h;->i:Lc/k;

    aput-object v1, v0, v9

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/e/h;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lb/ar;Lb/a/b/g;Lb/a/e/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/e/h;->l:Lb/ar;

    iput-object p2, p0, Lb/a/e/h;->a:Lb/a/b/g;

    iput-object p3, p0, Lb/a/e/h;->m:Lb/a/e/j;

    return-void
.end method

.method public static a(Ljava/util/List;)Lb/bd;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/e/c;",
            ">;)",
            "Lb/bd;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/ah;

    invoke-direct {v0}, Lb/ah;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/a/e/c;

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    iget v5, v0, Lb/a/c/l;->b:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    new-instance v0, Lb/ah;

    invoke-direct {v0}, Lb/ah;-><init>()V

    move-object v4, v0

    move-object v0, v2

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lb/a/e/c;->g:Lc/k;

    iget-object v5, v5, Lb/a/e/c;->h:Lc/k;

    invoke-virtual {v5}, Lc/k;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lb/a/e/c;->b:Lc/k;

    invoke-virtual {v6, v7}, Lc/k;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/c/l;->a(Ljava/lang/String;)Lb/a/c/l;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v7, Lb/a/e/h;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v6}, Lc/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v5}, Lb/a/a;->a(Lb/ah;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    new-instance p0, Lb/bd;

    invoke-direct {p0}, Lb/bd;-><init>()V

    sget-object v1, Lb/au;->d:Lb/au;

    invoke-virtual {p0, v1}, Lb/bd;->a(Lb/au;)Lb/bd;

    move-result-object p0

    iget v1, v0, Lb/a/c/l;->b:I

    invoke-virtual {p0, v1}, Lb/bd;->a(I)Lb/bd;

    move-result-object p0

    iget-object v0, v0, Lb/a/c/l;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/bd;->a(Ljava/lang/String;)Lb/bd;

    move-result-object p0

    invoke-virtual {v4}, Lb/ah;->a()Lb/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/bd;->a(Lb/ag;)Lb/bd;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lb/ax;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ax;",
            ")",
            "Ljava/util/List<",
            "Lb/a/e/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/ax;->c()Lb/ag;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lb/ag;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lb/a/e/c;

    sget-object v3, Lb/a/e/c;->c:Lc/k;

    invoke-virtual {p0}, Lb/ax;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lb/a/e/c;-><init>(Lc/k;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lb/a/e/c;

    sget-object v3, Lb/a/e/c;->d:Lc/k;

    invoke-virtual {p0}, Lb/ax;->a()Lb/ai;

    move-result-object v4

    invoke-static {v4}, Lb/a/c/j;->a(Lb/ai;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lb/a/e/c;-><init>(Lc/k;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lb/a/e/c;

    sget-object v4, Lb/a/e/c;->f:Lc/k;

    invoke-direct {v3, v4, v2}, Lb/a/e/c;-><init>(Lc/k;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lb/a/e/c;

    sget-object v3, Lb/a/e/c;->e:Lc/k;

    invoke-virtual {p0}, Lb/ax;->a()Lb/ai;

    move-result-object p0

    invoke-virtual {p0}, Lb/ai;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lb/a/e/c;-><init>(Lc/k;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {v0}, Lb/ag;->a()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    invoke-virtual {v0, p0}, Lb/ag;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object v3

    sget-object v4, Lb/a/e/h;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lb/a/e/c;

    invoke-virtual {v0, p0}, Lb/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lb/a/e/c;-><init>(Lc/k;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Z)Lb/bd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    invoke-virtual {v0}, Lb/a/e/ab;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/a/e/h;->a(Ljava/util/List;)Lb/bd;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {p1, v0}, Lb/a/a;->a(Lb/bd;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public a(Lb/bc;)Lb/be;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/a/e/i;

    iget-object v1, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    invoke-virtual {v1}, Lb/a/e/ab;->g()Lc/aa;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/a/e/i;-><init>(Lb/a/e/h;Lc/aa;)V

    new-instance v1, Lb/a/c/i;

    invoke-virtual {p1}, Lb/bc;->f()Lb/ag;

    move-result-object p1

    invoke-static {v0}, Lc/p;->a(Lc/aa;)Lc/j;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lb/a/c/i;-><init>(Lb/ag;Lc/j;)V

    return-object v1
.end method

.method public a(Lb/ax;J)Lc/z;
    .locals 0

    iget-object p1, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    invoke-virtual {p1}, Lb/a/e/ab;->h()Lc/z;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/h;->m:Lb/a/e/j;

    invoke-virtual {v0}, Lb/a/e/j;->b()V

    return-void
.end method

.method public a(Lb/ax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lb/ax;->d()Lb/az;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lb/a/e/h;->b(Lb/ax;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lb/a/e/h;->m:Lb/a/e/j;

    invoke-virtual {v1, p1, v0}, Lb/a/e/j;->a(Ljava/util/List;Z)Lb/a/e/ab;

    move-result-object p1

    iput-object p1, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    iget-object p1, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    invoke-virtual {p1}, Lb/a/e/ab;->e()Lc/ab;

    move-result-object p1

    iget-object v0, p0, Lb/a/e/h;->l:Lb/ar;

    invoke-virtual {v0}, Lb/ar;->b()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lc/ab;->a(JLjava/util/concurrent/TimeUnit;)Lc/ab;

    iget-object p1, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    invoke-virtual {p1}, Lb/a/e/ab;->f()Lc/ab;

    move-result-object p1

    iget-object v0, p0, Lb/a/e/h;->l:Lb/ar;

    invoke-virtual {v0}, Lb/ar;->c()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lc/ab;->a(JLjava/util/concurrent/TimeUnit;)Lc/ab;

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    invoke-virtual {v0}, Lb/a/e/ab;->h()Lc/z;

    move-result-object v0

    invoke-interface {v0}, Lc/z;->close()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lb/a/e/h;->n:Lb/a/e/ab;

    if-eqz v0, :cond_0

    sget-object v1, Lb/a/e/b;->f:Lb/a/e/b;

    invoke-virtual {v0, v1}, Lb/a/e/ab;->b(Lb/a/e/b;)V

    :cond_0
    return-void
.end method
