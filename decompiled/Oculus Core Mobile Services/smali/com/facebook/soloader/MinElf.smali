.class public final Lcom/facebook/soloader/MinElf;
.super Ljava/lang/Object;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/MinElf$ElfError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract_DT_NEEDED(Ljava/io/File;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method public static extract_DT_NEEDED(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 72
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    const-wide/32 v4, 0x464c457f

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "file is not ELF"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    const-wide/16 v2, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    .line 78
    :goto_0
    const-wide/16 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 79
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    :cond_1
    if-eqz v2, :cond_5

    const-wide/16 v4, 0x1c

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    .line 90
    :goto_1
    if-eqz v2, :cond_6

    const-wide/16 v4, 0x2c

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    int-to-long v4, v3

    .line 94
    :goto_2
    if-eqz v2, :cond_7

    const-wide/16 v6, 0x2a

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    move/from16 v19, v3

    .line 98
    :goto_3
    const-wide/32 v6, 0xffff

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 100
    if-eqz v2, :cond_8

    const-wide/16 v4, 0x20

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 104
    :goto_4
    if-eqz v2, :cond_9

    const-wide/16 v6, 0x1c

    add-long/2addr v4, v6

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 111
    :cond_2
    :goto_5
    const-wide/16 v8, 0x0

    .line 114
    const-wide/16 v6, 0x0

    move-wide v12, v6

    move-wide v14, v10

    :goto_6
    cmp-long v3, v12, v4

    if-gez v3, :cond_3

    .line 115
    if-eqz v2, :cond_a

    const-wide/16 v6, 0x0

    add-long/2addr v6, v14

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    .line 119
    :goto_7
    const-wide/16 v16, 0x2

    cmp-long v3, v6, v16

    if-nez v3, :cond_c

    .line 120
    if-eqz v2, :cond_b

    const-wide/16 v6, 0x4

    add-long/2addr v6, v14

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    :goto_8
    move-wide v8, v6

    .line 131
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-nez v3, :cond_d

    .line 132
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "ELF file does not contain dynamic linking information"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 87
    :cond_5
    const-wide/16 v4, 0x20

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto/16 :goto_1

    .line 91
    :cond_6
    const-wide/16 v4, 0x38

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    int-to-long v4, v3

    goto/16 :goto_2

    .line 95
    :cond_7
    const-wide/16 v6, 0x36

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    move/from16 v19, v3

    goto/16 :goto_3

    .line 101
    :cond_8
    const-wide/16 v4, 0x28

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_4

    .line 105
    :cond_9
    const-wide/16 v6, 0x2c

    add-long/2addr v4, v6

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_5

    .line 116
    :cond_a
    const-wide/16 v6, 0x0

    add-long/2addr v6, v14

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    goto :goto_7

    .line 121
    :cond_b
    const-wide/16 v6, 0x8

    add-long/2addr v6, v14

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    goto :goto_8

    .line 128
    :cond_c
    move/from16 v0, v19

    int-to-long v6, v0

    add-long/2addr v14, v6

    .line 114
    const-wide/16 v6, 0x1

    add-long/2addr v6, v12

    move-wide v12, v6

    goto/16 :goto_6

    .line 140
    :cond_d
    const/4 v3, 0x0

    .line 142
    const-wide/16 v6, 0x0

    move-wide v14, v8

    .line 145
    :goto_9
    if-eqz v2, :cond_e

    const-wide/16 v12, 0x0

    add-long/2addr v12, v14

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    .line 149
    :goto_a
    const-wide/16 v16, 0x1

    cmp-long v16, v12, v16

    if-nez v16, :cond_10

    .line 150
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v3, v0, :cond_f

    .line 151
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "malformed DT_NEEDED section"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_e
    const-wide/16 v12, 0x0

    add-long/2addr v12, v14

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    goto :goto_a

    .line 154
    :cond_f
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v6

    move/from16 v18, v3

    .line 161
    :goto_b
    if-eqz v2, :cond_12

    const-wide/16 v6, 0x8

    :goto_c
    add-long/2addr v6, v14

    .line 162
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_22

    .line 164
    const-wide/16 v6, 0x0

    cmp-long v3, v16, v6

    if-nez v3, :cond_13

    .line 165
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "Dynamic section string-table not found"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_10
    const-wide/16 v16, 0x5

    cmp-long v16, v12, v16

    if-nez v16, :cond_23

    .line 156
    if-eqz v2, :cond_11

    const-wide/16 v6, 0x4

    add-long/2addr v6, v14

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    :goto_d
    move-wide/from16 v16, v6

    move/from16 v18, v3

    .line 158
    goto :goto_b

    .line 157
    :cond_11
    const-wide/16 v6, 0x8

    add-long/2addr v6, v14

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    goto :goto_d

    .line 161
    :cond_12
    const-wide/16 v6, 0x10

    goto :goto_c

    .line 170
    :cond_13
    const-wide/16 v6, 0x0

    .line 173
    const/4 v3, 0x0

    move-wide v14, v10

    :goto_e
    int-to-long v10, v3

    cmp-long v10, v10, v4

    if-gez v10, :cond_21

    .line 174
    if-eqz v2, :cond_14

    const-wide/16 v10, 0x0

    add-long/2addr v10, v14

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    .line 178
    :goto_f
    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_18

    .line 179
    if-eqz v2, :cond_15

    const-wide/16 v10, 0x8

    add-long/2addr v10, v14

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    move-wide v12, v10

    .line 183
    :goto_10
    if-eqz v2, :cond_16

    const-wide/16 v10, 0x14

    add-long/2addr v10, v14

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    .line 187
    :goto_11
    cmp-long v21, v12, v16

    if-gtz v21, :cond_18

    add-long/2addr v10, v12

    cmp-long v10, v16, v10

    if-gez v10, :cond_18

    .line 188
    if-eqz v2, :cond_17

    const-wide/16 v4, 0x4

    add-long/2addr v4, v14

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 192
    :goto_12
    sub-long v6, v16, v12

    add-long/2addr v4, v6

    move-wide v10, v4

    .line 200
    :goto_13
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-nez v3, :cond_19

    .line 201
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "did not find file offset of DT_STRTAB table"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_14
    const-wide/16 v10, 0x0

    add-long/2addr v10, v14

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto :goto_f

    .line 180
    :cond_15
    const-wide/16 v10, 0x10

    add-long/2addr v10, v14

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    move-wide v12, v10

    goto :goto_10

    .line 184
    :cond_16
    const-wide/16 v10, 0x28

    add-long/2addr v10, v14

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto :goto_11

    .line 189
    :cond_17
    const-wide/16 v4, 0x8

    add-long/2addr v4, v14

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_12

    .line 197
    :cond_18
    move/from16 v0, v19

    int-to-long v10, v0

    add-long/2addr v10, v14

    .line 173
    add-int/lit8 v3, v3, 0x1

    move-wide v14, v10

    goto/16 :goto_e

    .line 204
    :cond_19
    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    .line 206
    const/4 v3, 0x0

    .line 210
    :goto_14
    if-eqz v2, :cond_1a

    const-wide/16 v4, 0x0

    add-long/2addr v4, v8

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    move-wide v6, v4

    .line 214
    :goto_15
    const-wide/16 v4, 0x1

    cmp-long v4, v6, v4

    if-nez v4, :cond_1d

    .line 215
    if-eqz v2, :cond_1b

    const-wide/16 v4, 0x4

    add-long/2addr v4, v8

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 219
    :goto_16
    add-long/2addr v4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getSz(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 220
    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1c

    .line 221
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "malformed DT_NEEDED section"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_1a
    const-wide/16 v4, 0x0

    add-long/2addr v4, v8

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_15

    .line 216
    :cond_1b
    const-wide/16 v4, 0x8

    add-long/2addr v4, v8

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_16

    .line 224
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 227
    :cond_1d
    if-eqz v2, :cond_1e

    const-wide/16 v4, 0x8

    :goto_17
    add-long/2addr v4, v8

    .line 228
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_20

    .line 230
    array-length v2, v12

    if-eq v3, v2, :cond_1f

    .line 231
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "malformed DT_NEEDED section"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_1e
    const-wide/16 v4, 0x10

    goto :goto_17

    .line 234
    :cond_1f
    return-object v12

    :cond_20
    move-wide v8, v4

    goto :goto_14

    :cond_21
    move-wide v10, v6

    goto/16 :goto_13

    :cond_22
    move-wide v14, v6

    move/from16 v3, v18

    move-wide/from16 v6, v16

    goto/16 :goto_9

    :cond_23
    move-wide/from16 v16, v6

    move/from16 v18, v3

    goto/16 :goto_b
.end method

.method private static get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSz(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    :goto_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 255
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 262
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "ELF file truncated"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    int-to-long v0, v0

    add-long/2addr p3, v0

    .line 259
    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    return-void
.end method
