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
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "start"    # I

    .prologue
    .line 123
    array-length v1, p0

    if-lt p1, v1, :cond_1

    .line 124
    const/4 v0, -0x1

    .line 128
    :cond_0
    return v0

    .line 126
    :cond_1
    move v0, p1

    .line 127
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

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
    .param p0, "arr1"    # [B
    .param p1, "offset"    # I
    .param p2, "arr2"    # [B

    .prologue
    const/4 v1, 0x0

    .line 132
    array-length v2, p0

    sub-int/2addr v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
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
    .locals 4

    .prologue
    .line 114
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/facebook/acra/util/JavaProcFileReader;->FD_DIR:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "fdFiles":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "fdFiles":[Ljava/lang/String;
    :goto_0
    return v2

    .line 115
    .restart local v1    # "fdFiles":[Ljava/lang/String;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 116
    .end local v1    # "fdFiles":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/facebook/acra/util/JavaProcFileReader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getOpenFDLimits()Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    .locals 15
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 148
    const/4 v10, 0x0

    .line 149
    .local v10, "res":Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 151
    .local v0, "fileBuf":[B
    const/4 v1, 0x0

    .line 152
    .local v1, "curr":I
    const-string v3, "Max open files"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 153
    .local v11, "rowName":[B
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    .line 156
    .local v4, "readBuf":[Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    const-string v3, "/proc/self/limits"

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v9, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 157
    const/4 v6, 0x0

    :try_start_1
    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v0, v6, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .line 158
    .local v8, "fileSize":I
    const/4 v6, 0x0

    aput-byte v6, v0, v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    if-eqz v9, :cond_0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    :cond_0
    :goto_0
    add-int/lit8 v3, v8, -0x1

    sub-int/2addr v3, v1

    array-length v6, v11

    if-le v3, v6, :cond_1

    .line 167
    invoke-static {v0, v1}, Lcom/facebook/acra/util/JavaProcFileReader;->findNewLineOrEnd([BI)I

    move-result v2

    .line 168
    .local v2, "nl":I
    invoke-static {v0, v1, v11}, Lcom/facebook/acra/util/JavaProcFileReader;->startsWithOffset([BI[B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    sget-object v3, Lcom/facebook/acra/util/JavaProcFileReader;->PROC_OPEN_FD_LIMITS_FORMAT:[I

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/procread/ProcReader;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    new-instance v10, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;

    .end local v10    # "res":Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    aget-object v3, v4, v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v10, v3, v5}, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;-><init>(II)V

    .end local v2    # "nl":I
    .restart local v10    # "res":Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    :cond_1
    move-object v5, v10

    .line 178
    .end local v8    # "fileSize":I
    .end local v9    # "in":Ljava/io/FileInputStream;
    :goto_1
    return-object v5

    .line 159
    .restart local v8    # "fileSize":I
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v8    # "fileSize":I
    .end local v9    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    .line 160
    .local v7, "e":Ljava/io/IOException;
    sget-object v3, Lcom/facebook/acra/util/JavaProcFileReader;->TAG:Ljava/lang/String;

    const-string v6, "Failed to read /proc/self/limits"

    invoke-static {v3, v7, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "fileSize":I
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 156
    .end local v8    # "fileSize":I
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    :catchall_0
    move-exception v6

    move-object v14, v6

    move-object v6, v3

    move-object v3, v14

    :goto_2
    if-eqz v9, :cond_3

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_3
    :try_start_7
    throw v3

    :catch_3
    move-exception v12

    invoke-virtual {v6, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 175
    .restart local v2    # "nl":I
    .restart local v8    # "fileSize":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .line 176
    goto :goto_0

    .line 159
    .end local v2    # "nl":I
    .end local v8    # "fileSize":I
    :catchall_1
    move-exception v3

    move-object v6, v5

    goto :goto_2
.end method

.method public getOpenFileDescriptors()Ljava/lang/String;
    .locals 16

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v12, 0x3

    :try_start_0
    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/system/bin/ls"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-l"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/facebook/acra/util/JavaProcFileReader;->FD_DIR:Ljava/lang/String;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    .line 64
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/facebook/acra/util/CommandOutputCollector;->collect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "lsOutput":Ljava/lang/String;
    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "lines":[Ljava/lang/String;
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v12, v8

    if-ge v5, v12, :cond_5

    .line 69
    aget-object v7, v8, v5

    .line 70
    .local v7, "line":Ljava/lang/String;
    const-string v12, " -> "

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 72
    .local v6, "index":I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_0

    .line 68
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const-string v12, " -> "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "fileLeafPath":Ljava/lang/String;
    const-string v12, "/fd/"

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 78
    const/4 v12, -0x1

    if-ne v6, v12, :cond_3

    .line 79
    move-object v11, v4

    .line 83
    .local v11, "shortFileLeafPath":Ljava/lang/String;
    :goto_2
    const-string v12, "pipe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 84
    const-string v4, "pipe"

    .line 88
    :cond_1
    :goto_3
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/util/JavaProcFileReader$Counter;

    .line 89
    .local v1, "counter":Lcom/facebook/acra/util/JavaProcFileReader$Counter;
    if-nez v1, :cond_2

    .line 90
    new-instance v1, Lcom/facebook/acra/util/JavaProcFileReader$Counter;

    .end local v1    # "counter":Lcom/facebook/acra/util/JavaProcFileReader$Counter;
    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/facebook/acra/util/JavaProcFileReader$Counter;-><init>(Lcom/facebook/acra/util/JavaProcFileReader$1;)V

    .line 91
    .restart local v1    # "counter":Lcom/facebook/acra/util/JavaProcFileReader$Counter;
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_2
    iget v12, v1, Lcom/facebook/acra/util/JavaProcFileReader$Counter;->count:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lcom/facebook/acra/util/JavaProcFileReader$Counter;->count:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 99
    .end local v1    # "counter":Lcom/facebook/acra/util/JavaProcFileReader$Counter;
    .end local v4    # "fileLeafPath":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v9    # "lsOutput":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    .end local v11    # "shortFileLeafPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v12, Lcom/facebook/acra/util/JavaProcFileReader;->TAG:Ljava/lang/String;

    const-string v13, "Exception caught while reading open file descriptors"

    invoke-static {v12, v2, v13}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    return-object v12

    .line 81
    .restart local v4    # "fileLeafPath":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lines":[Ljava/lang/String;
    .restart local v9    # "lsOutput":Ljava/lang/String;
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    :cond_3
    :try_start_1
    const-string v12, "/fd/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "shortFileLeafPath":Ljava/lang/String;
    goto :goto_2

    .line 85
    :cond_4
    const-string v12, "socket"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 86
    const-string v4, "socket"

    goto :goto_3

    .line 95
    .end local v4    # "fileLeafPath":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "shortFileLeafPath":Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 96
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/acra/util/JavaProcFileReader$Counter;

    iget v12, v12, Lcom/facebook/acra/util/JavaProcFileReader$Counter;->count:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 99
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    .end local v5    # "i":I
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v9    # "lsOutput":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    :catch_1
    move-exception v2

    goto :goto_4

    .line 98
    .restart local v5    # "i":I
    .restart local v8    # "lines":[Ljava/lang/String;
    .restart local v9    # "lsOutput":Ljava/lang/String;
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    goto :goto_5

    .line 99
    .end local v5    # "i":I
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v9    # "lsOutput":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/acra/util/JavaProcFileReader$Counter;>;"
    :catch_2
    move-exception v2

    goto :goto_4
.end method
