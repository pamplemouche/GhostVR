.class public final Lov;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lbv;

.field public final synthetic x:Lnv;


# direct methods
.method public constructor <init>(Lnv;Lbv;)V
    .locals 0

    iput-object p1, p0, Lov;->x:Lnv;

    iput-object p2, p0, Lov;->w:Lbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lov;->x:Lnv;

    .line 1
    iget-object v0, v0, Lnv;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lov;->x:Lnv;

    .line 3
    iget-object v1, v1, Lnv;->c:LZu;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lov;->x:Lnv;

    .line 5
    iget-object v1, v1, Lnv;->c:LZu;

    .line 6
    iget-object v2, p0, Lov;->w:Lbv;

    invoke-virtual {v2}, Lbv;->b()Ljava/lang/Object;

    check-cast v1, Lfv;

    .line 7
    iget-object v1, v1, Lfv;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
