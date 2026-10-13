.class public Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil;
.super Ljava/lang/Object;
.source "Analytics2FileUtil.java"


# static fields
.field private static final sBatchFilter:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil$1;

    invoke-direct {v0}, Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil$1;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil;->sBatchFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpFile(Ljava/io/File;Ljava/io/PrintStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 29
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/PrintStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 31
    :cond_0
    :try_start_1
    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 35
    return-void
.end method

.method public static getFileFilter()Ljava/io/FileFilter;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/analytics2/dumper/util/Analytics2FileUtil;->sBatchFilter:Ljava/io/FileFilter;

    return-object v0
.end method
