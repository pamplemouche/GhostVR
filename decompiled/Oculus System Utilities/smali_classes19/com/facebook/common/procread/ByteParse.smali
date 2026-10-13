.class public final Lcom/facebook/common/procread/ByteParse;
.super Ljava/lang/Object;
.source "ByteParse.java"


# static fields
.field private static final NULL_PTR_IDX:I = -0x1

.field private static final SPACES:[C

.field private static final TAG:Ljava/lang/String; = "ByteParse"

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
    .param p0, "c"    # C

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
    .param p0, "c"    # C

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
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/facebook/common/procread/ByteParse;->SPACES:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 333
    sget-object v1, Lcom/facebook/common/procread/ByteParse;->SPACES:[C

    aget-char v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 334
    const/4 v1, 0x1

    .line 338
    :goto_1
    return v1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isUpperCase(C)Z
    .locals 1
    .param p0, "c"    # C

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
    .locals 26
    .param p0, "string"    # [B
    .param p1, "start"    # I
    .param p2, "outRes"    # Lcom/facebook/common/procread/StrofResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    .line 42
    .local v21, "stringLen":I
    move/from16 v20, p1

    .line 43
    .local v20, "startIdx":I
    const/4 v7, -0x1

    .line 45
    .local v7, "endIdx":I
    const/4 v9, 0x0

    .line 50
    .local v9, "expSign":Z
    const/4 v8, 0x0

    .line 51
    .local v8, "exp":I
    const/4 v12, 0x0

    .line 70
    .local v12, "fracExp":I
    move/from16 v17, v20

    .line 71
    .local v17, "pPtr":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-byte v22, p0, v17

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/facebook/common/procread/ByteParse;->isSpace(C)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 72
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 74
    :cond_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-byte v22, p0, v17

    const/16 v23, 0x2d

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 75
    const/16 v19, 0x1

    .line 76
    .local v19, "sign":Z
    add-int/lit8 v17, v17, 0x1

    .line 89
    :goto_1
    const/4 v6, -0x1

    .line 90
    .local v6, "decPt":I
    const/4 v13, 0x0

    .local v13, "mantSize":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 91
    aget-byte v2, p0, v17

    .line 92
    .local v2, "c":B
    int-to-char v0, v2

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/facebook/common/procread/ByteParse;->isDigit(C)Z

    move-result v22

    if-nez v22, :cond_8

    .line 93
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v2, v0, :cond_1

    if-ltz v6, :cond_7

    .line 108
    .end local v2    # "c":B
    :cond_1
    move/from16 v16, v17

    .line 109
    .local v16, "pExpPtr":I
    sub-int v17, v17, v13

    .line 110
    if-gez v6, :cond_9

    .line 111
    move v6, v13

    .line 115
    :goto_3
    const/16 v22, 0x12

    move/from16 v0, v22

    if-le v13, v0, :cond_a

    .line 116
    add-int/lit8 v12, v6, -0x12

    .line 117
    const/16 v13, 0x12

    .line 121
    :goto_4
    if-nez v13, :cond_b

    .line 122
    const-wide/16 v14, 0x0

    .line 123
    .local v14, "fraction":D
    move/from16 v17, p1

    .line 210
    :goto_5
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_2

    .line 211
    move/from16 v7, v17

    .line 214
    :cond_2
    if-eqz v19, :cond_3

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    mul-double v14, v14, v22

    .end local v14    # "fraction":D
    :cond_3
    double-to-float v0, v14

    move/from16 v18, v0

    .line 215
    .local v18, "result":F
    if-eqz p2, :cond_4

    .line 216
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/facebook/common/procread/StrofResult;->result:F

    .line 217
    move-object/from16 v0, p2

    iput v7, v0, Lcom/facebook/common/procread/StrofResult;->end:I

    .line 220
    :cond_4
    return v18

    .line 78
    .end local v6    # "decPt":I
    .end local v13    # "mantSize":I
    .end local v16    # "pExpPtr":I
    .end local v18    # "result":F
    .end local v19    # "sign":Z
    :cond_5
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-byte v22, p0, v17

    const/16 v23, 0x2b

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 79
    add-int/lit8 v17, v17, 0x1

    .line 81
    :cond_6
    const/16 v19, 0x0

    .restart local v19    # "sign":Z
    goto :goto_1

    .line 96
    .restart local v2    # "c":B
    .restart local v6    # "decPt":I
    .restart local v13    # "mantSize":I
    :cond_7
    move v6, v13

    .line 98
    :cond_8
    add-int/lit8 v17, v17, 0x1

    .line 90
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 113
    .end local v2    # "c":B
    .restart local v16    # "pExpPtr":I
    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 119
    :cond_a
    sub-int v12, v6, v13

    goto :goto_4

    .line 127
    :cond_b
    const/4 v10, 0x0

    .line 128
    .local v10, "frac1":I
    :goto_6
    const/16 v22, 0x9

    move/from16 v0, v22

    if-le v13, v0, :cond_d

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 129
    aget-byte v2, p0, v17

    .line 130
    .restart local v2    # "c":B
    add-int/lit8 v17, v17, 0x1

    .line 131
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v2, v0, :cond_c

    .line 132
    aget-byte v2, p0, v17

    .line 133
    add-int/lit8 v17, v17, 0x1

    .line 135
    :cond_c
    mul-int/lit8 v22, v10, 0xa

    add-int/lit8 v23, v2, -0x30

    add-int v10, v22, v23

    .line 128
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 137
    .end local v2    # "c":B
    :cond_d
    const/4 v11, 0x0

    .line 138
    .local v11, "frac2":I
    :goto_7
    if-lez v13, :cond_f

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 139
    aget-byte v2, p0, v17

    .line 140
    .restart local v2    # "c":B
    add-int/lit8 v17, v17, 0x1

    .line 141
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v2, v0, :cond_e

    .line 142
    aget-byte v2, p0, v17

    .line 143
    add-int/lit8 v17, v17, 0x1

    .line 145
    :cond_e
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v2, -0x30

    add-int v11, v22, v23

    .line 138
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 147
    .end local v2    # "c":B
    :cond_f
    const-wide v22, 0x41cdcd6500000000L    # 1.0E9

    int-to-double v0, v10

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    int-to-double v0, v11

    move-wide/from16 v24, v0

    add-double v14, v22, v24

    .line 154
    .restart local v14    # "fraction":D
    move/from16 v17, v16

    .line 155
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    aget-byte v22, p0, v17

    const/16 v23, 0x45

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    aget-byte v22, p0, v17

    const/16 v23, 0x65

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 156
    :cond_10
    add-int/lit8 v17, v17, 0x1

    .line 157
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    aget-byte v22, p0, v17

    const/16 v23, 0x2d

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 158
    const/4 v9, 0x1

    .line 159
    add-int/lit8 v17, v17, 0x1

    .line 166
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    aget-byte v22, p0, v17

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/facebook/common/procread/ByteParse;->isDigit(C)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 167
    mul-int/lit8 v22, v8, 0xa

    aget-byte v23, p0, v17

    add-int/lit8 v23, v23, -0x30

    add-int v8, v22, v23

    .line 168
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 161
    :cond_11
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    aget-byte v22, p0, v17

    const/16 v23, 0x2b

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 162
    add-int/lit8 v17, v17, 0x1

    .line 164
    :cond_12
    const/4 v9, 0x0

    goto :goto_8

    .line 172
    :cond_13
    if-eqz v9, :cond_16

    .line 173
    sub-int v8, v12, v8

    .line 185
    :goto_9
    if-gez v8, :cond_17

    .line 186
    const/4 v9, 0x1

    .line 187
    neg-int v8, v8

    .line 191
    :goto_a
    sget v22, Lcom/facebook/common/procread/ByteParse;->maxExponent:I

    move/from16 v0, v22

    if-le v8, v0, :cond_14

    .line 192
    sget v8, Lcom/facebook/common/procread/ByteParse;->maxExponent:I

    .line 194
    const-string v22, "ByteParse"

    const-string v23, "strtof: Out of range"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_14
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 197
    .local v4, "dblExp":D
    const/4 v3, 0x0

    .local v3, "dPtr":I
    :goto_b
    if-eqz v8, :cond_18

    .line 198
    and-int/lit8 v22, v8, 0x1

    if-eqz v22, :cond_15

    .line 199
    sget-object v22, Lcom/facebook/common/procread/ByteParse;->powersOf10:[D

    aget-wide v22, v22, v3

    mul-double v4, v4, v22

    .line 197
    :cond_15
    shr-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 175
    .end local v3    # "dPtr":I
    .end local v4    # "dblExp":D
    :cond_16
    add-int/2addr v8, v12

    goto :goto_9

    .line 189
    :cond_17
    const/4 v9, 0x0

    goto :goto_a

    .line 202
    .restart local v3    # "dPtr":I
    .restart local v4    # "dblExp":D
    :cond_18
    if-eqz v9, :cond_19

    .line 203
    div-double/2addr v14, v4

    goto/16 :goto_5

    .line 205
    :cond_19
    mul-double/2addr v14, v4

    goto/16 :goto_5
.end method

.method public static strtoll([BIILcom/facebook/common/procread/StrtollResult;)J
    .locals 16
    .param p0, "string"    # [B
    .param p1, "start"    # I
    .param p2, "givenBase"    # I
    .param p3, "outRes"    # Lcom/facebook/common/procread/StrtollResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    move-object/from16 v0, p0

    array-length v13, v0

    .line 233
    .local v13, "strLen":I
    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    .line 234
    const-wide/16 v2, 0x0

    .line 327
    :cond_0
    :goto_0
    return-wide v2

    .line 237
    :cond_1
    move/from16 v12, p1

    .line 238
    .local v12, "sIdx":I
    const/4 v10, -0x1

    .line 239
    .local v10, "endIdx":I
    move/from16 v5, p2

    .line 243
    .local v5, "base":I
    const/4 v11, 0x0

    .line 252
    .local v11, "neg":Z
    :cond_2
    aget-byte v6, p0, v12

    .line 253
    .local v6, "c":B
    add-int/lit8 v12, v12, 0x1

    .line 254
    if-ge v12, v13, :cond_3

    int-to-char v14, v6

    invoke-static {v14}, Lcom/facebook/common/procread/ByteParse;->isSpace(C)Z

    move-result v14

    if-nez v14, :cond_2

    .line 255
    :cond_3
    const/16 v14, 0x2d

    if-ne v6, v14, :cond_8

    .line 256
    const/4 v11, 0x1

    .line 257
    aget-byte v6, p0, v12

    .line 258
    add-int/lit8 v12, v12, 0x1

    .line 263
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    const/16 v14, 0x10

    if-ne v5, v14, :cond_7

    :cond_5
    const/16 v14, 0x30

    if-ne v6, v14, :cond_7

    if-ge v12, v13, :cond_7

    aget-byte v14, p0, v12

    const/16 v15, 0x78

    if-eq v14, v15, :cond_6

    aget-byte v14, p0, v12

    const/16 v15, 0x58

    if-ne v14, v15, :cond_7

    .line 267
    :cond_6
    const/4 v14, 0x1

    aget-byte v6, p0, v14

    .line 268
    add-int/lit8 v12, v12, 0x2

    .line 269
    const/16 v5, 0x10

    .line 272
    :cond_7
    if-lt v12, v13, :cond_9

    .line 273
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 259
    :cond_8
    const/16 v14, 0x2b

    if-ne v6, v14, :cond_4

    .line 260
    aget-byte v6, p0, v12

    .line 261
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 276
    :cond_9
    if-nez v5, :cond_a

    const/16 v14, 0x30

    if-ne v6, v14, :cond_e

    const/16 v5, 0x8

    .line 296
    :cond_a
    :goto_2
    if-eqz v11, :cond_f

    const-wide v8, 0x7fffffffffffffffL

    .line 297
    .local v8, "cutoff":J
    :goto_3
    int-to-long v14, v5

    rem-long v14, v8, v14

    long-to-int v7, v14

    .line 298
    .local v7, "cutlim":I
    int-to-long v14, v5

    div-long/2addr v8, v14

    .line 299
    const-wide/16 v2, 0x0

    .local v2, "acc":J
    const/4 v4, 0x0

    .line 300
    .local v4, "any":I
    :goto_4
    if-gt v12, v13, :cond_b

    .line 302
    int-to-char v14, v6

    invoke-static {v14}, Lcom/facebook/common/procread/ByteParse;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_10

    add-int/lit8 v14, v6, -0x30

    int-to-byte v6, v14

    .line 305
    :goto_5
    if-lt v6, v5, :cond_12

    .line 314
    :cond_b
    if-gez v4, :cond_17

    .line 315
    if-eqz v11, :cond_16

    const-wide/high16 v2, -0x8000000000000000L

    .line 317
    :goto_6
    const-string v14, "ByteParse"

    const-string v15, "strtoll: Out of range"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_c
    :goto_7
    const/4 v14, -0x1

    if-ne v10, v14, :cond_d

    .line 320
    if-eqz v4, :cond_18

    add-int/lit8 v10, v12, -0x1

    .line 323
    :cond_d
    :goto_8
    if-eqz p3, :cond_0

    .line 324
    move-object/from16 v0, p3

    iput-wide v2, v0, Lcom/facebook/common/procread/StrtollResult;->result:J

    .line 325
    move-object/from16 v0, p3

    iput v10, v0, Lcom/facebook/common/procread/StrtollResult;->end:I

    goto/16 :goto_0

    .line 276
    .end local v2    # "acc":J
    .end local v4    # "any":I
    .end local v7    # "cutlim":I
    .end local v8    # "cutoff":J
    :cond_e
    const/16 v5, 0xa

    goto :goto_2

    .line 296
    :cond_f
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_3

    .line 303
    .restart local v2    # "acc":J
    .restart local v4    # "any":I
    .restart local v7    # "cutlim":I
    .restart local v8    # "cutoff":J
    :cond_10
    int-to-char v14, v6

    invoke-static {v14}, Lcom/facebook/common/procread/ByteParse;->isAlphabetic(C)Z

    move-result v14

    if-eqz v14, :cond_b

    int-to-char v14, v6

    invoke-static {v14}, Lcom/facebook/common/procread/ByteParse;->isUpperCase(C)Z

    move-result v14

    if-eqz v14, :cond_11

    const/16 v14, 0x37

    :goto_9
    sub-int v14, v6, v14

    int-to-byte v6, v14

    goto :goto_5

    :cond_11
    const/16 v14, 0x57

    goto :goto_9

    .line 306
    :cond_12
    if-ltz v4, :cond_13

    cmp-long v14, v2, v8

    if-gtz v14, :cond_13

    cmp-long v14, v2, v8

    if-nez v14, :cond_14

    if-le v6, v7, :cond_14

    .line 307
    :cond_13
    const/4 v4, -0x1

    .line 301
    :goto_a
    if-ge v12, v13, :cond_15

    aget-byte v6, p0, v12

    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 309
    :cond_14
    const/4 v4, 0x1

    .line 310
    int-to-long v14, v5

    mul-long/2addr v2, v14

    .line 311
    int-to-long v14, v6

    add-long/2addr v2, v14

    goto :goto_a

    .line 301
    :cond_15
    const/4 v6, 0x0

    goto :goto_b

    .line 315
    :cond_16
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_6

    .line 318
    :cond_17
    if-eqz v11, :cond_c

    neg-long v2, v2

    goto :goto_7

    :cond_18
    move/from16 v10, p1

    .line 320
    goto :goto_8
.end method
