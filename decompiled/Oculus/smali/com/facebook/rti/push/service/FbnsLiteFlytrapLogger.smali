.class public Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;
.super Ljava/lang/Object;
.source "FbnsLiteFlytrapLogger.java"

# interfaces
.implements Lcom/facebook/rti/common/logging/RtiFlytrapLogger;


# instance fields
.field private mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFileIndex:I

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSingleThreadScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSysDumper:Lcom/facebook/rti/common/logging/MqttSystemDumper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mBuffer:Ljava/util/ArrayList;

    .line 42
    iput-object v3, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    iput-object v3, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSysDumper:Lcom/facebook/rti/common/logging/MqttSystemDumper;

    .line 47
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mDateFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "America/Los_Angeles"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mContext:Landroid/content/Context;

    const-string v1, "Fbnslite_Flytrap"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSingleThreadScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    invoke-direct {p0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->getCurrentFileIndex()I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->flushBufferInternal(Z)V

    return-void
.end method

.method private static buildLogFromMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private flushBufferInternal(Z)V
    .locals 3

    .prologue
    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mBuffer:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mBuffer:Ljava/util/ArrayList;

    .line 175
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 178
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->flushLogs(Ljava/util/ArrayList;)V

    .line 184
    :cond_1
    return-void

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private flushBufferSync()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSingleThreadScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger$1;-><init>(Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;)V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 132
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private flushLogs(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 187
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fbnslite_log"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v0, 0x1

    invoke-direct {v4, v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 190
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_1
    if-eqz v4, :cond_0

    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 197
    :cond_1
    :goto_3
    invoke-static {v3}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->isFileFull(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    iput v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    .line 199
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentFile"

    iget v2, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fbnslite_log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    :cond_2
    return-void

    .line 193
    :cond_3
    if-eqz v4, :cond_1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    goto :goto_3

    :catch_3
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 198
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 193
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getCurrentFileIndex()I
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CurrentFile"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    return v0
.end method

.method private static isFileFull(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 213
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized logInternal(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v1, 0x1f4

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 148
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSingleThreadScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger$2;

    invoke-direct {v1, p0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger$2;-><init>(Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 153
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getFlytrapFiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSysDumper:Lcom/facebook/rti/common/logging/MqttSystemDumper;

    if-eqz v0, :cond_2

    .line 99
    const-string v0, "DumpSys"

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSysDumper:Lcom/facebook/rti/common/logging/MqttSystemDumper;

    invoke-interface {v1}, Lcom/facebook/rti/common/logging/MqttSystemDumper;->getSysDump()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->flushBufferSync()V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 108
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fbnslite_log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fbnslite_log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mCurrentFileIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    return-object v1

    .line 101
    :cond_2
    const-string v0, "SystemDumper not connected"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public log(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 59
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->logInternal(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-static {p2}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->buildLogFromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->log(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setSystemDumper(Lcom/facebook/rti/common/logging/MqttSystemDumper;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->mSysDumper:Lcom/facebook/rti/common/logging/MqttSystemDumper;

    .line 94
    return-void
.end method
