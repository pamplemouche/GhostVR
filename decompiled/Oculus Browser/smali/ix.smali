.class public final synthetic Lix;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ljx;


# direct methods
.method public constructor <init>(Ljx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix;->w:Ljx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lix;->w:Ljx;

    .line 1
    iget-object v1, v0, Ljx;->d:LYw;

    invoke-virtual {v1}, LYw;->b()V

    .line 2
    invoke-virtual {v0}, Ljx;->a()V

    .line 3
    iget-object v1, v0, Ljx;->b:Llx;

    .line 4
    sget-object v2, LkJ;->B:LkJ;

    .line 5
    check-cast v1, Liz;

    .line 6
    iget-object v3, v1, Liz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FeedSessionManagerImpl"

    const-string v5, "Lazy initialization triggered, triggerRefresh"

    .line 7
    invoke-static {v4, v5, v3}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1}, Liz;->b()V

    .line 9
    :cond_0
    iget-object v3, v1, Liz;->n:LFx;

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-instance v6, Ldz;

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-direct {v6, v1, v7, v8, v2}, Ldz;-><init>(Liz;Ljava/lang/String;ILkJ;)V

    invoke-virtual {v3, v4, v5, v6}, LFx;->a(IILjava/lang/Runnable;)V

    .line 10
    iget v1, v0, Ljx;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljx;->f:I

    return-void
.end method
