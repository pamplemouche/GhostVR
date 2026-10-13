.class Lcom/facebook/acra/LogCatCollector;
.super Ljava/lang/Object;
.source "LogCatCollector.java"


# static fields
.field private static final COMPRESS_NEWLINE:Ljava/lang/String; = "\\n"

.field private static final NEWLINE:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String;

.field protected static final UTF_8_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final sGetLogcatInterceptorContentsMethod:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sIsLogcatInterceptorInstalledMethod:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 52
    const-class v4, Lcom/facebook/acra/LogCatCollector;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "getLogcatInterceptorContentsMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 64
    .local v3, "isLogcatInterceptorInstalledMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v4, "com.facebook.logcatinterceptor.LogcatInterceptor"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 65
    .local v2, "interceptorClass":Ljava/lang/Class;
    const-string v4, "getLogcatContents"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    const-string v4, "isInstalled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 72
    sput-object v1, Lcom/facebook/acra/LogCatCollector;->sGetLogcatInterceptorContentsMethod:Ljava/lang/reflect/Method;

    .line 73
    sput-object v3, Lcom/facebook/acra/LogCatCollector;->sIsLogcatInterceptorInstalledMethod:Ljava/lang/reflect/Method;

    .line 75
    .end local v2    # "interceptorClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v4

    .line 72
    sput-object v1, Lcom/facebook/acra/LogCatCollector;->sGetLogcatInterceptorContentsMethod:Ljava/lang/reflect/Method;

    .line 73
    sput-object v3, Lcom/facebook/acra/LogCatCollector;->sIsLogcatInterceptorInstalledMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    sget-object v4, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v5, "Could not find method on LogcatInterceptor"

    invoke-static {v4, v0, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    sput-object v1, Lcom/facebook/acra/LogCatCollector;->sGetLogcatInterceptorContentsMethod:Ljava/lang/reflect/Method;

    .line 73
    sput-object v3, Lcom/facebook/acra/LogCatCollector;->sIsLogcatInterceptorInstalledMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catchall_0
    move-exception v4

    sput-object v1, Lcom/facebook/acra/LogCatCollector;->sGetLogcatInterceptorContentsMethod:Ljava/lang/reflect/Method;

    .line 73
    sput-object v3, Lcom/facebook/acra/LogCatCollector;->sIsLogcatInterceptorInstalledMethod:Ljava/lang/reflect/Method;

    throw v4
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p2, "bufferName"    # Ljava/lang/String;
    .param p3, "logcatFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "doCompress"    # Z
    .param p5, "collectLogcatFromExternalProcess"    # Z
    .param p6, "maxNumLines"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "rawLogcat":Ljava/lang/String;
    if-nez p5, :cond_1

    .line 148
    invoke-static {p0}, Lcom/facebook/acraconfig/AcraConfig;->isLogcatInterceptorAfterCrashEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const-string v1, "main"

    .line 149
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 151
    invoke-static {p3}, Lcom/facebook/acra/LogCatCollector;->getLogcatFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_1
    if-nez v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 158
    invoke-interface {p1, p6}, Lcom/facebook/acra/config/AcraReportingConfig;->logcatArguments(Z)[Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_4

    const-string v1, "\\n"

    .line 157
    :goto_0
    invoke-static {v2, p2, v1}, Lcom/facebook/acra/LogCatCollector;->collectLogCatBySpawningOtherProcess([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_2
    if-nez v0, :cond_5

    .line 163
    const/4 v0, 0x0

    .line 168
    .end local v0    # "rawLogcat":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0

    .line 158
    .restart local v0    # "rawLogcat":Ljava/lang/String;
    :cond_4
    const-string v1, "\n"

    goto :goto_0

    .line 165
    :cond_5
    if-eqz p4, :cond_3

    .line 166
    invoke-static {v0}, Lcom/facebook/acra/LogCatCollector;->compressBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected static collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p2, "bufferName"    # Ljava/lang/String;
    .param p3, "doCompress"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/facebook/acra/config/AcraReportingConfig;
    .param p2, "bufferName"    # Ljava/lang/String;
    .param p3, "doCompress"    # Z
    .param p4, "collectLogcatFromExternalProcess"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static collectLogCatBySpawningOtherProcess([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "logcatArguments"    # [Ljava/lang/String;
    .param p1, "bufferName"    # Ljava/lang/String;
    .param p2, "lineBreak"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    const/4 v7, 0x0

    .line 187
    .local v7, "logcatBuf":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "logcat"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    if-eqz p1, :cond_0

    .line 190
    const-string v10, "-b"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 197
    .local v9, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 198
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 200
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    sget-object v10, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v11, "Retrieving logcat output from spawned process"

    invoke-static {v10, v11}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v4, 0x0

    .line 203
    .local v4, "length":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v10, 0xc8

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v6, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 205
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_0

    .line 210
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v7    # "logcatBuf":Ljava/lang/StringBuilder;
    .local v8, "logcatBuf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 212
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v8

    .line 219
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "logcatBuf":Ljava/lang/StringBuilder;
    .end local v9    # "process":Ljava/lang/Process;
    .restart local v7    # "logcatBuf":Ljava/lang/StringBuilder;
    :goto_2
    if-nez v7, :cond_3

    const/4 v10, 0x0

    :goto_3
    return-object v10

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    sget-object v10, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v11, "LogCatCollector.collectLogcat could not retrieve data."

    invoke-static {v10, v2, v11}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 216
    .end local v7    # "logcatBuf":Ljava/lang/StringBuilder;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "logcatBuf":Ljava/lang/StringBuilder;
    .restart local v9    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "logcatBuf":Ljava/lang/StringBuilder;
    .restart local v7    # "logcatBuf":Ljava/lang/StringBuilder;
    goto :goto_4
.end method

.method protected static compressBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 230
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v0, v5

    .line 245
    :goto_0
    return-object v0

    .line 233
    :cond_1
    sget-object v6, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v7, "Precompression logcat size: %d"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 236
    .local v4, "strByte":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 238
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 239
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 240
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "compressedLogcat":Ljava/lang/String;
    sget-object v6, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v7, "After compression logcat size: %d"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0    # "compressedLogcat":Ljava/lang/String;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "strByte":[B
    :catch_0
    move-exception v1

    .line 244
    .local v1, "ex":Ljava/io/IOException;
    sget-object v6, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v7, "Failed to compress string"

    invoke-static {v6, v1, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v5

    .line 245
    goto :goto_0
.end method

.method protected static getLogcatFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, "logcatFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v6, "text":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 98
    .local v2, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    if-eqz v3, :cond_2

    .line 105
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v8, "Could not close LogcatInterceptor buffer reader"

    invoke-static {v7, v1, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v2, v3

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 110
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 114
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .line 99
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v7, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v8, "Could not find LogcatInterceptor file"

    invoke-static {v7, v1, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    if-eqz v2, :cond_0

    .line 105
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 112
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v8, "Could not close LogcatInterceptor buffer reader"

    invoke-static {v7, v1, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 102
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 103
    if-eqz v2, :cond_4

    .line 105
    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "line":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 107
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 112
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    sget-object v8, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v9, "Could not close LogcatInterceptor buffer reader"

    invoke-static {v8, v1, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    throw v7

    .line 110
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4
.end method

.method private static isLogcatInterceptorInstalled()Z
    .locals 5

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "isInterceptorInstalled":Z
    sget-object v2, Lcom/facebook/acra/LogCatCollector;->sIsLogcatInterceptorInstalledMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 175
    :try_start_0
    sget-object v2, Lcom/facebook/acra/LogCatCollector;->sIsLogcatInterceptorInstalledMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    sget-object v2, Lcom/facebook/acra/LogCatCollector;->TAG:Ljava/lang/String;

    const-string v3, "Could not call isInstalled method on LogcatInterceptor"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
