.class public Lcom/facebook/acra/util/AttachmentUtil;
.super Ljava/lang/Object;
.source "AttachmentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToBase64String([B)Ljava/lang/String;
    .locals 6
    .param p0, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v3, 0x0

    .line 50
    const/4 v2, 0x0

    :try_start_0
    array-length v4, p0

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 51
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 53
    if-eqz v1, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_0

    .line 49
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v2

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public static loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "nbytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "offset":I
    const/4 v1, 0x0

    .line 30
    .local v1, "nbytesread":I
    new-array v0, p1, [B

    .line 31
    .local v0, "attachment":[B
    :goto_0
    sub-int v3, p1, v2

    if-lez v3, :cond_0

    .line 32
    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 33
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 39
    :cond_0
    if-nez v1, :cond_2

    .line 40
    const-string v3, ""

    .line 43
    :goto_1
    return-object v3

    .line 36
    :cond_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v0}, Lcom/facebook/acra/util/AttachmentUtil;->compressToBase64String([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static sortPruneOldFiles(Ljava/io/File;I)[Ljava/io/File;
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "numberToKeep"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, "traces":[Ljava/io/File;
    invoke-static {v0, p1}, Lcom/facebook/acra/util/AttachmentUtil;->sortPruneOldFiles([Ljava/io/File;I)[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static sortPruneOldFiles([Ljava/io/File;I)[Ljava/io/File;
    .locals 2
    .param p0, "traces"    # [Ljava/io/File;
    .param p1, "numberToKeep"    # I

    .prologue
    .line 57
    array-length v1, p0

    if-nez v1, :cond_1

    .line 78
    :cond_0
    return-object p0

    .line 62
    :cond_1
    new-instance v1, Lcom/facebook/acra/util/AttachmentUtil$1;

    invoke-direct {v1}, Lcom/facebook/acra/util/AttachmentUtil$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 72
    array-length v1, p0

    if-le v1, p1, :cond_0

    .line 73
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 74
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 75
    const/4 v1, 0x0

    aput-object v1, p0, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static validateGzip(Ljava/io/File;)Z
    .locals 10
    .param p0, "gzipFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 88
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 89
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 88
    .local v3, "gfis":Ljava/util/zip/GZIPInputStream;
    const/4 v5, 0x0

    .line 90
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 88
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 91
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_0

    .line 88
    :catch_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :catchall_0
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v5, :cond_8

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_0
    :goto_2
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 88
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 94
    :catchall_1
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_3
    if-eqz v3, :cond_1

    if-eqz v5, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_1
    :goto_4
    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 88
    .end local v3    # "gfis":Ljava/util/zip/GZIPInputStream;
    :catch_2
    move-exception v4

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 94
    :catchall_2
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    :goto_5
    if-eqz v2, :cond_2

    if-eqz v6, :cond_c

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_2
    :goto_6
    :try_start_c
    throw v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7
    return v4

    .line 94
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "gfis":Ljava/util/zip/GZIPInputStream;
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v6, :cond_7

    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_4
    :goto_8
    if-eqz v3, :cond_5

    if-eqz v6, :cond_9

    :try_start_e
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_5
    :goto_9
    if-eqz v2, :cond_6

    if-eqz v6, :cond_b

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 98
    :cond_6
    :goto_a
    const/4 v4, 0x1

    goto :goto_7

    .line 94
    :catch_4
    move-exception v8

    :try_start_10
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v0    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v4

    move-object v5, v6

    goto :goto_3

    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_8

    :catch_5
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_2

    :catch_6
    move-exception v7

    :try_start_11
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "gfis":Ljava/util/zip/GZIPInputStream;
    :catchall_4
    move-exception v4

    goto :goto_5

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "gfis":Ljava/util/zip/GZIPInputStream;
    :cond_9
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    goto :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_4

    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v5

    :try_start_12
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_a

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "gfis":Ljava/util/zip/GZIPInputStream;
    :catch_9
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_6

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "gfis":Ljava/util/zip/GZIPInputStream;
    :catchall_5
    move-exception v4

    move-object v5, v6

    goto :goto_1
.end method
