.class public final Ld/a/a/a;
.super Ld/l;


# instance fields
.field private final a:Lorg/simpleframework/xml/Serializer;

.field private final b:Z


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/Serializer;Z)V
    .locals 0

    invoke-direct {p0}, Ld/l;-><init>()V

    iput-object p1, p0, Ld/a/a/a;->a:Lorg/simpleframework/xml/Serializer;

    iput-boolean p2, p0, Ld/a/a/a;->b:Z

    return-void
.end method

.method public static a()Ld/a/a/a;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    invoke-static {v0}, Ld/a/a/a;->a(Lorg/simpleframework/xml/Serializer;)Ld/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/simpleframework/xml/Serializer;)Ld/a/a/a;
    .locals 2

    new-instance v0, Ld/a/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ld/a/a/a;-><init>(Lorg/simpleframework/xml/Serializer;Z)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/aw;)Ld/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/aw;",
            ")",
            "Ld/k<",
            "Lb/be;",
            "*>;"
        }
    .end annotation

    instance-of p2, p1, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/Class;

    new-instance p2, Ld/a/a/c;

    iget-object p3, p0, Ld/a/a/a;->a:Lorg/simpleframework/xml/Serializer;

    iget-boolean v0, p0, Ld/a/a/a;->b:Z

    invoke-direct {p2, p1, p3, v0}, Ld/a/a/c;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/Serializer;Z)V

    return-object p2
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Ld/aw;)Ld/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/aw;",
            ")",
            "Ld/k<",
            "*",
            "Lb/az;",
            ">;"
        }
    .end annotation

    instance-of p1, p1, Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ld/a/a/b;

    iget-object p2, p0, Ld/a/a/a;->a:Lorg/simpleframework/xml/Serializer;

    invoke-direct {p1, p2}, Ld/a/a/b;-><init>(Lorg/simpleframework/xml/Serializer;)V

    return-object p1
.end method
