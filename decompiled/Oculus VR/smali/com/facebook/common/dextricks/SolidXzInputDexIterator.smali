.class final Lcom/facebook/common/dextricks/SolidXzInputDexIterator;
.super Lcom/facebook/common/dextricks/InputDexIterator;
.source "SolidXzInputDexIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;
    }
.end annotation


# instance fields
.field private mConsumingStream:Z

.field private final mEvent:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

.field private mLastPartIs:Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

.field private final mResProvider:Lcom/facebook/common/dextricks/ResProvider;

.field private final mTracer:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;

.field private final mXzs:Lcom/facebook/xzdecoder/XzInputStream;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/ResProvider;Ljava/io/InputStream;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/InputDexIterator;-><init>(Lcom/facebook/common/dextricks/DexManifest;)V

    .line 35
    iput-object p2, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    .line 36
    new-instance v0, Lcom/facebook/xzdecoder/XzInputStream;

    invoke-direct {v0, p3}, Lcom/facebook/xzdecoder/XzInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mXzs:Lcom/facebook/xzdecoder/XzInputStream;

    .line 37
    iput-object p4, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mTracer:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;

    .line 38
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mTracer:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;

    const-string v1, "DLL2_xzs_total"

    const v2, 0x2100004

    invoke-virtual {v0, v1, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mEvent:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mConsumingStream:Z

    return p1
.end method

.method static synthetic access$100(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;)Lcom/facebook/xzdecoder/XzInputStream;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mXzs:Lcom/facebook/xzdecoder/XzInputStream;

    return-object v0
.end method

.method private getJarFileSizeFromMeta(Lcom/facebook/common/dextricks/ResProvider;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1, p2}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 128
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 129
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    .line 130
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 131
    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 132
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result v6

    .line 134
    if-eqz v5, :cond_0

    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 135
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 136
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_2
    return v6

    .line 134
    :catch_0
    move-exception v5

    :try_start_6
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    if-eqz v4, :cond_3

    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_3
    :goto_4
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 127
    :catch_2
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 136
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_4

    if-eqz v2, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    :cond_4
    :goto_6
    throw v0

    .line 134
    :cond_5
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_0

    .line 135
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 136
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 135
    :cond_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_1

    .line 136
    :catch_4
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 129
    :catch_5
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 134
    :catchall_4
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_7
    if-eqz v5, :cond_8

    if-eqz v1, :cond_9

    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_8
    :goto_8
    :try_start_10
    throw v0

    :catch_6
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_8

    .line 135
    :catch_7
    move-exception v4

    :try_start_11
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_4

    .line 136
    :catch_8
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_6

    .line 134
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_7
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mXzs:Lcom/facebook/xzdecoder/XzInputStream;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mEvent:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mEvent:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    invoke-virtual {v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    throw v0
.end method

.method protected nextImpl(Lcom/facebook/common/dextricks/DexManifest$Dex;)Lcom/facebook/common/dextricks/InputDex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mConsumingStream:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "previous InputDex not closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mLastPartIs:Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mLastPartIs:Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;->available()I

    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mLastPartIs:Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/facebook/common/dextricks/Fs;->discardFromInputStream(Ljava/io/InputStream;J)J

    .line 52
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mLastPartIs:Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/facebook/common/dextricks/DexManifest$Dex;->assetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".meta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->getJarFileSizeFromMeta(Lcom/facebook/common/dextricks/ResProvider;Ljava/lang/String;)I

    move-result v0

    .line 56
    new-instance v1, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

    invoke-direct {v1, p0, v0}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;-><init>(Lcom/facebook/common/dextricks/SolidXzInputDexIterator;I)V

    iput-object v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mLastPartIs:Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

    .line 57
    new-instance v0, Lcom/facebook/common/dextricks/InputDex;

    iget-object v1, p0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;->mLastPartIs:Lcom/facebook/common/dextricks/SolidXzInputDexIterator$SliceInputStream;

    invoke-direct {v0, p1, v1}, Lcom/facebook/common/dextricks/InputDex;-><init>(Lcom/facebook/common/dextricks/DexManifest$Dex;Ljava/io/InputStream;)V

    return-object v0
.end method
