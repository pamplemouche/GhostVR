.class final Ld/a;
.super Ld/l;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/aw;)Ld/k;
    .locals 0
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

    const-class p3, Lb/be;

    if-ne p1, p3, :cond_1

    const-class p1, Ld/b/w;

    invoke-static {p2, p1}, Ld/bb;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ld/d;->a:Ld/d;

    goto :goto_0

    :cond_0
    sget-object p1, Ld/b;->a:Ld/b;

    :goto_0
    return-object p1

    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    sget-object p1, Ld/f;->a:Ld/f;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
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

    const-class p2, Lb/az;

    invoke-static {p1}, Ld/bb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ld/c;->a:Ld/c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
