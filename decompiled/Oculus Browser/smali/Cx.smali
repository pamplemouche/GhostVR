.class public final LCx;
.super LEx;
.source "PG"


# instance fields
.field public final synthetic B:LFx;


# direct methods
.method public constructor <init>(LFx;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iput-object p1, p0, LCx;->B:LFx;

    const/16 v0, 0x1e

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v1, p2}, LEx;-><init>(LFx;IILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, LCx;->B:LFx;

    .line 2
    iget-object v0, v0, LFx;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LCx;->B:LFx;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, LFx;->f:Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
