.class final Ld/q;
.super Ljava/lang/Object;

# interfaces
.implements Ld/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ld/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ld/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ld/g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/q;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ld/q;->b:Ld/g;

    return-void
.end method


# virtual methods
.method public a(Ld/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/j<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ld/q;->b:Ld/g;

    new-instance v1, Ld/r;

    invoke-direct {v1, p0, p1}, Ld/r;-><init>(Ld/q;Ld/j;)V

    invoke-interface {v0, v1}, Ld/g;->a(Ld/j;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Ld/q;->b:Ld/g;

    invoke-interface {v0}, Ld/g;->a()Z

    move-result v0

    return v0
.end method

.method public b()Ld/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ld/q;

    iget-object v1, p0, Ld/q;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ld/q;->b:Ld/g;

    invoke-interface {v2}, Ld/g;->b()Ld/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ld/q;-><init>(Ljava/util/concurrent/Executor;Ld/g;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ld/q;->b()Ld/g;

    move-result-object v0

    return-object v0
.end method
