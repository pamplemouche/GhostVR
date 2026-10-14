.class public Lb/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lb/h;
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/au;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final C:I

.field final c:Lb/w;

.field final d:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/au;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/r;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/al;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/al;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lb/ac;

.field final j:Ljava/net/ProxySelector;

.field final k:Lb/u;

.field final l:Lb/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final m:Lb/a/a/i;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final n:Ljavax/net/SocketFactory;

.field final o:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final p:Lb/a/i/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final q:Ljavax/net/ssl/HostnameVerifier;

.field final r:Lb/j;

.field final s:Lb/b;

.field final t:Lb/b;

.field final u:Lb/p;

.field final v:Lb/x;

.field final w:Z

.field final x:Z

.field final y:Z

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lb/au;

    sget-object v2, Lb/au;->d:Lb/au;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lb/au;->b:Lb/au;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lb/ar;->a:Ljava/util/List;

    new-array v0, v0, [Lb/r;

    sget-object v1, Lb/r;->a:Lb/r;

    aput-object v1, v0, v3

    sget-object v1, Lb/r;->c:Lb/r;

    aput-object v1, v0, v4

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/ar;->b:Ljava/util/List;

    new-instance v0, Lb/as;

    invoke-direct {v0}, Lb/as;-><init>()V

    sput-object v0, Lb/a/a;->a:Lb/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/at;

    invoke-direct {v0}, Lb/at;-><init>()V

    invoke-direct {p0, v0}, Lb/ar;-><init>(Lb/at;)V

    return-void
.end method

.method constructor <init>(Lb/at;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/at;->a:Lb/w;

    iput-object v0, p0, Lb/ar;->c:Lb/w;

    iget-object v0, p1, Lb/at;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lb/ar;->d:Ljava/net/Proxy;

    iget-object v0, p1, Lb/at;->c:Ljava/util/List;

    iput-object v0, p0, Lb/ar;->e:Ljava/util/List;

    iget-object v0, p1, Lb/at;->d:Ljava/util/List;

    iput-object v0, p0, Lb/ar;->f:Ljava/util/List;

    iget-object v0, p1, Lb/at;->e:Ljava/util/List;

    invoke-static {v0}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/ar;->g:Ljava/util/List;

    iget-object v0, p1, Lb/at;->f:Ljava/util/List;

    invoke-static {v0}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/ar;->h:Ljava/util/List;

    iget-object v0, p1, Lb/at;->g:Lb/ac;

    iput-object v0, p0, Lb/ar;->i:Lb/ac;

    iget-object v0, p1, Lb/at;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lb/ar;->j:Ljava/net/ProxySelector;

    iget-object v0, p1, Lb/at;->i:Lb/u;

    iput-object v0, p0, Lb/ar;->k:Lb/u;

    iget-object v0, p1, Lb/at;->j:Lb/d;

    iput-object v0, p0, Lb/ar;->l:Lb/d;

    iget-object v0, p1, Lb/at;->k:Lb/a/a/i;

    iput-object v0, p0, Lb/ar;->m:Lb/a/a/i;

    iget-object v0, p1, Lb/at;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lb/ar;->n:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lb/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/r;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lb/r;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lb/at;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lb/ar;->y()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/ar;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lb/ar;->o:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lb/a/i/b;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/i/b;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p1, Lb/at;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lb/ar;->o:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lb/at;->n:Lb/a/i/b;

    :goto_2
    iput-object v0, p0, Lb/ar;->p:Lb/a/i/b;

    iget-object v0, p1, Lb/at;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lb/ar;->q:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lb/at;->p:Lb/j;

    iget-object v1, p0, Lb/ar;->p:Lb/a/i/b;

    invoke-virtual {v0, v1}, Lb/j;->a(Lb/a/i/b;)Lb/j;

    move-result-object v0

    iput-object v0, p0, Lb/ar;->r:Lb/j;

    iget-object v0, p1, Lb/at;->q:Lb/b;

    iput-object v0, p0, Lb/ar;->s:Lb/b;

    iget-object v0, p1, Lb/at;->r:Lb/b;

    iput-object v0, p0, Lb/ar;->t:Lb/b;

    iget-object v0, p1, Lb/at;->s:Lb/p;

    iput-object v0, p0, Lb/ar;->u:Lb/p;

    iget-object v0, p1, Lb/at;->t:Lb/x;

    iput-object v0, p0, Lb/ar;->v:Lb/x;

    iget-boolean v0, p1, Lb/at;->u:Z

    iput-boolean v0, p0, Lb/ar;->w:Z

    iget-boolean v0, p1, Lb/at;->v:Z

    iput-boolean v0, p0, Lb/ar;->x:Z

    iget-boolean v0, p1, Lb/at;->w:Z

    iput-boolean v0, p0, Lb/ar;->y:Z

    iget v0, p1, Lb/at;->x:I

    iput v0, p0, Lb/ar;->z:I

    iget v0, p1, Lb/at;->y:I

    iput v0, p0, Lb/ar;->A:I

    iget v0, p1, Lb/at;->z:I

    iput v0, p0, Lb/ar;->B:I

    iget p1, p1, Lb/at;->A:I

    iput p1, p0, Lb/ar;->C:I

    return-void
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private y()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/ar;->z:I

    return v0
.end method

.method public a(Lb/ax;)Lb/g;
    .locals 2

    new-instance v0, Lb/av;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lb/av;-><init>(Lb/ar;Lb/ax;Z)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lb/ar;->A:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lb/ar;->B:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lb/ar;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lb/ar;->j:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lb/u;
    .locals 1

    iget-object v0, p0, Lb/ar;->k:Lb/u;

    return-object v0
.end method

.method g()Lb/a/a/i;
    .locals 1

    iget-object v0, p0, Lb/ar;->l:Lb/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/d;->a:Lb/a/a/i;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/ar;->m:Lb/a/a/i;

    :goto_0
    return-object v0
.end method

.method public h()Lb/x;
    .locals 1

    iget-object v0, p0, Lb/ar;->v:Lb/x;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lb/ar;->n:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lb/ar;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lb/ar;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lb/j;
    .locals 1

    iget-object v0, p0, Lb/ar;->r:Lb/j;

    return-object v0
.end method

.method public m()Lb/b;
    .locals 1

    iget-object v0, p0, Lb/ar;->t:Lb/b;

    return-object v0
.end method

.method public n()Lb/b;
    .locals 1

    iget-object v0, p0, Lb/ar;->s:Lb/b;

    return-object v0
.end method

.method public o()Lb/p;
    .locals 1

    iget-object v0, p0, Lb/ar;->u:Lb/p;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lb/ar;->w:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lb/ar;->x:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lb/ar;->y:Z

    return v0
.end method

.method public s()Lb/w;
    .locals 1

    iget-object v0, p0, Lb/ar;->c:Lb/w;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/au;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/ar;->e:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/ar;->f:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/al;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/ar;->g:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/al;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/ar;->h:Ljava/util/List;

    return-object v0
.end method

.method x()Lb/ac;
    .locals 1

    iget-object v0, p0, Lb/ar;->i:Lb/ac;

    return-object v0
.end method
