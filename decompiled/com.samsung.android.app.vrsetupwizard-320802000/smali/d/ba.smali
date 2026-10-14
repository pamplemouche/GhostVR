.class final Ld/ba;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ld/aw;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Ljava/lang/reflect/Type;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:Z

.field p:Z

.field q:Ljava/lang/String;

.field r:Lb/ag;

.field s:Lb/an;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:[Ld/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ld/z<",
            "*>;"
        }
    .end annotation
.end field

.field v:Ld/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/k<",
            "Lb/be;",
            "TT;>;"
        }
    .end annotation
.end field

.field w:Ld/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/h<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ld/aw;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/ba;->a:Ld/aw;

    iput-object p2, p0, Ld/ba;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Ld/ba;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Ld/ba;->e:[Ljava/lang/reflect/Type;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Ld/ba;->d:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private a([Ljava/lang/String;)Lb/ag;
    .locals 8

    new-instance v0, Lb/ah;

    invoke-direct {v0}, Lb/ah;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lb/an;->a(Ljava/lang/String;)Lb/an;

    move-result-object v5

    if-eqz v5, :cond_0

    iput-object v5, p0, Ld/ba;->s:Lb/an;

    goto :goto_1

    :cond_0
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "Malformed content type: %s"

    invoke-direct {p0, v0, p1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {v0, v6, v4}, Lb/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ah;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-direct {p0, v0, p1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Lb/ah;->a()Lb/ag;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ld/z<",
            "*>;"
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p3, v2

    invoke-direct {p0, p1, p2, p3, v4}, Ld/ba;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Ld/z;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    move-object v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Multiple Retrofit annotations found, only one allowed."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "No Retrofit annotation found."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Ld/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ld/z<",
            "*>;"
        }
    .end annotation

    instance-of v0, p4, Ld/b/x;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-boolean p3, p0, Ld/ba;->l:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Ld/ba;->j:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Ld/ba;->k:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Ld/ba;->q:Ljava/lang/String;

    if-nez p3, :cond_2

    iput-boolean v2, p0, Ld/ba;->l:Z

    const-class p3, Lb/ai;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/lang/String;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.Uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Ld/ao;

    invoke-direct {p1}, Ld/ao;-><init>()V

    return-object p1

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Ld/ba;->m:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "A @Url parameter must not come after a @Query"

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Multiple @Url method annotations found."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_6
    instance-of v0, p4, Ld/b/s;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ld/ba;->k:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Ld/ba;->l:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Ld/ba;->q:Ljava/lang/String;

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Ld/ba;->j:Z

    check-cast p4, Ld/b/s;

    invoke-interface {p4}, Ld/b/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ld/ba;->a(ILjava/lang/String;)V

    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p1, p2, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/aj;

    invoke-interface {p4}, Ld/b/s;->b()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Ld/aj;-><init>(Ljava/lang/String;Ld/k;Z)V

    return-object p2

    :cond_7
    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Ld/ba;->m:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_8
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @Query."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_a
    instance-of v0, p4, Ld/b/t;

    const-string v1, "<String>)"

    const-string v4, " must include generic type (e.g., "

    if-eqz v0, :cond_e

    check-cast p4, Ld/b/t;

    invoke-interface {p4}, Ld/b/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Ld/b/t;->b()Z

    move-result p4

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    iput-boolean v2, p0, Ld/ba;->k:Z

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_b

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ak;

    invoke-direct {p2, v0, p1, p4}, Ld/ak;-><init>(Ljava/lang/String;Ld/k;Z)V

    invoke-virtual {p2}, Ld/ak;->a()Ld/z;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ld/az;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ak;

    invoke-direct {p2, v0, p1, p4}, Ld/ak;-><init>(Ljava/lang/String;Ld/k;Z)V

    invoke-virtual {p2}, Ld/ak;->b()Ld/z;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p1, p2, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ak;

    invoke-direct {p2, v0, p1, p4}, Ld/ak;-><init>(Ljava/lang/String;Ld/k;Z)V

    return-object p2

    :cond_e
    instance-of v0, p4, Ld/b/v;

    if-eqz v0, :cond_12

    check-cast p4, Ld/b/v;

    invoke-interface {p4}, Ld/b/v;->a()Z

    move-result p4

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-boolean v2, p0, Ld/ba;->k:Z

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/am;

    invoke-direct {p2, p1, p4}, Ld/am;-><init>(Ld/k;Z)V

    invoke-virtual {p2}, Ld/am;->a()Ld/z;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ld/az;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/am;

    invoke-direct {p2, p1, p4}, Ld/am;-><init>(Ld/k;Z)V

    invoke-virtual {p2}, Ld/am;->b()Ld/z;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p1, p2, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/am;

    invoke-direct {p2, p1, p4}, Ld/am;-><init>(Ld/k;Z)V

    return-object p2

    :cond_12
    instance-of v0, p4, Ld/b/u;

    const-string v5, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_16

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Ld/bb;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_14

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_13

    invoke-static {v2, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/al;

    check-cast p4, Ld/b/u;

    invoke-interface {p4}, Ld/b/u;->a()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Ld/al;-><init>(Ld/k;Z)V

    return-object p2

    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_14
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_15
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@QueryMap parameter type must be Map."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_16
    instance-of v0, p4, Ld/b/i;

    if-eqz v0, :cond_1a

    check-cast p4, Ld/b/i;

    invoke-interface {p4}, Ld/b/i;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_18

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_17

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/af;

    invoke-direct {p2, p4, p1}, Ld/af;-><init>(Ljava/lang/String;Ld/k;)V

    invoke-virtual {p2}, Ld/af;->a()Ld/z;

    move-result-object p1

    return-object p1

    :cond_17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ld/az;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/af;

    invoke-direct {p2, p4, p1}, Ld/af;-><init>(Ljava/lang/String;Ld/k;)V

    invoke-virtual {p2}, Ld/af;->b()Ld/z;

    move-result-object p1

    return-object p1

    :cond_19
    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p1, p2, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/af;

    invoke-direct {p2, p4, p1}, Ld/af;-><init>(Ljava/lang/String;Ld/k;)V

    return-object p2

    :cond_1a
    instance-of v0, p4, Ld/b/j;

    if-eqz v0, :cond_1e

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-class v0, Ljava/util/Map;

    invoke-static {p2, p4, v0}, Ld/bb;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_1c

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    const-class v0, Ljava/lang/String;

    if-ne v0, p4, :cond_1b

    invoke-static {v2, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ag;

    invoke-direct {p2, p1}, Ld/ag;-><init>(Ld/k;)V

    return-object p2

    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@HeaderMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1c
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1d
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@HeaderMap parameter type must be Map."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1e
    instance-of v0, p4, Ld/b/c;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Ld/ba;->o:Z

    if-eqz v0, :cond_22

    check-cast p4, Ld/b/c;

    invoke-interface {p4}, Ld/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Ld/b/c;->b()Z

    move-result p4

    iput-boolean v2, p0, Ld/ba;->g:Z

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_20

    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1f

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ad;

    invoke-direct {p2, v0, p1, p4}, Ld/ad;-><init>(Ljava/lang/String;Ld/k;Z)V

    invoke-virtual {p2}, Ld/ad;->a()Ld/z;

    move-result-object p1

    return-object p1

    :cond_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ld/az;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ad;

    invoke-direct {p2, v0, p1, p4}, Ld/ad;-><init>(Ljava/lang/String;Ld/k;Z)V

    invoke-virtual {p2}, Ld/ad;->b()Ld/z;

    move-result-object p1

    return-object p1

    :cond_21
    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p1, p2, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ad;

    invoke-direct {p2, v0, p1, p4}, Ld/ad;-><init>(Ljava/lang/String;Ld/k;Z)V

    return-object p2

    :cond_22
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Field parameters can only be used with form encoding."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_23
    instance-of v0, p4, Ld/b/d;

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Ld/ba;->o:Z

    if-eqz v0, :cond_27

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Ld/bb;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_25

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_24

    invoke-static {v2, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {p2, p1, p3}, Ld/aw;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    iput-boolean v2, p0, Ld/ba;->g:Z

    new-instance p2, Ld/ae;

    check-cast p4, Ld/b/d;

    invoke-interface {p4}, Ld/b/d;->a()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Ld/ae;-><init>(Ld/k;Z)V

    return-object p2

    :cond_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_25
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_26
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameter type must be Map."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_27
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameters can only be used with form encoding."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_28
    instance-of v0, p4, Ld/b/q;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Ld/ba;->p:Z

    if-eqz v0, :cond_36

    check-cast p4, Ld/b/q;

    iput-boolean v2, p0, Ld/ba;->h:Z

    invoke-interface {p4}, Ld/b/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_2b

    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_2a

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    const-class p3, Lb/aq;

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_29

    sget-object p1, Ld/an;->a:Ld/an;

    invoke-virtual {p1}, Ld/an;->a()Ld/z;

    move-result-object p1

    return-object p1

    :cond_29
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p4, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2b
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lb/aq;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2c

    sget-object p1, Ld/an;->a:Ld/an;

    invoke-virtual {p1}, Ld/an;->b()Ld/z;

    move-result-object p1

    return-object p1

    :cond_2c
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p4, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2d
    const-class p2, Lb/aq;

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2e

    sget-object p1, Ld/an;->a:Ld/an;

    return-object p1

    :cond_2e
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p4, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2f
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "Content-Disposition"

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "form-data; name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    const-string v2, "Content-Transfer-Encoding"

    aput-object v2, v6, v0

    const/4 v0, 0x3

    invoke-interface {p4}, Ld/b/q;->b()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, v0

    invoke-static {v6}, Lb/ag;->a([Ljava/lang/String;)Lb/ag;

    move-result-object p4

    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_32

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_31

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    const-class v0, Lb/aq;

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    iget-object v0, p0, Ld/ba;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Ld/aw;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ah;

    invoke-direct {p2, p4, p1}, Ld/ah;-><init>(Lb/ag;Ld/k;)V

    invoke-virtual {p2}, Ld/ah;->a()Ld/z;

    move-result-object p1

    return-object p1

    :cond_30
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_32
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Ld/az;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lb/aq;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    iget-object v0, p0, Ld/ba;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Ld/aw;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ah;

    invoke-direct {p2, p4, p1}, Ld/ah;-><init>(Lb/ag;Ld/k;)V

    invoke-virtual {p2}, Ld/ah;->b()Ld/z;

    move-result-object p1

    return-object p1

    :cond_33
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_34
    const-class v0, Lb/aq;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    iget-object v0, p0, Ld/ba;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Ld/aw;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    new-instance p2, Ld/ah;

    invoke-direct {p2, p4, p1}, Ld/ah;-><init>(Lb/ag;Ld/k;)V

    return-object p2

    :cond_35
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_36
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Part parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_37
    instance-of v0, p4, Ld/b/r;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Ld/ba;->p:Z

    if-eqz v0, :cond_3c

    iput-boolean v2, p0, Ld/ba;->h:Z

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Ld/bb;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3a

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_39

    invoke-static {v2, p2}, Ld/bb;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    const-class v0, Lb/aq;

    invoke-static {p2}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object p1, p0, Ld/ba;->a:Ld/aw;

    iget-object v0, p0, Ld/ba;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Ld/aw;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1

    check-cast p4, Ld/b/r;

    new-instance p2, Ld/ai;

    invoke-interface {p4}, Ld/b/r;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ld/ai;-><init>(Ld/k;Ljava/lang/String;)V

    return-object p2

    :cond_38
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@PartMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3a
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3b
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap parameter type must be Map."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3c
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3d
    instance-of p4, p4, Ld/b/a;

    if-eqz p4, :cond_40

    iget-boolean p4, p0, Ld/ba;->o:Z

    if-nez p4, :cond_3f

    iget-boolean p4, p0, Ld/ba;->p:Z

    if-nez p4, :cond_3f

    iget-boolean p4, p0, Ld/ba;->i:Z

    if-nez p4, :cond_3e

    :try_start_0
    iget-object p4, p0, Ld/ba;->a:Ld/aw;

    iget-object v0, p0, Ld/ba;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Ld/aw;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Ld/ba;->i:Z

    new-instance p2, Ld/ac;

    invoke-direct {p2, p1}, Ld/ac;-><init>(Ld/k;)V

    return-object p2

    :catch_0
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @Body converter for %s"

    invoke-direct {p0, p3, p1, p2, p4}, Ld/ba;->a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3e
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Multiple @Body method annotations found."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3f
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-direct {p0, p1, p3, p2}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (parameter #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ld/ba;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (parameter #"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Ld/ba;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    for method "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ld/ba;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ld/ba;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Ld/az;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/ba;->t:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Ld/ba;->q:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, p2, v0}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Ld/az;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    invoke-direct {p0, p1, p2, v0}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Ld/ba;->m:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iput-object p1, p0, Ld/ba;->m:Ljava/lang/String;

    iput-boolean p3, p0, Ld/ba;->n:Z

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_2

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ld/az;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-direct {p0, p1, p2}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    iput-object p2, p0, Ld/ba;->q:Ljava/lang/String;

    invoke-static {p2}, Ld/az;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ld/ba;->t:Ljava/util/Set;

    return-void

    :cond_3
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p1, p2, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-direct {p0, p1, p2}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/annotation/Annotation;)V
    .locals 4

    instance-of v0, p1, Ld/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ld/b/b;

    invoke-interface {p1}, Ld/b/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    :goto_0
    invoke-direct {p0, v0, p1, v1}, Ld/ba;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Ld/b/f;

    if-eqz v0, :cond_1

    check-cast p1, Ld/b/f;

    invoke-interface {p1}, Ld/b/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ld/b/g;

    if-eqz v0, :cond_3

    check-cast p1, Ld/b/g;

    invoke-interface {p1}, Ld/b/g;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-direct {p0, v0, p1, v1}, Ld/ba;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-class p1, Ljava/lang/Void;

    iget-object v0, p0, Ld/ba;->f:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "HEAD method must use Void as response type."

    invoke-direct {p0, v0, p1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    instance-of v0, p1, Ld/b/n;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Ld/b/n;

    invoke-interface {p1}, Ld/b/n;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    :goto_1
    invoke-direct {p0, v0, p1, v2}, Ld/ba;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_4
    instance-of v0, p1, Ld/b/o;

    if-eqz v0, :cond_5

    check-cast p1, Ld/b/o;

    invoke-interface {p1}, Ld/b/o;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ld/b/p;

    if-eqz v0, :cond_6

    check-cast p1, Ld/b/p;

    invoke-interface {p1}, Ld/b/p;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ld/b/m;

    if-eqz v0, :cond_7

    check-cast p1, Ld/b/m;

    invoke-interface {p1}, Ld/b/m;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ld/b/h;

    if-eqz v0, :cond_8

    check-cast p1, Ld/b/h;

    invoke-interface {p1}, Ld/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ld/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ld/b/h;->c()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Ld/ba;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    instance-of v0, p1, Ld/b/k;

    if-eqz v0, :cond_a

    check-cast p1, Ld/b/k;

    invoke-interface {p1}, Ld/b/k;->a()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Ld/ba;->a([Ljava/lang/String;)Lb/ag;

    move-result-object p1

    iput-object p1, p0, Ld/ba;->r:Lb/ag;

    goto :goto_2

    :cond_9
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@Headers annotation is empty."

    invoke-direct {p0, v0, p1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_a
    instance-of v0, p1, Ld/b/l;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_c

    iget-boolean p1, p0, Ld/ba;->o:Z

    if-nez p1, :cond_b

    iput-boolean v2, p0, Ld/ba;->p:Z

    goto :goto_2

    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_c
    instance-of p1, p1, Ld/b/e;

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Ld/ba;->p:Z

    if-nez p1, :cond_d

    iput-boolean v2, p0, Ld/ba;->o:Z

    goto :goto_2

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_e
    :goto_2
    return-void
.end method

.method private b()Ld/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/h<",
            "TT;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Ld/ba;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ld/bb;->d(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Ld/ba;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    :try_start_0
    iget-object v4, p0, Ld/ba;->a:Ld/aw;

    invoke-virtual {v4, v0, v1}, Ld/aw;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/h;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Unable to create call adapter for %s"

    invoke-direct {p0, v1, v0, v2}, Ld/ba;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Service methods cannot return void."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v0, v1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private c()Ld/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/k<",
            "Lb/be;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ld/ba;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ld/ba;->a:Ld/aw;

    iget-object v2, p0, Ld/ba;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Ld/aw;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ld/ba;->f:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    const-string v2, "Unable to create converter for %s"

    invoke-direct {p0, v0, v2, v1}, Ld/ba;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()Ld/az;
    .locals 6

    invoke-direct {p0}, Ld/ba;->b()Ld/h;

    move-result-object v0

    iput-object v0, p0, Ld/ba;->w:Ld/h;

    iget-object v0, p0, Ld/ba;->w:Ld/h;

    invoke-interface {v0}, Ld/h;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Ld/ba;->f:Ljava/lang/reflect/Type;

    iget-object v0, p0, Ld/ba;->f:Ljava/lang/reflect/Type;

    const-class v1, Ld/av;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const-class v1, Lb/bc;

    if-eq v0, v1, :cond_10

    invoke-direct {p0}, Ld/ba;->c()Ld/k;

    move-result-object v0

    iput-object v0, p0, Ld/ba;->v:Ld/k;

    iget-object v0, p0, Ld/ba;->c:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Ld/ba;->a(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/ba;->m:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Ld/ba;->n:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ld/ba;->p:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ld/ba;->o:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Ld/ba;->d:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    new-array v1, v0, [Ld/z;

    iput-object v1, p0, Ld/ba;->u:[Ld/z;

    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x1

    if-ge v1, v0, :cond_6

    iget-object v4, p0, Ld/ba;->e:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    invoke-static {v4}, Ld/bb;->d(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v3, p0, Ld/ba;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    iget-object v5, p0, Ld/ba;->u:[Ld/z;

    invoke-direct {p0, v1, v4, v3}, Ld/ba;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ld/z;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "No Retrofit annotation found."

    invoke-direct {p0, v1, v2, v0}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v1, v2, v0}, Ld/ba;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v0, p0, Ld/ba;->q:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ld/ba;->l:Z

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Ld/ba;->m:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Missing either @%s URL or @Url parameter."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    iget-boolean v0, p0, Ld/ba;->o:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ld/ba;->p:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ld/ba;->n:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ld/ba;->i:Z

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_4
    iget-boolean v0, p0, Ld/ba;->o:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Ld/ba;->g:Z

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Form-encoded method must contain at least one @Field."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_5
    iget-boolean v0, p0, Ld/ba;->p:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Ld/ba;->h:Z

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart method must contain at least one @Part."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_6
    new-instance v0, Ld/az;

    invoke-direct {v0, p0}, Ld/az;-><init>(Ld/ba;)V

    return-object v0

    :cond_f
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-direct {p0, v1, v0}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/ba;->f:Ljava/lang/reflect/Type;

    invoke-static {v1}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Ld/ba;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
