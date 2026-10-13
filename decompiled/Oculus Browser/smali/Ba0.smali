.class public LBa0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Ljava/lang/Object;

.field public static f:LBa0;


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:LkW;

.field public c:[B

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LBa0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LAa0;

    invoke-direct {v0, p0}, LAa0;-><init>(LBa0;)V

    sget-object v1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    move-result-object v0

    iput-object v0, p0, LBa0;->b:LkW;

    return-void
.end method

.method public static a()LBa0;
    .locals 2

    .line 1
    sget-object v0, LBa0;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LBa0;->f:LBa0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LBa0;

    invoke-direct {v1}, LBa0;-><init>()V

    sput-object v1, LBa0;->f:LBa0;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, LBa0;->f:LBa0;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
