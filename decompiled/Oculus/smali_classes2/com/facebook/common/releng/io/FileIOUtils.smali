.class public Lcom/facebook/common/releng/io/FileIOUtils;
.super Ljava/lang/Object;
.source "FileIOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs cleanAllFilesInSubDirectories(Ljava/io/File;Ljava/lang/String;[I)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    .line 42
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 47
    const/4 v0, 0x1

    .line 48
    array-length v8, p2

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_3

    aget v9, p2, v2

    .line 49
    if-ne v7, v9, :cond_2

    move v0, v1

    .line 48
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 53
    :cond_3
    if-eqz v0, :cond_0

    .line 54
    invoke-static {v6, p1}, Lcom/facebook/common/releng/io/FileIOUtils;->deleteRecursively(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    goto :goto_1

    .line 60
    :cond_4
    return-void
.end method

.method public static varargs cleanNumberedSubDirectories(Ljava/io/File;[I)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/common/releng/io/FileIOUtils;->cleanAllFilesInSubDirectories(Ljava/io/File;Ljava/lang/String;[I)V

    .line 65
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized deleteRecursively(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    const-class v1, Lcom/facebook/common/releng/io/FileIOUtils;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 76
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 78
    invoke-static {v4, p1}, Lcom/facebook/common/releng/io/FileIOUtils;->deleteRecursively(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "Releng.FileIOUtils"

    const-string v2, "Cleanup: rm dir %s"

    invoke-static {v0, v2, p0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 84
    :cond_3
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :cond_4
    const-string v0, "Releng.FileIOUtils"

    const-string v2, "Cleanup: rm file %s"

    invoke-static {v0, v2, p0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
