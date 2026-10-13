.class public final Lcom/facebook/common/procread/ByteParse;
.super Ljava/lang/Object;
.source "ByteParse.java"


# static fields
.field private static final SPACES:[C

.field private static maxExponent:I

.field private static powersOf10:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x1ff

    sput v0, Lcom/facebook/common/procread/ByteParse;->maxExponent:I

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/common/procread/ByteParse;->powersOf10:[D

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/common/procread/ByteParse;->SPACES:[C

    return-void

    .line 19
    :array_0
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x40c3880000000000L    # 10000.0
        0x4197d78400000000L    # 1.0E8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    .line 32
    :array_1
    .array-data 2
        0x20s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAlphabetic(C)Z
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1

    .prologue
    .line 346
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpace(C)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 332
    :goto_0
    sget-object v2, Lcom/facebook/common/procread/ByteParse;->SPACES:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 333
    sget-object v2, Lcom/facebook/common/procread/ByteParse;->SPACES:[C

    aget-char v2, v2, v0

    if-ne v2, p0, :cond_1

    .line 334
    const/4 v1, 0x1

    .line 338
    :cond_0
    return v1

    .line 332
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isUpperCase(C)Z
    .locals 1

    .prologue
    .line 350
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static strtof([BILcom/facebook/common/procread/StrofResult;)F
    .locals 19
    .param p2    # Lcom/facebook/common/procread/StrofResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    move-object/from16 v0, p0

    array-length v12, v0

    .line 43
    const/4 v2, -0x1

    .line 45
    const/4 v7, 0x0

    .line 50
    const/4 v5, 0x0

    move/from16 v2, p1

    .line 71
    :goto_0
    if-ge v2, v12, :cond_0

    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-static {v3}, Lcom/facebook/common/procread/ByteParse;->isSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    if-ge v2, v12, :cond_3

    aget-byte v3, p0, v2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 75
    const/4 v3, 0x1

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 89
    :goto_1
    const/4 v4, -0x1

    .line 90
    const/4 v6, 0x0

    move/from16 v18, v4

    move v4, v6

    move v6, v2

    move/from16 v2, v18

    :goto_2
    if-ge v6, v12, :cond_1

    .line 91
    aget-byte v8, p0, v6

    .line 92
    int-to-char v9, v8

    invoke-static {v9}, Lcom/facebook/common/procread/ByteParse;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_6

    .line 93
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_1

    if-ltz v2, :cond_5

    .line 109
    :cond_1
    sub-int v9, v6, v4

    .line 110
    if-gez v2, :cond_7

    move v8, v4

    .line 115
    :goto_3
    const/16 v2, 0x12

    if-le v8, v2, :cond_8

    .line 116
    add-int/lit8 v2, v4, -0x12

    .line 117
    const/16 v8, 0x12

    move v11, v2

    .line 121
    :goto_4
    if-nez v8, :cond_9

    .line 122
    const-wide/16 v4, 0x0

    move/from16 v2, p1

    :goto_5
    move v6, v2

    .line 214
    if-eqz v3, :cond_19

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    :goto_6
    double-to-float v2, v2

    .line 215
    if-eqz p2, :cond_2

    .line 216
    move-object/from16 v0, p2

    iput v2, v0, Lcom/facebook/common/procread/StrofResult;->result:F

    .line 217
    move-object/from16 v0, p2

    iput v6, v0, Lcom/facebook/common/procread/StrofResult;->end:I

    .line 220
    :cond_2
    return v2

    .line 78
    :cond_3
    if-ge v2, v12, :cond_4

    aget-byte v3, p0, v2

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_4

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move v2, v4

    .line 98
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 113
    :cond_7
    add-int/lit8 v8, v4, -0x1

    move v4, v2

    goto :goto_3

    .line 119
    :cond_8
    sub-int v2, v4, v8

    move v11, v2

    goto :goto_4

    .line 127
    :cond_9
    const/4 v2, 0x0

    move v10, v2

    move v4, v9

    .line 128
    :goto_7
    const/16 v2, 0x9

    if-le v8, v2, :cond_b

    if-ge v4, v12, :cond_b

    .line 129
    aget-byte v2, p0, v4

    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 131
    const/16 v9, 0x2e

    if-ne v2, v9, :cond_a

    .line 132
    aget-byte v2, p0, v4

    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 135
    :cond_a
    mul-int/lit8 v9, v10, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v9

    .line 128
    add-int/lit8 v8, v8, -0x1

    move v10, v2

    goto :goto_7

    .line 137
    :cond_b
    const/4 v2, 0x0

    move v9, v8

    move v8, v2

    .line 138
    :goto_8
    if-lez v9, :cond_d

    if-ge v4, v12, :cond_d

    .line 139
    aget-byte v2, p0, v4

    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 141
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_c

    .line 142
    aget-byte v2, p0, v4

    .line 143
    add-int/lit8 v4, v4, 0x1

    .line 145
    :cond_c
    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v8

    .line 138
    add-int/lit8 v8, v9, -0x1

    move v9, v8

    move v8, v2

    goto :goto_8

    .line 147
    :cond_d
    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v8, v8

    add-double/2addr v8, v14

    .line 155
    if-ge v6, v12, :cond_11

    aget-byte v2, p0, v6

    const/16 v4, 0x45

    if-eq v2, v4, :cond_e

    aget-byte v2, p0, v6

    const/16 v4, 0x65

    if-ne v2, v4, :cond_11

    .line 156
    :cond_e
    add-int/lit8 v2, v6, 0x1

    .line 157
    if-ge v2, v12, :cond_f

    aget-byte v4, p0, v2

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_f

    .line 158
    const/4 v4, 0x1

    .line 159
    add-int/lit8 p1, v2, 0x1

    move v2, v5

    .line 166
    :goto_9
    move/from16 v0, p1

    if-ge v0, v12, :cond_12

    aget-byte v5, p0, p1

    int-to-char v5, v5

    invoke-static {v5}, Lcom/facebook/common/procread/ByteParse;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 167
    mul-int/lit8 v2, v2, 0xa

    aget-byte v5, p0, p1

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v5, v2

    .line 168
    add-int/lit8 p1, p1, 0x1

    move v2, v5

    goto :goto_9

    .line 161
    :cond_f
    if-ge v2, v12, :cond_10

    aget-byte v4, p0, v2

    const/16 v6, 0x2b

    if-ne v4, v6, :cond_10

    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 164
    :cond_10
    const/4 v4, 0x0

    move/from16 p1, v2

    move v2, v5

    goto :goto_9

    :cond_11
    move v2, v5

    move/from16 p1, v6

    move v4, v7

    .line 172
    :cond_12
    if-eqz v4, :cond_15

    .line 173
    sub-int v2, v11, v2

    .line 185
    :goto_a
    if-gez v2, :cond_16

    .line 186
    const/4 v4, 0x1

    .line 187
    neg-int v2, v2

    .line 191
    :goto_b
    sget v5, Lcom/facebook/common/procread/ByteParse;->maxExponent:I

    if-le v2, v5, :cond_13

    .line 192
    sget v2, Lcom/facebook/common/procread/ByteParse;->maxExponent:I

    .line 194
    const-string v5, "ByteParse"

    const-string/jumbo v6, "strtof: Out of range"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_13
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 197
    const/4 v5, 0x0

    :goto_c
    if-eqz v2, :cond_17

    .line 198
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_14

    .line 199
    sget-object v10, Lcom/facebook/common/procread/ByteParse;->powersOf10:[D

    aget-wide v10, v10, v5

    mul-double/2addr v6, v10

    .line 197
    :cond_14
    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 175
    :cond_15
    add-int/2addr v2, v11

    goto :goto_a

    .line 189
    :cond_16
    const/4 v4, 0x0

    goto :goto_b

    .line 202
    :cond_17
    if-eqz v4, :cond_18

    .line 203
    div-double v4, v8, v6

    move/from16 v2, p1

    goto/16 :goto_5

    .line 205
    :cond_18
    mul-double v4, v8, v6

    move/from16 v2, p1

    goto/16 :goto_5

    :cond_19
    move-wide v2, v4

    .line 214
    goto/16 :goto_6
.end method

.method public static strtoll([BIILcom/facebook/common/procread/StrtollResult;)J
    .locals 19
    .param p3    # Lcom/facebook/common/procread/StrtollResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    move-object/from16 v0, p0

    array-length v10, v0

    .line 233
    move/from16 v0, p1

    if-lt v0, v10, :cond_1

    .line 234
    const-wide/16 v2, 0x0

    .line 327
    :cond_0
    :goto_0
    return-wide v2

    .line 238
    :cond_1
    const/4 v2, -0x1

    .line 243
    const/4 v3, 0x0

    move/from16 v2, p1

    .line 252
    :cond_2
    aget-byte v4, p0, v2

    .line 253
    add-int/lit8 v2, v2, 0x1

    .line 254
    if-ge v2, v10, :cond_3

    int-to-char v5, v4

    invoke-static {v5}, Lcom/facebook/common/procread/ByteParse;->isSpace(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 255
    :cond_3
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_6

    .line 256
    const/4 v3, 0x1

    .line 257
    aget-byte v4, p0, v2

    .line 258
    add-int/lit8 v5, v2, 0x1

    move v9, v3

    .line 263
    :goto_1
    if-eqz p2, :cond_4

    const/16 v2, 0x10

    move/from16 v0, p2

    if-ne v0, v2, :cond_16

    :cond_4
    const/16 v2, 0x30

    if-ne v4, v2, :cond_16

    if-ge v5, v10, :cond_16

    aget-byte v2, p0, v5

    const/16 v3, 0x78

    if-eq v2, v3, :cond_5

    aget-byte v2, p0, v5

    const/16 v3, 0x58

    if-ne v2, v3, :cond_16

    .line 267
    :cond_5
    const/4 v2, 0x1

    aget-byte v4, p0, v2

    .line 268
    add-int/lit8 v5, v5, 0x2

    .line 269
    const/16 p2, 0x10

    move/from16 v2, p2

    .line 272
    :goto_2
    if-lt v5, v10, :cond_7

    .line 273
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 259
    :cond_6
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_17

    .line 260
    aget-byte v4, p0, v2

    .line 261
    add-int/lit8 v5, v2, 0x1

    move v9, v3

    goto :goto_1

    .line 276
    :cond_7
    if-nez v2, :cond_15

    const/16 v2, 0x30

    if-ne v4, v2, :cond_a

    const/16 v2, 0x8

    :goto_3
    move v8, v2

    .line 296
    :goto_4
    if-eqz v9, :cond_b

    const-wide v2, 0x7fffffffffffffffL

    .line 297
    :goto_5
    int-to-long v6, v8

    rem-long v6, v2, v6

    long-to-int v11, v6

    .line 298
    int-to-long v6, v8

    div-long v12, v2, v6

    .line 299
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move/from16 v16, v3

    move v3, v4

    move-wide/from16 v17, v6

    move/from16 v6, v16

    move v7, v5

    move-wide/from16 v4, v17

    .line 300
    :goto_6
    if-gt v7, v10, :cond_8

    .line 302
    int-to-char v2, v3

    invoke-static {v2}, Lcom/facebook/common/procread/ByteParse;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v2, v3, -0x30

    int-to-byte v2, v2

    move v3, v2

    .line 305
    :goto_7
    if-lt v3, v8, :cond_e

    .line 314
    :cond_8
    if-gez v6, :cond_13

    .line 315
    if-eqz v9, :cond_12

    const-wide/high16 v2, -0x8000000000000000L

    .line 317
    :goto_8
    const-string v4, "ByteParse"

    const-string/jumbo v5, "strtoll: Out of range"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_9
    if-eqz v6, :cond_9

    add-int/lit8 p1, v7, -0x1

    .line 323
    :cond_9
    if-eqz p3, :cond_0

    .line 324
    move-object/from16 v0, p3

    iput-wide v2, v0, Lcom/facebook/common/procread/StrtollResult;->result:J

    .line 325
    move/from16 v0, p1

    move-object/from16 v1, p3

    iput v0, v1, Lcom/facebook/common/procread/StrtollResult;->end:I

    goto/16 :goto_0

    .line 276
    :cond_a
    const/16 v2, 0xa

    goto :goto_3

    .line 296
    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_5

    .line 303
    :cond_c
    int-to-char v2, v3

    invoke-static {v2}, Lcom/facebook/common/procread/ByteParse;->isAlphabetic(C)Z

    move-result v2

    if-eqz v2, :cond_8

    int-to-char v2, v3

    invoke-static {v2}, Lcom/facebook/common/procread/ByteParse;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x37

    :goto_a
    sub-int v2, v3, v2

    int-to-byte v2, v2

    move v3, v2

    goto :goto_7

    :cond_d
    const/16 v2, 0x57

    goto :goto_a

    .line 306
    :cond_e
    if-ltz v6, :cond_f

    cmp-long v2, v4, v12

    if-gtz v2, :cond_f

    cmp-long v2, v4, v12

    if-nez v2, :cond_10

    if-le v3, v11, :cond_10

    .line 307
    :cond_f
    const/4 v2, -0x1

    move v3, v2

    .line 301
    :goto_b
    if-ge v7, v10, :cond_11

    aget-byte v2, p0, v7

    :goto_c
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v3

    move v3, v2

    goto :goto_6

    .line 309
    :cond_10
    const/4 v2, 0x1

    .line 310
    int-to-long v14, v8

    mul-long/2addr v4, v14

    .line 311
    int-to-long v14, v3

    add-long/2addr v4, v14

    move v3, v2

    goto :goto_b

    .line 301
    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 315
    :cond_12
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_8

    .line 318
    :cond_13
    if-eqz v9, :cond_14

    neg-long v2, v4

    goto :goto_9

    :cond_14
    move-wide v2, v4

    goto :goto_9

    :cond_15
    move v8, v2

    goto/16 :goto_4

    :cond_16
    move/from16 v2, p2

    goto/16 :goto_2

    :cond_17
    move v9, v3

    move v5, v2

    goto/16 :goto_1
.end method
