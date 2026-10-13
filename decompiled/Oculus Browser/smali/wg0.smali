.class public Lwg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:Lxg0;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Lxg0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg0;->A:Lxg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lwg0;->z:Z

    .line 3
    iput-object p2, p0, Lwg0;->w:Ljava/lang/String;

    const/16 p1, 0x4f

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwg0;->x:Ljava/lang/String;

    const-string p1, "stable"

    .line 5
    iput-object p1, p0, Lwg0;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lwg0;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lwg0;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-static {}, LxV0;->a()LxV0;

    move-result-object v0

    iget-object v1, p0, Lwg0;->w:Ljava/lang/String;

    iget-object v2, p0, Lwg0;->x:Ljava/lang/String;

    iget-object v3, p0, Lwg0;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, LxV0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, LZ01;->e:LFW;

    new-instance v1, Lvg0;

    invoke-direct {v1, p0}, Lvg0;-><init>(Lwg0;)V

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
