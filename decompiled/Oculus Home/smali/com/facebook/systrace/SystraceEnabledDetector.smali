.class public final Lcom/facebook/systrace/SystraceEnabledDetector;
.super Ljava/lang/Object;
.source "SystraceEnabledDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeIsTracing()Z
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 20
    sget-wide v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->TRACE_TAG_APP:J

    invoke-static {v0, v1}, Lcom/facebook/androidinternals/android/os/TraceInternal;->isTagEnabled(J)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    .line 21
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 22
    invoke-static {}, Lcom/facebook/systrace/TraceConfigJB;->isTracing()Z

    move-result v0

    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMyCommandLine()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 34
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/proc/self/cmdline"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v2, "fw":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 35
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "res":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 43
    .local v3, "indexOfNullTerminator":I
    if-ltz v3, :cond_0

    .line 44
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    .line 48
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v7, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_1
    return-object v4

    :catch_0
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 34
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "indexOfNullTerminator":I
    .end local v4    # "res":Ljava/lang/String;
    :catch_1
    move-exception v5

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    :catchall_0
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v7, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_3
    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 49
    :catch_2
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 48
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "indexOfNullTerminator":I
    .restart local v4    # "res":Ljava/lang/String;
    :cond_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "indexOfNullTerminator":I
    .end local v4    # "res":Ljava/lang/String;
    :catchall_1
    move-exception v5

    goto :goto_2

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "indexOfNullTerminator":I
    .restart local v4    # "res":Ljava/lang/String;
    :catch_3
    move-exception v6

    :try_start_a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_1

    .line 34
    .end local v3    # "indexOfNullTerminator":I
    .end local v4    # "res":Ljava/lang/String;
    :catch_4
    move-exception v5

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 48
    :catchall_2
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_4
    if-eqz v0, :cond_6

    if-eqz v6, :cond_7

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_6
    :goto_5
    :try_start_d
    throw v5

    :catch_5
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    :try_start_e
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_3

    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    move-object v6, v7

    goto :goto_4
.end method

.method public static shouldLoadTracingLibrary()Z
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/systrace/SystraceEnabledDetector;->computeIsTracing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->computeTraceTags()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
