.class final Lcom/facebook/common/procread/NewProcReader;
.super Ljava/lang/Object;
.source "NewProcReader.java"

# interfaces
.implements Lcom/facebook/common/procread/IProcReader;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final ERROR_LEN:I = -0x1

.field private static final FILE_NOT_EXIST_ERROR_LEN:I = -0x7fffffff

.field private static final READ_PROC_FILE_BUFFER_SIZE:I = 0x100

.field private static final READ_PROC_LINE_BUFFER_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "NewProcReader"


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
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "bufferOffset"    # I
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 321
    .local v3, "fLen":I
    move v0, p1

    .line 322
    .local v0, "bIdx":I
    const/4 v2, 0x0

    .line 323
    .local v2, "fIdx":I
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_2

    if-ge v2, v3, :cond_2

    .line 324
    aget-byte v1, p0, v0

    .line 325
    .local v1, "bufferByte":B
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 326
    .local v4, "fieldChar":C
    if-eq v1, v4, :cond_1

    .line 332
    .end local v1    # "bufferByte":B
    .end local v4    # "fieldChar":C
    :cond_0
    :goto_1
    return v5

    .line 323
    .restart local v1    # "bufferByte":B
    .restart local v4    # "fieldChar":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "bufferByte":B
    .end local v4    # "fieldChar":C
    :cond_2
    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

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
    .locals 2
    .param p0, "chars"    # [B
    .param p1, "start"    # I
    .param p2, "toFind"    # C
    .param p3, "defaultIdx"    # I

    .prologue
    .line 308
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 309
    aget-byte v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 314
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 308
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p3

    .line 314
    goto :goto_1
.end method

.method private readFile(Ljava/lang/String;[B)I
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "outBuffer"    # [B

    .prologue
    const/4 v2, -0x1

    const/16 v4, 0x9

    .line 251
    iget-object v3, p0, Lcom/facebook/common/procread/NewProcReader;->mFilesCannotAccess:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    const/4 v1, 0x0

    .line 256
    .local v1, "threadPolicy":Ljava/lang/Object;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_2

    .line 259
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 263
    .end local v1    # "threadPolicy":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/common/procread/NewProcReader;->readFileSystemOs(Ljava/lang/String;[B)I

    move-result v0

    .line 265
    .local v0, "len":I
    const v3, -0x7fffffff

    if-ne v0, v3, :cond_4

    .line 266
    iget-object v3, p0, Lcom/facebook/common/procread/NewProcReader;->mFilesCannotAccess:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    if-eqz v1, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_3

    .line 273
    check-cast v1, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_3
    move v0, v2

    goto :goto_0

    .line 272
    :cond_4
    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_0

    .line 273
    check-cast v1, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 272
    .end local v0    # "len":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_5

    .line 273
    check-cast v1, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_5
    throw v2
.end method

.method private static readFileSystemOs(Ljava/lang/String;[B)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "outBuffer"    # [B

    .prologue
    const v4, -0x7fffffff

    .line 279
    array-length v0, p1

    .line 281
    .local v0, "bufferSize":I
    const/4 v3, -0x1

    .line 284
    .local v3, "len":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0, v5, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    add-int/lit8 v6, v0, -0x1

    :try_start_1
    invoke-static {v2, p1, v5, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 297
    :try_start_2
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    move v4, v3

    .line 303
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :goto_1
    return v4

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/system/ErrnoException;
    const-string v5, "NewProcReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to raw open process file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 292
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_1
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "NewProcReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read process file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 298
    :catch_2
    move-exception v5

    goto :goto_1

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 297
    :try_start_5
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5

    .line 300
    :goto_3
    throw v4

    .line 292
    :catch_3
    move-exception v1

    goto :goto_2

    .line 298
    :catch_4
    move-exception v4

    goto :goto_0

    :catch_5
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
    .locals 24
    .param p1, "buffer"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "format"    # [I
    .param p5, "outStrings"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "outLongs"    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "outFloats"    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object/from16 v0, p1

    array-length v4, v0

    .line 73
    .local v4, "NB":I
    move-object/from16 v0, p4

    array-length v5, v0

    .line 74
    .local v5, "NF":I
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v8, v0

    .line 75
    .local v8, "NS":I
    :goto_0
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    array-length v6, v0

    .line 76
    .local v6, "NL":I
    :goto_1
    if-eqz p7, :cond_4

    move-object/from16 v0, p7

    array-length v7, v0

    .line 78
    .local v7, "NR":I
    :goto_2
    move/from16 v14, p2

    .line 79
    .local v14, "i":I
    const/4 v10, 0x0

    .line 81
    .local v10, "di":I
    const/16 v16, 0x1

    .line 83
    .local v16, "res":Z
    const/4 v13, 0x0

    .local v13, "fi":I
    :goto_3
    if-ge v13, v5, :cond_1

    .line 84
    aget v15, p4, v13

    .line 85
    .local v15, "mode":I
    and-int/lit16 v0, v15, 0x200

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 86
    add-int/lit8 v14, v14, 0x1

    .line 94
    :cond_0
    :goto_4
    and-int/lit16 v0, v15, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v20, v0

    .line 95
    .local v20, "term":C
    move/from16 v18, v14

    .line 96
    .local v18, "start":I
    move/from16 v0, p3

    if-lt v14, v0, :cond_7

    .line 97
    const-string v21, "NewProcReader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ran off end of data @"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/16 v16, 0x0

    .line 165
    .end local v15    # "mode":I
    .end local v18    # "start":I
    .end local v20    # "term":C
    :cond_1
    return v16

    .line 74
    .end local v6    # "NL":I
    .end local v7    # "NR":I
    .end local v8    # "NS":I
    .end local v10    # "di":I
    .end local v13    # "fi":I
    .end local v14    # "i":I
    .end local v16    # "res":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 75
    .restart local v8    # "NS":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 76
    .restart local v6    # "NL":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 87
    .restart local v7    # "NR":I
    .restart local v10    # "di":I
    .restart local v13    # "fi":I
    .restart local v14    # "i":I
    .restart local v15    # "mode":I
    .restart local v16    # "res":Z
    :cond_5
    and-int/lit16 v0, v15, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 88
    aget-byte v21, p1, v14

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 89
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 91
    :cond_6
    and-int/lit16 v15, v15, -0x401

    goto :goto_4

    .line 102
    .restart local v18    # "start":I
    .restart local v20    # "term":C
    :cond_7
    const/4 v11, -0x1

    .line 103
    .local v11, "end":I
    and-int/lit16 v0, v15, 0x200

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 104
    :goto_5
    move/from16 v0, p3

    if-ge v14, v0, :cond_8

    aget-byte v21, p1, v14

    const/16 v22, 0x29

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 105
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 107
    :cond_8
    move v11, v14

    .line 108
    add-int/lit8 v14, v14, 0x1

    .line 116
    :cond_9
    :goto_6
    move/from16 v0, p3

    if-ge v14, v0, :cond_c

    aget-byte v21, p1, v14

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 117
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 109
    :cond_a
    and-int/lit16 v0, v15, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 110
    :goto_7
    aget-byte v21, p1, v14

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    move/from16 v0, p3

    if-ge v14, v0, :cond_b

    .line 111
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 113
    :cond_b
    move v11, v14

    .line 114
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 119
    :cond_c
    if-gez v11, :cond_d

    .line 120
    move v11, v14

    .line 123
    :cond_d
    move/from16 v0, p3

    if-ge v14, v0, :cond_e

    .line 124
    add-int/lit8 v14, v14, 0x1

    .line 125
    and-int/lit16 v0, v15, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 126
    :goto_8
    move/from16 v0, p3

    if-ge v14, v0, :cond_e

    aget-byte v21, p1, v14

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 127
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 132
    :cond_e
    and-int/lit16 v0, v15, 0x7000

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 134
    if-ge v11, v4, :cond_14

    const/16 v17, 0x1

    .line 136
    .local v17, "setEnd":Z
    :goto_9
    if-eqz v17, :cond_15

    .line 137
    aget-byte v9, p1, v11

    .line 138
    .local v9, "c":B
    const/16 v21, 0x0

    aput-byte v21, p1, v11

    .line 142
    :goto_a
    and-int/lit16 v0, v15, 0x4000

    move/from16 v21, v0

    if-eqz v21, :cond_f

    if-ge v10, v7, :cond_f

    if-eqz p7, :cond_f

    .line 143
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/facebook/common/procread/ByteParse;->strtof([BILcom/facebook/common/procread/StrofResult;)F

    move-result v21

    aput v21, p7, v10

    .line 145
    :cond_f
    and-int/lit16 v0, v15, 0x2000

    move/from16 v21, v0

    if-eqz v21, :cond_10

    if-ge v10, v6, :cond_10

    if-eqz p6, :cond_10

    .line 146
    and-int/lit16 v0, v15, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 148
    aget-byte v21, p1, v18

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, p6, v10

    .line 153
    :cond_10
    :goto_b
    and-int/lit16 v0, v15, 0x1000

    move/from16 v21, v0

    if-eqz v21, :cond_11

    if-ge v10, v8, :cond_11

    if-eqz p5, :cond_11

    .line 154
    const/16 v21, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/procread/NewProcReader;->findChar([BICI)I

    move-result v12

    .line 155
    .local v12, "endOfStr":I
    new-instance v19, Ljava/lang/String;

    sub-int v21, v12, v18

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 156
    .local v19, "str":Ljava/lang/String;
    aput-object v19, p5, v10

    .line 158
    .end local v12    # "endOfStr":I
    .end local v19    # "str":Ljava/lang/String;
    :cond_11
    if-eqz v17, :cond_12

    .line 159
    aput-byte v9, p1, v11

    .line 161
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 83
    .end local v9    # "c":B
    .end local v17    # "setEnd":Z
    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 134
    :cond_14
    const/16 v17, 0x0

    goto :goto_9

    .line 140
    .restart local v17    # "setEnd":Z
    :cond_15
    const/4 v9, 0x0

    .restart local v9    # "c":B
    goto :goto_a

    .line 150
    :cond_16
    const/16 v21, 0xa

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/procread/ByteParse;->strtoll([BIILcom/facebook/common/procread/StrtollResult;)J

    move-result-wide v22

    aput-wide v22, p6, v10

    goto :goto_b
.end method

.method public readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "format"    # [I
    .param p3, "outStrings"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "outLongs"    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "outFloats"    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 52
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 53
    .local v1, "buffer":[B
    invoke-direct {p0, p1, v1}, Lcom/facebook/common/procread/NewProcReader;->readFile(Ljava/lang/String;[B)I

    move-result v3

    .line 55
    .local v3, "len":I
    if-gez v3, :cond_0

    .line 56
    const-string v0, "NewProcReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open and read process file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 17
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "reqFields"    # [Ljava/lang/String;
    .param p3, "outFields"    # [J

    .prologue
    .line 172
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 173
    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "Cannot pass null values"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 176
    :cond_1
    move-object/from16 v0, p2

    array-length v5, v0

    .line 177
    .local v5, "count":I
    move-object/from16 v0, p3

    array-length v14, v0

    if-le v5, v14, :cond_2

    .line 178
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Array lengths differ"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 181
    :cond_2
    move-object/from16 v7, p2

    .line 183
    .local v7, "fields":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v5, :cond_3

    .line 184
    const-wide/16 v14, 0x0

    aput-wide v14, p3, v9

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 187
    :cond_3
    const/4 v12, 0x1

    .line 189
    .local v12, "res":Z
    const/16 v14, 0x800

    new-array v4, v14, [B

    .line 191
    .local v4, "buffer":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/facebook/common/procread/NewProcReader;->readFile(Ljava/lang/String;[B)I

    move-result v10

    .line 192
    .local v10, "len":I
    if-gez v10, :cond_4

    .line 193
    const-string v14, "NewProcReader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to read "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v10, 0x0

    .line 195
    const/4 v12, 0x0

    .line 198
    :cond_4
    array-length v3, v4

    .line 199
    .local v3, "bufMaxLen":I
    if-ge v10, v3, :cond_5

    .line 200
    const/4 v14, 0x0

    aput-byte v14, v4, v10

    .line 203
    :cond_5
    const/4 v8, 0x0

    .line 205
    .local v8, "foundCount":I
    const/4 v2, 0x0

    .line 206
    .local v2, "bIdx":I
    :cond_6
    :goto_1
    if-ge v2, v10, :cond_10

    aget-byte v14, v4, v2

    if-eqz v14, :cond_10

    if-ge v8, v5, :cond_10

    .line 207
    const/4 v13, 0x1

    .line 209
    .local v13, "skipToEol":Z
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_c

    .line 210
    aget-object v6, v7, v9

    .line 211
    .local v6, "field":Ljava/lang/String;
    invoke-static {v4, v2, v6}, Lcom/facebook/common/procread/NewProcReader;->bufferEquals([BILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 212
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v2, v14

    .line 213
    :goto_3
    if-ge v2, v3, :cond_8

    aget-byte v14, v4, v2

    if-eqz v14, :cond_7

    aget-byte v14, v4, v2

    const/16 v15, 0x20

    if-eq v14, v15, :cond_7

    aget-byte v14, v4, v2

    const/16 v15, 0x9

    if-ne v14, v15, :cond_8

    .line 215
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 218
    :cond_8
    move v11, v2

    .line 219
    .local v11, "numIdx":I
    :goto_4
    if-ge v2, v3, :cond_9

    aget-byte v14, v4, v2

    const/16 v15, 0x30

    if-lt v14, v15, :cond_9

    aget-byte v14, v4, v2

    const/16 v15, 0x39

    if-gt v14, v15, :cond_9

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 223
    :cond_9
    if-ge v2, v3, :cond_a

    aget-byte v14, v4, v2

    const/16 v15, 0xa

    if-eq v14, v15, :cond_d

    :cond_a
    const/4 v13, 0x1

    .line 224
    :goto_5
    if-ge v2, v3, :cond_b

    aget-byte v14, v4, v2

    if-eqz v14, :cond_b

    .line 225
    const/4 v14, 0x0

    aput-byte v14, v4, v2

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 229
    :cond_b
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-static {v4, v11, v14, v15}, Lcom/facebook/common/procread/ByteParse;->strtoll([BIILcom/facebook/common/procread/StrtollResult;)J

    move-result-wide v14

    aput-wide v14, p3, v9

    .line 231
    add-int/lit8 v8, v8, 0x1

    .line 235
    .end local v6    # "field":Ljava/lang/String;
    .end local v11    # "numIdx":I
    :cond_c
    if-eqz v13, :cond_6

    .line 236
    :goto_6
    if-ge v2, v10, :cond_f

    aget-byte v14, v4, v2

    if-eqz v14, :cond_f

    aget-byte v14, v4, v2

    const/16 v15, 0xa

    if-eq v14, v15, :cond_f

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 223
    .restart local v6    # "field":Ljava/lang/String;
    .restart local v11    # "numIdx":I
    :cond_d
    const/4 v13, 0x0

    goto :goto_5

    .line 209
    .end local v11    # "numIdx":I
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 239
    .end local v6    # "field":Ljava/lang/String;
    :cond_f
    if-ge v2, v3, :cond_6

    aget-byte v14, v4, v2

    const/16 v15, 0xa

    if-ne v14, v15, :cond_6

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    .end local v13    # "skipToEol":Z
    :cond_10
    return v12
.end method
