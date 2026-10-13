.class public Lcom/facebook/acra/util/Nightwatch;
.super Ljava/lang/Object;
.source "Nightwatch.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final WATCHER_BINARY:Ljava/lang/String; = "libwatcher_binary.so"

.field private static final WATCHER_DIR:Ljava/lang/String; = "watcher"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/acra/util/Nightwatch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/util/Nightwatch;->LOG_TAG:Ljava/lang/String;

    .line 20
    const-string v0, "acra"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native start(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static startWatcher(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "useSetSid"    # Z

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 27
    .local v1, "insecureRandom":Ljava/util/Random;
    new-instance v6, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 28
    .local v6, "uuidForFileName":Ljava/util/UUID;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x3a

    const/16 v10, 0x5f

    .line 29
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "logFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v8, "watcher"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-direct {v3, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v3, "logPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "logPathStr":Ljava/lang/String;
    sget-object v8, Lcom/facebook/acra/util/Nightwatch;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Watcher file is %s"

    invoke-static {v8, v9, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string v8, "libwatcher_binary.so"

    invoke-static {v8}, Lcom/facebook/soloader/SoLoader;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "watcherBinaryPath":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 36
    sget-object v8, Lcom/facebook/acra/util/Nightwatch;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Could not find watcher binary"

    invoke-static {v8, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v1    # "insecureRandom":Ljava/util/Random;
    .end local v2    # "logFileName":Ljava/lang/String;
    .end local v3    # "logPath":Ljava/io/File;
    .end local v4    # "logPathStr":Ljava/lang/String;
    .end local v6    # "uuidForFileName":Ljava/util/UUID;
    .end local v7    # "watcherBinaryPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 38
    .restart local v1    # "insecureRandom":Ljava/util/Random;
    .restart local v2    # "logFileName":Ljava/lang/String;
    .restart local v3    # "logPath":Ljava/io/File;
    .restart local v4    # "logPathStr":Ljava/lang/String;
    .restart local v6    # "uuidForFileName":Ljava/util/UUID;
    .restart local v7    # "watcherBinaryPath":Ljava/lang/String;
    :cond_0
    invoke-static {v7, v4, p2}, Lcom/facebook/acra/util/Nightwatch;->start(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    .line 39
    .local v5, "ret":I
    sget-object v8, Lcom/facebook/acra/util/Nightwatch;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Status starting watch: %d"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v1    # "insecureRandom":Ljava/util/Random;
    .end local v2    # "logFileName":Ljava/lang/String;
    .end local v3    # "logPath":Ljava/io/File;
    .end local v4    # "logPathStr":Ljava/lang/String;
    .end local v5    # "ret":I
    .end local v6    # "uuidForFileName":Ljava/util/UUID;
    .end local v7    # "watcherBinaryPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/facebook/acra/util/Nightwatch;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error starting watcher"

    invoke-static {v8, v9, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
