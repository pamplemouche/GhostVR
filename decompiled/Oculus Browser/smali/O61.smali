.class public LO61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJ61;


# instance fields
.field public w:Z

.field public final synthetic x:LP61;


# direct methods
.method public constructor <init>(LP61;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO61;->x:LP61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LO61;->w:Z

    .line 2
    iget-object v0, p0, LO61;->x:LP61;

    .line 3
    iget-object v0, v0, LP61;->w:Lj61;

    invoke-virtual {v0, p1}, Lj61;->a(LH61;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LO61;->x:LP61;

    .line 2
    iget-object v0, v0, LP61;->w:Lj61;

    invoke-virtual {v0}, Lj61;->close()V

    return-void
.end method

.method public finalize()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LO61;->w:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LO61;->x:LP61;

    .line 3
    iget-object v1, v0, LP61;->A:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, LM61;

    invoke-direct {v2, v0}, LM61;-><init>(LP61;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
