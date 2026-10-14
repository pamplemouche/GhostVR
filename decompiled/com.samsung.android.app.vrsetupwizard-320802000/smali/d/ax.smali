.class Ld/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ld/aw;

.field private final c:Ld/ap;


# direct methods
.method constructor <init>(Ld/aw;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Ld/ax;->b:Ld/aw;

    iput-object p2, p0, Ld/ax;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/ap;->a()Ld/ap;

    move-result-object p1

    iput-object p1, p0, Ld/ax;->c:Ld/ap;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ld/ax;->c:Ld/ap;

    invoke-virtual {v0, p2}, Ld/ap;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/ax;->c:Ld/ap;

    iget-object v1, p0, Ld/ax;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Ld/ap;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Ld/ax;->b:Ld/aw;

    invoke-virtual {p1, p2}, Ld/aw;->a(Ljava/lang/reflect/Method;)Ld/az;

    move-result-object p1

    new-instance p2, Ld/u;

    invoke-direct {p2, p1, p3}, Ld/u;-><init>(Ld/az;[Ljava/lang/Object;)V

    iget-object p1, p1, Ld/az;->d:Ld/h;

    invoke-interface {p1, p2}, Ld/h;->a(Ld/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
