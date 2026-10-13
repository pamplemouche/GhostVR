.class public final LDB;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LyB;

.field public final synthetic x:LCB;


# direct methods
.method public constructor <init>(LCB;LyB;)V
    .locals 0

    iput-object p1, p0, LDB;->x:LCB;

    iput-object p2, p0, LDB;->w:LyB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LDB;->x:LCB;

    .line 1
    iget-object v0, v0, LCB;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LDB;->x:LCB;

    .line 3
    iget-object v1, v1, LCB;->c:LvB;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, LDB;->x:LCB;

    .line 5
    iget-object v1, v1, LCB;->c:LvB;

    .line 6
    iget-object v2, p0, LDB;->w:LyB;

    invoke-virtual {v2}, LyB;->a()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, LvB;->a(Ljava/lang/Exception;)V

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
