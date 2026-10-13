.class public LhW;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:LkW;


# direct methods
.method public constructor <init>(LkW;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhW;->a:LkW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, LhW;->a:LkW;

    .line 2
    iget-object v0, v0, LkW;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, LhW;->a:LkW;

    invoke-virtual {v2}, LkW;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, LhW;->a:LkW;

    invoke-static {v1, v0}, LkW;->a(LkW;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v2

    .line 7
    :try_start_1
    iget-object v3, p0, LhW;->a:LkW;

    .line 8
    iget-object v3, v3, LkW;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 11
    iget-object v2, p0, LhW;->a:LkW;

    invoke-static {v2, v0}, LkW;->a(LkW;Ljava/lang/Object;)V

    throw v1
.end method
