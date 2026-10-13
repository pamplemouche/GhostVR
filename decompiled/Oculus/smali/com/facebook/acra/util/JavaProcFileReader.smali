.class Lcom/facebook/acra/util/JavaProcFileReader;
.super Lcom/facebook/acra/util/ProcFileReader;
.source "JavaProcFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/util/JavaProcFileReader$Counter;
    }
.end annotation


# static fields
.field private static final FD_DIR:Ljava/lang/String;

.field private static final FD_DIR_STRING:Ljava/lang/String; = "/fd/"

.field private static final LS_SYMLINK_ARROW:Ljava/lang/String; = " -> "

.field private static final PIPE_STRING:Ljava/lang/String; = "pipe"

.field private static final PROC_OPEN_FD_LIMITS_FORMAT:[I

.field private static final SOCKET_STRING:Ljava/lang/String; = "socket"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/facebook/acra/util/JavaProcFileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-class v0, Lcom/facebook/acra/util/JavaProcFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/util/JavaProcFileReader;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "/proc/%s/fd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/util/JavaProcFileReader;->FD_DIR:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/acra/util/JavaProcFileReader;->sInstance:Lcom/facebook/acra/util/JavaProcFileReader;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/acra/util/JavaProcFileReader;->PROC_OPEN_FD_LIMITS_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x20
        0x120
        0x1120
        0x1120
        0x120
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/acra/util/ProcFileReader;-><init>()V

    return-void
.end method

.method private static findNewLineOrEnd([BI)I
    .locals 2

    .prologue
    .line 123
    array-length v0, p0

    if-lt p1, v0, :cond_1

    .line 124
    const/4 p1, -0x1

    .line 128
    :cond_0
    return p1

    .line 127
    :cond_1
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    aget-byte v0, p0, p1

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/acra/util/JavaProcFileReader;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/facebook/acra/util/JavaProcFileReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/acra/util/JavaProcFileReader;->sInstance:Lcom/facebook/acra/util/JavaProcFileReader;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/facebook/acra/util/JavaProcFileReader;

    invoke-direct {v0}, Lcom/facebook/acra/util/JavaProcFileReader;-><init>()V

    sput-object v0, Lcom/facebook/acra/util/JavaProcFileReader;->sInstance:Lcom/facebook/acra/util/JavaProcFileReader;

    .line 42
    :cond_0
    sget-object v0, Lcom/facebook/acra/util/JavaProcFileReader;->sInstance:Lcom/facebook/acra/util/JavaProcFileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static startsWithOffset([BI[B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    array-length v0, p0

    sub-int/2addr v0, p1

    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 135
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 136
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getOpenFDCount()I
    .locals 2

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/acra/util/JavaProcFileReader;->FD_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/facebook/acra/util/JavaProcFileReader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getOpenFDLimits()Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 149
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 152
    const-string v1, "Max open files"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 153
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    .line 156
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v1, "/proc/self/limits"

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 157
    const/4 v6, 0x0

    :try_start_1
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v0, v6, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 158
    const/4 v8, 0x0

    aput-byte v8, v0, v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    if-eqz v2, :cond_0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move v1, v7

    .line 166
    :goto_1
    add-int/lit8 v2, v6, -0x1

    sub-int/2addr v2, v1

    array-length v8, v3

    if-le v2, v8, :cond_1

    .line 167
    invoke-static {v0, v1}, Lcom/facebook/acra/util/JavaProcFileReader;->findNewLineOrEnd([BI)I

    move-result v2

    .line 168
    invoke-static {v0, v1, v3}, Lcom/facebook/acra/util/JavaProcFileReader;->startsWithOffset([BI[B)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 169
    sget-object v3, Lcom/facebook/acra/util/JavaProcFileReader;->PROC_OPEN_FD_LIMITS_FORMAT:[I

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/procread/ProcReader;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-instance v5, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;

    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v5, v0, v1}, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;-><init>(II)V

    .line 178
    :cond_1
    :goto_2
    return-object v5

    .line 159
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 160
    sget-object v1, Lcom/facebook/acra/util/JavaProcFileReader;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read /proc/self/limits"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 156
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 175
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .line 176
    goto :goto_1

    .line 159
    :catchall_1
    move-exception v0

    move-object v1, v5

    goto :goto_3
.end method

.method public getOpenFileDescriptors()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, -0x1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "/system/bin/ls"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "-l"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/facebook/acra/util/JavaProcFileReader;->FD_DIR:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 64
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/facebook/acra/util/CommandOutputCollector;->collect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 66
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move v2, v0

    .line 68
    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_4

    .line 69
    aget-object v0, v4, v2

    .line 70
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 72
    if-ne v1, v7, :cond_0

    .line 68
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 75
    :cond_0
    const-string v6, " -> "

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "/fd/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 78
    if-ne v1, v7, :cond_2

    move-object v1, v0

    .line 83
    :goto_2
    const-string v6, "pipe"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 84
    const-string v0, "pipe"

    move-object v1, v0

    .line 88
    :goto_3
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/util/JavaProcFileReader$Counter;

    .line 89
    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/facebook/acra/util/JavaProcFileReader$Counter;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/facebook/acra/util/JavaProcFileReader$Counter;-><init>(Lcom/facebook/acra/util/JavaProcFileReader$1;)V

    .line 91
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    iget v1, v0, Lcom/facebook/acra/util/JavaProcFileReader$Counter;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/facebook/acra/util/JavaProcFileReader$Counter;->count:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :goto_4
    sget-object v1, Lcom/facebook/acra/util/JavaProcFileReader;->TAG:Ljava/lang/String;

    const-string v2, "Exception caught while reading open file descriptors"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    .line 81
    :cond_2
    :try_start_1
    const-string v6, "/fd/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 85
    :cond_3
    const-string/jumbo v6, "socket"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 86
    const-string/jumbo v0, "socket"

    move-object v1, v0

    goto :goto_3

    .line 95
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/util/JavaProcFileReader$Counter;

    iget v0, v0, Lcom/facebook/acra/util/JavaProcFileReader$Counter;->count:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 99
    :catch_1
    move-exception v0

    goto :goto_4

    .line 98
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_5

    .line 99
    :catch_2
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_3
.end method
