.class public final Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


# static fields
.field private static BILLION:I

.field static final FULL_TRIPLETS:[C

.field static final FULL_TRIPLETS_B:[B

.field static final LEADING_TRIPLETS:[C

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static TEN_BILLION_L:J

.field private static THOUSAND_L:J

.field static final sSmallIntStrs:[Ljava/lang/String;

.field static final sSmallIntStrs2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/16 v13, 0xfa0

    const/16 v12, 0xa

    const/4 v1, 0x0

    .line 7
    const v0, 0xf4240

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    .line 8
    const v0, 0x3b9aca00

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    .line 9
    const-wide v2, 0x2540be400L

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TEN_BILLION_L:J

    .line 10
    const-wide/16 v2, 0x3e8

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    .line 12
    const-wide/32 v2, -0x80000000

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 13
    const-wide/32 v2, 0x7fffffff

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 15
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 17
    new-array v0, v13, [C

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEADING_TRIPLETS:[C

    .line 18
    new-array v0, v13, [C

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS:[C

    move v8, v1

    move v5, v1

    .line 24
    :goto_0
    if-ge v8, v12, :cond_4

    .line 25
    add-int/lit8 v0, v8, 0x30

    int-to-char v2, v0

    .line 26
    if-nez v8, :cond_0

    move v0, v1

    :goto_1
    move v7, v1

    .line 27
    :goto_2
    if-ge v7, v12, :cond_3

    .line 28
    add-int/lit8 v3, v7, 0x30

    int-to-char v4, v3

    .line 29
    if-nez v8, :cond_1

    if-nez v7, :cond_1

    move v3, v1

    :goto_3
    move v6, v5

    move v5, v1

    .line 30
    :goto_4
    if-ge v5, v12, :cond_2

    .line 32
    add-int/lit8 v9, v5, 0x30

    int-to-char v9, v9

    .line 33
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEADING_TRIPLETS:[C

    aput-char v0, v10, v6

    .line 34
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEADING_TRIPLETS:[C

    add-int/lit8 v11, v6, 0x1

    aput-char v3, v10, v11

    .line 35
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEADING_TRIPLETS:[C

    add-int/lit8 v11, v6, 0x2

    aput-char v9, v10, v11

    .line 36
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS:[C

    aput-char v2, v10, v6

    .line 37
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS:[C

    add-int/lit8 v11, v6, 0x1

    aput-char v4, v10, v11

    .line 38
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS:[C

    add-int/lit8 v11, v6, 0x2

    aput-char v9, v10, v11

    .line 39
    add-int/lit8 v6, v6, 0x4

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_0
    move v0, v2

    .line 26
    goto :goto_1

    :cond_1
    move v3, v4

    .line 29
    goto :goto_3

    .line 27
    :cond_2
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v5, v6

    goto :goto_2

    .line 24
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 45
    :cond_4
    new-array v0, v13, [B

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    move v0, v1

    .line 47
    :goto_5
    if-ge v0, v13, :cond_5

    .line 48
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 52
    :cond_5
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v1

    const-string v2, "1"

    aput-object v2, v0, v14

    const-string v2, "2"

    aput-object v2, v0, v15

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v0, v2

    const-string v2, "10"

    aput-object v2, v0, v12

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 55
    new-array v0, v12, [Ljava/lang/String;

    const-string v2, "-1"

    aput-object v2, v0, v1

    const-string v1, "-2"

    aput-object v1, v0, v14

    const-string v1, "-3"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string v2, "-4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    .line 297
    if-ltz p0, :cond_0

    .line 298
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 305
    :goto_0
    return-object v0

    .line 300
    :cond_0
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 301
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 302
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 312
    long-to-int v0, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
