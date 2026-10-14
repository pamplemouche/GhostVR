.class public final Lb/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/r;

.field public static final b:Lb/r;

.field public static final c:Lb/r;

.field private static final h:[Lb/m;


# instance fields
.field final d:Z

.field final e:Z

.field final f:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xf

    new-array v0, v0, [Lb/m;

    sget-object v1, Lb/m;->aX:Lb/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lb/m;->bb:Lb/m;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lb/m;->aY:Lb/m;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lb/m;->bc:Lb/m;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lb/m;->bi:Lb/m;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lb/m;->bh:Lb/m;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->ay:Lb/m;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->aI:Lb/m;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->az:Lb/m;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->aJ:Lb/m;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->ag:Lb/m;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->ah:Lb/m;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->E:Lb/m;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->I:Lb/m;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    sget-object v1, Lb/m;->i:Lb/m;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    sput-object v0, Lb/r;->h:[Lb/m;

    new-instance v0, Lb/s;

    invoke-direct {v0, v3}, Lb/s;-><init>(Z)V

    sget-object v1, Lb/r;->h:[Lb/m;

    invoke-virtual {v0, v1}, Lb/s;->a([Lb/m;)Lb/s;

    move-result-object v0

    new-array v1, v6, [Lb/bi;

    sget-object v6, Lb/bi;->a:Lb/bi;

    aput-object v6, v1, v2

    sget-object v6, Lb/bi;->b:Lb/bi;

    aput-object v6, v1, v3

    sget-object v6, Lb/bi;->c:Lb/bi;

    aput-object v6, v1, v4

    sget-object v4, Lb/bi;->d:Lb/bi;

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Lb/s;->a([Lb/bi;)Lb/s;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb/s;->a(Z)Lb/s;

    move-result-object v0

    invoke-virtual {v0}, Lb/s;->a()Lb/r;

    move-result-object v0

    sput-object v0, Lb/r;->a:Lb/r;

    new-instance v0, Lb/s;

    sget-object v1, Lb/r;->a:Lb/r;

    invoke-direct {v0, v1}, Lb/s;-><init>(Lb/r;)V

    new-array v1, v3, [Lb/bi;

    sget-object v4, Lb/bi;->d:Lb/bi;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lb/s;->a([Lb/bi;)Lb/s;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb/s;->a(Z)Lb/s;

    move-result-object v0

    invoke-virtual {v0}, Lb/s;->a()Lb/r;

    move-result-object v0

    sput-object v0, Lb/r;->b:Lb/r;

    new-instance v0, Lb/s;

    invoke-direct {v0, v2}, Lb/s;-><init>(Z)V

    invoke-virtual {v0}, Lb/s;->a()Lb/r;

    move-result-object v0

    sput-object v0, Lb/r;->c:Lb/r;

    return-void
.end method

.method constructor <init>(Lb/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lb/s;->a:Z

    iput-boolean v0, p0, Lb/r;->d:Z

    iget-object v0, p1, Lb/s;->b:[Ljava/lang/String;

    iput-object v0, p0, Lb/r;->f:[Ljava/lang/String;

    iget-object v0, p1, Lb/s;->c:[Ljava/lang/String;

    iput-object v0, p0, Lb/r;->g:[Ljava/lang/String;

    iget-boolean p1, p1, Lb/s;->d:Z

    iput-boolean p1, p0, Lb/r;->e:Z

    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lb/r;
    .locals 4

    iget-object v0, p0, Lb/r;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lb/m;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/r;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lb/r;->g:[Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lb/a/c;->g:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lb/r;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lb/m;->a:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lb/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lb/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p1, Lb/s;

    invoke-direct {p1, p0}, Lb/s;-><init>(Lb/r;)V

    invoke-virtual {p1, v0}, Lb/s;->a([Ljava/lang/String;)Lb/s;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/s;->b([Ljava/lang/String;)Lb/s;

    move-result-object p1

    invoke-virtual {p1}, Lb/s;->a()Lb/r;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lb/r;->b(Ljavax/net/ssl/SSLSocket;Z)Lb/r;

    move-result-object p2

    iget-object v0, p2, Lb/r;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lb/r;->f:[Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lb/r;->d:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    iget-boolean v0, p0, Lb/r;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/r;->g:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lb/a/c;->g:Ljava/util/Comparator;

    iget-object v2, p0, Lb/r;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lb/a/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lb/r;->f:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lb/m;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lb/r;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lb/a/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/m;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/r;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/m;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/bi;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/r;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/bi;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lb/r;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lb/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lb/r;

    iget-boolean v2, p0, Lb/r;->d:Z

    iget-boolean v3, p1, Lb/r;->d:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lb/r;->f:[Ljava/lang/String;

    iget-object v3, p1, Lb/r;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lb/r;->g:[Ljava/lang/String;

    iget-object v3, p1, Lb/r;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lb/r;->e:Z

    iget-boolean p1, p1, Lb/r;->e:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lb/r;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    iget-object v1, p0, Lb/r;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/r;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lb/r;->e:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lb/r;->d:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/r;->f:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/r;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lb/r;->g:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lb/r;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lb/r;->e:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
