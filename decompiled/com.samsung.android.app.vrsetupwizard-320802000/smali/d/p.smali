.class Ld/p;
.super Ljava/lang/Object;

# interfaces
.implements Ld/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/h<",
        "Ljava/lang/Object;",
        "Ld/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Ld/o;


# direct methods
.method constructor <init>(Ld/o;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Ld/p;->b:Ld/o;

    iput-object p2, p0, Ld/p;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ld/g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld/p;->b(Ld/g;)Ld/g;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Ld/p;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Ld/g;)Ld/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Ld/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ld/q;

    iget-object v1, p0, Ld/p;->b:Ld/o;

    iget-object v1, v1, Ld/o;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Ld/q;-><init>(Ljava/util/concurrent/Executor;Ld/g;)V

    return-object v0
.end method
