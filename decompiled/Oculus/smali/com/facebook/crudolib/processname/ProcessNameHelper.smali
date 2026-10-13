.class public Lcom/facebook/crudolib/processname/ProcessNameHelper;
.super Ljava/lang/Object;
.source "ProcessNameHelper.java"


# static fields
.field private static volatile sAttemptedRead:Z

.field private static volatile sMyFullProcessName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyFullProcessName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/crudolib/processname/ProcessNameHelper;->sAttemptedRead:Z

    if-nez v0, :cond_0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->readMyFullProcessName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :goto_0
    sput-object v0, Lcom/facebook/crudolib/processname/ProcessNameHelper;->sMyFullProcessName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/crudolib/processname/ProcessNameHelper;->sAttemptedRead:Z

    .line 38
    :cond_0
    sget-object v0, Lcom/facebook/crudolib/processname/ProcessNameHelper;->sMyFullProcessName:Ljava/lang/String;

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readMyFullProcessName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 46
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 47
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 48
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0

    .line 50
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 52
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0
.end method
