.class public final LAx;
.super LEx;
.source "PG"


# instance fields
.field public final synthetic B:LFx;


# direct methods
.method public constructor <init>(LFx;IILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAx;->B:LFx;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, LEx;-><init>(LFx;IILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LAx;->B:LFx;

    .line 2
    invoke-virtual {v0}, LFx;->i()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, LAx;->B:LFx;

    .line 2
    iget-object v0, v0, LFx;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LAx;->B:LFx;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, LFx;->e:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-super {p0}, LEx;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
