.class final Lcom/facebook/common/procread/NewProcReader;
.super Ljava/lang/Object;
.source "NewProcReader.java"

# interfaces
.implements Lcom/facebook/common/procread/IProcReader;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private final mFilesCannotAccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/procread/NewProcReader;->mFilesCannotAccess:Ljava/util/Set;

    .line 43
    return-void
.end method

.method private static bufferEquals([BILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 323
    :goto_0
    array-length v3, p0

    if-ge p1, v3, :cond_2

    if-ge v0, v2, :cond_2

    .line 324
    aget-byte v3, p0, p1

    .line 325
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 326
    if-eq v3, v4, :cond_1

    .line 332
    :cond_0
    :goto_1
    return v1

    .line 323
    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_2
    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method static create()Lcom/facebook/common/procread/NewProcReader;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/common/procread/NewProcReader;

    invoke-direct {v0}, Lcom/facebook/common/procread/NewProcReader;-><init>()V

    return-object v0
.end method

.method private static findChar([BICI)I
    .locals 1

    .prologue
    .line 308
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 309
    aget-byte v0, p0, p1

    if-ne v0, p2, :cond_0

    .line 314
    :goto_1
    return p1

    .line 308
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p3

    .line 314
    goto :goto_1
.end method

.method private readFile(Ljava/lang/String;[B)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/16 v4, 0x9

    .line 251
    iget-object v0, p0, Lcom/facebook/common/procread/NewProcReader;->mFilesCannotAccess:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 256
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    .line 259
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 263
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/common/procread/NewProcReader;->readFileSystemOs(Ljava/lang/String;[B)I

    move-result v2

    .line 265
    const v3, -0x7fffffff

    if-ne v2, v3, :cond_3

    .line 266
    iget-object v2, p0, Lcom/facebook/common/procread/NewProcReader;->mFilesCannotAccess:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    if-eqz v0, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    .line 273
    check-cast v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 272
    :cond_3
    if-eqz v0, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_4

    .line 273
    check-cast v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_4
    move v0, v2

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_5

    .line 273
    check-cast v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_5
    throw v1
.end method

.method private static readFileSystemOs(Ljava/lang/String;[B)I
    .locals 6

    .prologue
    const v0, -0x7fffffff

    .line 279
    array-length v1, p1

    .line 284
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    const/4 v3, 0x0

    add-int/lit8 v1, v1, -0x1

    :try_start_1
    invoke-static {v2, p1, v3, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 297
    :try_start_2
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_4

    .line 303
    :goto_0
    return v0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    const-string v2, "NewProcReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to raw open process file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 292
    :catch_1
    move-exception v1

    .line 293
    :goto_1
    :try_start_3
    const-string v3, "NewProcReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read process file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 298
    :catch_2
    move-exception v1

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    :try_start_5
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5

    .line 300
    :goto_2
    throw v0

    .line 292
    :catch_3
    move-exception v1

    goto :goto_1

    .line 298
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
    .locals 21
    .param p5    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 73
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    .line 74
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v4, v0

    move v15, v4

    .line 75
    :goto_0
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    array-length v4, v0

    move v14, v4

    .line 76
    :goto_1
    if-eqz p7, :cond_2

    move-object/from16 v0, p7

    array-length v4, v0

    .line 79
    :goto_2
    const/4 v7, 0x0

    .line 81
    const/4 v8, 0x1

    .line 83
    const/4 v5, 0x0

    move v13, v5

    move/from16 v6, p2

    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_16

    .line 84
    aget v5, p4, v13

    .line 85
    and-int/lit16 v9, v5, 0x200

    if-eqz v9, :cond_3

    .line 86
    add-int/lit8 v6, v6, 0x1

    move v12, v5

    .line 94
    :goto_4
    and-int/lit16 v5, v12, 0xff

    int-to-char v10, v5

    .line 96
    move/from16 v0, p3

    if-lt v6, v0, :cond_5

    .line 97
    const-string v4, "NewProcReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ran off end of data @"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v4, 0x0

    .line 165
    :goto_5
    return v4

    .line 74
    :cond_0
    const/4 v4, 0x0

    move v15, v4

    goto :goto_0

    .line 75
    :cond_1
    const/4 v4, 0x0

    move v14, v4

    goto :goto_1

    .line 76
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 87
    :cond_3
    and-int/lit16 v9, v5, 0x400

    if-eqz v9, :cond_15

    .line 88
    aget-byte v9, p1, v6

    const/16 v10, 0x22

    if-ne v9, v10, :cond_4

    .line 89
    add-int/lit8 v6, v6, 0x1

    move v12, v5

    goto :goto_4

    .line 91
    :cond_4
    and-int/lit16 v5, v5, -0x401

    move v12, v5

    goto :goto_4

    .line 102
    :cond_5
    const/4 v9, -0x1

    .line 103
    and-int/lit16 v5, v12, 0x200

    if-eqz v5, :cond_7

    move v9, v6

    .line 104
    :goto_6
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    aget-byte v5, p1, v9

    const/16 v11, 0x29

    if-eq v5, v11, :cond_6

    .line 105
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 108
    :cond_6
    add-int/lit8 v5, v9, 0x1

    .line 116
    :goto_7
    move/from16 v0, p3

    if-ge v5, v0, :cond_9

    aget-byte v11, p1, v5

    if-eq v11, v10, :cond_9

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 109
    :cond_7
    and-int/lit16 v5, v12, 0x400

    if-eqz v5, :cond_14

    move v5, v6

    .line 110
    :goto_8
    aget-byte v9, p1, v5

    const/16 v11, 0x22

    if-eq v9, v11, :cond_8

    move/from16 v0, p3

    if-ge v5, v0, :cond_8

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 114
    :cond_8
    add-int/lit8 v9, v5, 0x1

    move/from16 v20, v5

    move v5, v9

    move/from16 v9, v20

    goto :goto_7

    .line 119
    :cond_9
    if-gez v9, :cond_13

    move v11, v5

    .line 123
    :goto_9
    move/from16 v0, p3

    if-ge v5, v0, :cond_a

    .line 124
    add-int/lit8 v5, v5, 0x1

    .line 125
    and-int/lit16 v9, v12, 0x100

    if-eqz v9, :cond_a

    .line 126
    :goto_a
    move/from16 v0, p3

    if-ge v5, v0, :cond_a

    aget-byte v9, p1, v5

    if-ne v9, v10, :cond_a

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    move v10, v5

    .line 132
    and-int/lit16 v5, v12, 0x7000

    if-eqz v5, :cond_12

    .line 134
    move/from16 v0, v16

    if-ge v11, v0, :cond_f

    const/4 v5, 0x1

    move v9, v5

    .line 136
    :goto_b
    if-eqz v9, :cond_10

    .line 137
    aget-byte v5, p1, v11

    .line 138
    const/16 v18, 0x0

    aput-byte v18, p1, v11

    .line 142
    :goto_c
    and-int/lit16 v0, v12, 0x4000

    move/from16 v18, v0

    if-eqz v18, :cond_b

    if-ge v7, v4, :cond_b

    if-eqz p7, :cond_b

    .line 143
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1}, Lcom/facebook/common/procread/ByteParse;->strtof([BILcom/facebook/common/procread/StrofResult;)F

    move-result v18

    aput v18, p7, v7

    .line 145
    :cond_b
    and-int/lit16 v0, v12, 0x2000

    move/from16 v18, v0

    if-eqz v18, :cond_c

    if-ge v7, v14, :cond_c

    if-eqz p6, :cond_c

    .line 146
    and-int/lit16 v0, v12, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 148
    aget-byte v18, p1, v6

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    aput-wide v18, p6, v7

    .line 153
    :cond_c
    :goto_d
    and-int/lit16 v12, v12, 0x1000

    if-eqz v12, :cond_d

    if-ge v7, v15, :cond_d

    if-eqz p5, :cond_d

    .line 154
    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v6, v12, v1}, Lcom/facebook/common/procread/NewProcReader;->findChar([BICI)I

    move-result v12

    .line 155
    new-instance v18, Ljava/lang/String;

    sub-int/2addr v12, v6

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v12}, Ljava/lang/String;-><init>([BII)V

    .line 156
    aput-object v18, p5, v7

    .line 158
    :cond_d
    if-eqz v9, :cond_e

    .line 159
    aput-byte v5, p1, v11

    .line 161
    :cond_e
    add-int/lit8 v5, v7, 0x1

    .line 83
    :goto_e
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    move v7, v5

    move v6, v10

    goto/16 :goto_3

    .line 134
    :cond_f
    const/4 v5, 0x0

    move v9, v5

    goto :goto_b

    .line 140
    :cond_10
    const/4 v5, 0x0

    goto :goto_c

    .line 150
    :cond_11
    const/16 v18, 0xa

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v6, v1, v2}, Lcom/facebook/common/procread/ByteParse;->strtoll([BIILcom/facebook/common/procread/StrtollResult;)J

    move-result-wide v18

    aput-wide v18, p6, v7

    goto :goto_d

    :cond_12
    move v5, v7

    goto :goto_e

    :cond_13
    move v11, v9

    goto/16 :goto_9

    :cond_14
    move v5, v6

    goto/16 :goto_7

    :cond_15
    move v12, v5

    goto/16 :goto_4

    :cond_16
    move v4, v8

    goto/16 :goto_5
.end method

.method public readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .locals 8
    .param p3    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 52
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 53
    invoke-direct {p0, p1, v1}, Lcom/facebook/common/procread/NewProcReader;->readFile(Ljava/lang/String;[B)I

    move-result v3

    .line 55
    if-gez v3, :cond_0

    .line 56
    const-string v0, "NewProcReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open and read process file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return v2

    :cond_0
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/common/procread/NewProcReader;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v2

    goto :goto_0
.end method

.method public readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z
    .locals 15

    .prologue
    .line 172
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 173
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot pass null values"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_1
    move-object/from16 v0, p2

    array-length v9, v0

    .line 177
    move-object/from16 v0, p3

    array-length v2, v0

    if-le v9, v2, :cond_2

    .line 178
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array lengths differ"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_3

    .line 184
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_3
    const/4 v3, 0x1

    .line 189
    const/16 v2, 0x800

    new-array v10, v2, [B

    .line 191
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Lcom/facebook/common/procread/NewProcReader;->readFile(Ljava/lang/String;[B)I

    move-result v2

    .line 192
    if-gez v2, :cond_4

    .line 193
    const-string v2, "NewProcReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v2, 0x0

    .line 195
    const/4 v3, 0x0

    .line 198
    :cond_4
    array-length v11, v10

    .line 199
    if-ge v2, v11, :cond_5

    .line 200
    const/4 v4, 0x0

    aput-byte v4, v10, v2

    .line 203
    :cond_5
    const/4 v6, 0x0

    .line 205
    const/4 v5, 0x0

    .line 206
    :goto_1
    if-ge v5, v2, :cond_f

    aget-byte v4, v10, v5

    if-eqz v4, :cond_f

    if-ge v6, v9, :cond_f

    .line 207
    const/4 v4, 0x1

    .line 209
    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v8, v9, :cond_10

    .line 210
    aget-object v7, p2, v8

    .line 211
    invoke-static {v10, v5, v7}, Lcom/facebook/common/procread/NewProcReader;->bufferEquals([BILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 212
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v7, v5, v4

    .line 213
    :goto_3
    if-ge v7, v11, :cond_7

    aget-byte v4, v10, v7

    if-eqz v4, :cond_6

    aget-byte v4, v10, v7

    const/16 v5, 0x20

    if-eq v4, v5, :cond_6

    aget-byte v4, v10, v7

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    .line 215
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v4, v7

    .line 219
    :goto_4
    if-ge v4, v11, :cond_8

    aget-byte v5, v10, v4

    const/16 v12, 0x30

    if-lt v5, v12, :cond_8

    aget-byte v5, v10, v4

    const/16 v12, 0x39

    if-gt v5, v12, :cond_8

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 223
    :cond_8
    if-ge v4, v11, :cond_9

    aget-byte v5, v10, v4

    const/16 v12, 0xa

    if-eq v5, v12, :cond_b

    :cond_9
    const/4 v5, 0x1

    .line 224
    :goto_5
    if-ge v4, v11, :cond_a

    aget-byte v12, v10, v4

    if-eqz v12, :cond_a

    .line 225
    const/4 v12, 0x0

    aput-byte v12, v10, v4

    .line 226
    add-int/lit8 v4, v4, 0x1

    .line 229
    :cond_a
    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-static {v10, v7, v12, v13}, Lcom/facebook/common/procread/ByteParse;->strtoll([BIILcom/facebook/common/procread/StrtollResult;)J

    move-result-wide v12

    aput-wide v12, p3, v8

    .line 231
    add-int/lit8 v6, v6, 0x1

    .line 235
    :goto_6
    if-eqz v5, :cond_e

    .line 236
    :goto_7
    if-ge v4, v2, :cond_d

    aget-byte v5, v10, v4

    if-eqz v5, :cond_d

    aget-byte v5, v10, v4

    const/16 v7, 0xa

    if-eq v5, v7, :cond_d

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 223
    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    .line 209
    :cond_c
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2

    .line 239
    :cond_d
    if-ge v4, v11, :cond_e

    aget-byte v5, v10, v4

    const/16 v7, 0xa

    if-ne v5, v7, :cond_e

    .line 240
    add-int/lit8 v4, v4, 0x1

    :cond_e
    move v5, v4

    .line 243
    goto/16 :goto_1

    .line 245
    :cond_f
    return v3

    :cond_10
    move v14, v4

    move v4, v5

    move v5, v14

    goto :goto_6
.end method
