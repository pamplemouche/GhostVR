.class public Lcom/oculus/os/LogCollectorClient;
.super Ljava/lang/Object;
.source "LogCollectorClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/LogCollectorClient$CollectorResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized collectLogArchive(Landroid/content/Context;Ljava/io/File;)Lcom/oculus/os/LogCollectorClient$CollectorResult;
    .locals 0

    monitor-enter p0

    .line 12
    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized collectScreenshot(Landroid/content/Context;Ljava/io/File;)Lcom/oculus/os/LogCollectorClient$CollectorResult;
    .locals 0

    monitor-enter p0

    .line 13
    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
