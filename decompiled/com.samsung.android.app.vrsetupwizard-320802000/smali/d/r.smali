.class Ld/r;
.super Ljava/lang/Object;

# interfaces
.implements Ld/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ld/j;

.field final synthetic b:Ld/q;


# direct methods
.method constructor <init>(Ld/q;Ld/j;)V
    .locals 0

    iput-object p1, p0, Ld/r;->b:Ld/q;

    iput-object p2, p0, Ld/r;->a:Ld/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/g;Ld/av;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g<",
            "TT;>;",
            "Ld/av<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Ld/r;->b:Ld/q;

    iget-object p1, p1, Ld/q;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ld/s;

    invoke-direct {v0, p0, p2}, Ld/s;-><init>(Ld/r;Ld/av;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ld/g;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Ld/r;->b:Ld/q;

    iget-object p1, p1, Ld/q;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ld/t;

    invoke-direct {v0, p0, p2}, Ld/t;-><init>(Ld/r;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
