.class public Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;
.super Ljava/lang/Object;
.source "OptSvcAnalyticsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/OptSvcAnalyticsStore$EventConsumer;
    }
.end annotation


# static fields
.field private static final CURRENT_SCHEMA_VERSION:I = 0x2

.field static final EVENT_DIR_NAME:Ljava/lang/String; = "optsvc_analytics"

.field private static final FILE_SUFFIX:Ljava/lang/String; = ".txt"

.field static final HISTORY_DIR_NAME:Ljava/lang/String; = "optsvc_history"

.field private static final HISTORY_FILE_SUFFIX:Ljava/lang/String;

.field public static final LOGGING_KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final LOGGING_KEY_ATTEMPT_NUMBER:Ljava/lang/String; = "attempt_number"

.field public static final LOGGING_KEY_CLIENT_TIME:Ljava/lang/String; = "client_time"

.field public static final LOGGING_KEY_DETAIL_MSG:Ljava/lang/String; = "detail_msg"

.field public static final LOGGING_KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final LOGGING_KEY_EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final LOGGING_KEY_EXIT_CODE:Ljava/lang/String; = "exit_code"

.field public static final LOGGING_KEY_JOB_NAME:Ljava/lang/String; = "job_name"

.field public static final LOGGING_KEY_STEP:Ljava/lang/String; = "step"

.field private static final TAG:Ljava/lang/String; = "OptSvcAnalytics"

.field private static final UNKNOWN_SCHEMA_VERSION:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->HISTORY_FILE_SUFFIX:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static captureCommonKeyValues(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    const-string v0, "app_version"

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "client_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method private static closeIt(Ljava/io/Closeable;)V
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 334
    if-eqz p0, :cond_0

    .line 336
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized consumeEvents(Landroid/content/Context;ZILcom/facebook/common/dextricks/OptSvcAnalyticsStore$EventConsumer;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 209
    const-class v3, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;

    monitor-enter v3

    if-nez p0, :cond_1

    .line 249
    :cond_0
    monitor-exit v3

    return-void

    .line 212
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 218
    if-eqz v4, :cond_0

    array-length v1, v4

    if-eqz v1, :cond_0

    .line 222
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    move v1, v0

    .line 226
    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_4

    .line 227
    aget-object v7, v4, v2

    .line 229
    if-eqz p1, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, ".txt"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    invoke-static {v7}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->getSchemaVersionFromFile(Ljava/io/File;)I

    move-result v0

    .line 231
    const/4 v8, 0x2

    if-ne v0, v8, :cond_5

    if-ge v1, p2, :cond_5

    .line 232
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 233
    invoke-static {v7, v5}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->readEventFileFully(Ljava/io/File;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    const-string v0, "event_name"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0, v5}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore$EventConsumer;->consume(Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 238
    :goto_1
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {v7}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->isFileOldEnoughToDelete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    goto :goto_2

    .line 246
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeObjectCoalesceNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    const-string v0, ""

    .line 322
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHistoryStorageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 294
    const-string v0, "optsvc_history"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getNewFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSchemaVersionFromFile(Ljava/io/File;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 308
    if-ltz v2, :cond_0

    .line 312
    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".txt"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getStorageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 290
    const-string v0, "optsvc_analytics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static isFileOldEnoughToDelete(Ljava/io/File;)Z
    .locals 6

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 286
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {p0}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->getStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 84
    invoke-static {p2}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->captureCommonKeyValues(Ljava/util/Map;)V

    .line 86
    invoke-static {}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->getNewFileName()Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".tmp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "event_name"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    if-eqz v1, :cond_2

    .line 99
    invoke-static {v1}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->escapeObjectCoalesceNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 107
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->writeUTF8BytesToFile(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "OptSvcAnalytics"

    const-string v4, "Failed to log event"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static queryOptimizationJobTimestamps(Landroid/content/Context;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {p0}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->getHistoryStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 158
    if-nez v3, :cond_1

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 162
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 163
    aget-object v4, v3, v0

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 165
    sget-object v6, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->HISTORY_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 166
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 167
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_3
    if-eqz p1, :cond_2

    invoke-static {v4}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->isFileOldEnoughToDelete(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 173
    goto :goto_0
.end method

.method private static readEventFileFully(Ljava/io/File;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 256
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 261
    if-nez v0, :cond_0

    .line 274
    invoke-static {v2}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 275
    invoke-static {v4}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 276
    invoke-static {v5}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 280
    const-string v0, "event_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "event_name"

    .line 281
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    :goto_2
    return v1

    .line 264
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v3

    .line 265
    if-nez v3, :cond_1

    .line 274
    invoke-static {v2}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 275
    invoke-static {v4}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 276
    invoke-static {v5}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    goto :goto_2

    .line 268
    :cond_1
    :try_start_5
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    .line 271
    :goto_3
    :try_start_6
    const-string v5, "OptSvcAnalytics"

    const-string v6, "Failed to read event"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 274
    invoke-static {v2}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 275
    invoke-static {v3}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 276
    invoke-static {v4}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    goto :goto_2

    .line 274
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_4
    invoke-static {v3}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 275
    invoke-static {v4}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    .line 276
    invoke-static {v5}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->closeIt(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    move v0, v1

    .line 281
    goto :goto_1

    .line 274
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    .line 270
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_3
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeJobStartTimestamp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 123
    invoke-static {p0}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->getHistoryStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->HISTORY_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->writeUTF8BytesToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 136
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "OptSvcAnalytics"

    const-string v1, "Failed event history rename"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "OptSvcAnalytics"

    const-string v2, "Failed to log event history"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static writeUTF8BytesToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 184
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 185
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 186
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
