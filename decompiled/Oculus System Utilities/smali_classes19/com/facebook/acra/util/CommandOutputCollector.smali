.class public Lcom/facebook/acra/util/CommandOutputCollector;
.super Ljava/lang/Object;
.source "CommandOutputCollector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs collect([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/ProcessBuilder;

    invoke-direct {v6, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 17
    .local v4, "p":Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 18
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v2, "isr":Ljava/io/InputStreamReader;
    const/4 v7, 0x0

    .line 19
    const/16 v6, 0x1000

    :try_start_1
    new-array v0, v6, [C

    .line 21
    .local v0, "buffer":[C
    :goto_0
    const/4 v6, 0x0

    array-length v8, v0

    invoke-virtual {v2, v0, v6, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .local v3, "nrRead":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 22
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 18
    .end local v0    # "buffer":[C
    .end local v3    # "nrRead":I
    :catch_0
    move-exception v6

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 31
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    throw v6

    .line 24
    .restart local v0    # "buffer":[C
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "nrRead":I
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 26
    :cond_2
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 31
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 24
    :catch_1
    move-exception v6

    :try_start_7
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    goto :goto_3

    .end local v0    # "buffer":[C
    .end local v3    # "nrRead":I
    :catch_2
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2

    .line 27
    .restart local v0    # "buffer":[C
    .restart local v3    # "nrRead":I
    :catch_3
    move-exception v1

    .line 28
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 24
    .end local v0    # "buffer":[C
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    .end local v3    # "nrRead":I
    :catchall_2
    move-exception v6

    goto :goto_1
.end method
