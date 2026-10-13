.class public final LUy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhw;


# instance fields
.field public final a:Lgx;

.field public final b:Llx;


# direct methods
.method public constructor <init>(Lgx;Llx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LUy;->a:Lgx;

    .line 3
    iput-object p2, p0, LUy;->b:Llx;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, LUy;->a:Lgx;

    iget-object v1, p0, LUy;->b:Llx;

    sget-object v2, Llw;->e:Llw;

    .line 2
    check-cast v1, Liz;

    .line 3
    iget-object v3, v1, Liz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FeedSessionManagerImpl"

    const-string v5, "Lazy initialization triggered, getUpdateConsumer"

    .line 4
    invoke-static {v4, v5, v3}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Liz;->b()V

    .line 6
    :cond_0
    new-instance v3, Lgz;

    const/4 v4, 0x0

    const-string v5, "updateConsumer"

    invoke-direct {v3, v1, v2, v5, v4}, Lgz;-><init>(Liz;Llw;Ljava/lang/String;Lez;)V

    .line 7
    check-cast v0, LSy;

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, LfQ;->B:LfQ;

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2, v1, v3}, LSy;->a(ILfQ;LJx;)V

    return-void

    .line 10
    :cond_1
    throw v4
.end method
