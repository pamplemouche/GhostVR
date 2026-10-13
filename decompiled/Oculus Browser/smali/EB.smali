.class public final LEB;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LyB;

.field public final synthetic x:LFB;


# direct methods
.method public constructor <init>(LFB;LyB;)V
    .locals 0

    iput-object p1, p0, LEB;->x:LFB;

    iput-object p2, p0, LEB;->w:LyB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LEB;->x:LFB;

    .line 1
    iget-object v0, v0, LFB;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LEB;->x:LFB;

    .line 3
    iget-object v1, v1, LFB;->c:LwB;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, LEB;->x:LFB;

    .line 5
    iget-object v1, v1, LFB;->c:LwB;

    .line 6
    iget-object v2, p0, LEB;->w:LyB;

    invoke-virtual {v2}, LyB;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, LwB;->a(Ljava/lang/Object;)V

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
