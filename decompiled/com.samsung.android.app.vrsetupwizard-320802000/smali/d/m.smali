.class final Ld/m;
.super Ld/i;


# static fields
.field static final a:Ld/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/m;

    invoke-direct {v0}, Ld/m;-><init>()V

    sput-object v0, Ld/m;->a:Ld/i;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/aw;)Ld/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ld/aw;",
            ")",
            "Ld/h<",
            "**>;"
        }
    .end annotation

    invoke-static {p1}, Ld/m;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ld/g;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ld/bb;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Ld/n;

    invoke-direct {p2, p0, p1}, Ld/n;-><init>(Ld/m;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
