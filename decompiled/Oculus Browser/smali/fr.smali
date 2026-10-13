.class public abstract Lfr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lfr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lfr;
    .locals 2

    const-class v0, Lfr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lfr;->a:Lfr;

    if-nez v1, :cond_0

    new-instance v1, LZq;

    invoke-direct {v1}, LZq;-><init>()V

    sput-object v1, Lfr;->a:Lfr;

    :cond_0
    sget-object v1, Lfr;->a:Lfr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
