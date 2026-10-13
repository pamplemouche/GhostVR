.class public LpS;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:LuS;


# direct methods
.method public constructor <init>(LuS;)V
    .locals 0

    .line 1
    iput-object p1, p0, LpS;->a:LuS;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, LpS;->a:LuS;

    .line 3
    iget-object v1, p1, LuS;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, LuS;->m:LHS;

    iget-object p1, p1, LuS;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, LHS;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, LpS;->a:LuS;

    new-instance v0, LsS;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LsS;-><init>(LuS;LpS;)V

    .line 6
    invoke-virtual {p1, v0}, LuS;->a(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, LpS;->a:LuS;

    new-instance v0, LtS;

    invoke-direct {v0, p1, v1}, LtS;-><init>(LuS;LpS;)V

    .line 8
    invoke-virtual {p1, v0}, LuS;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
