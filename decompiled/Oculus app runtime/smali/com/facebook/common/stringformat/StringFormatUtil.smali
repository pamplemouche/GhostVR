.class public Lcom/facebook/common/stringformat/StringFormatUtil;
.super Ljava/lang/Object;
.source "StringFormatUtil.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static final APPENDED_TO_OUTPUT:I = -0x3

.field static final FALLBACK_TO_SYSTEM:I = -0x1

.field private static final INVALID_FORMAT_PERCENT:I = -0x65

.field private static final NEXT_SEG_RESULT_FINISHED:I = -0xc8

.field private static final NEXT_SEG_RESULT_FINISHED_PERCENT:I = -0xc9

.field static final NO_FORMATTING_REQUIRED:I = -0x2

.field private static final NULL_STRING:Ljava/lang/String; = "null"

.field private static final SINGLE_ITEM_NULL_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final VALID_FORMAT_PERCENT:I = -0x64


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/stringformat/StringFormatUtil;->SINGLE_ITEM_NULL_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs appendFormatStrLocaleSafe(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v6, p2

    .line 172
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const/4 p0, 0x0

    .line 175
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 180
    invoke-static {p0, p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private static appendIntTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    :goto_1
    const/4 v0, 0x4

    goto :goto_2

    :cond_1
    const-string p1, "null"

    .line 501
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 503
    :cond_2
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    const/16 v0, 0xb

    goto :goto_2

    .line 510
    :cond_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 512
    :cond_4
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    const/4 v0, 0x6

    goto :goto_2

    .line 519
    :cond_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 521
    :cond_6
    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    goto :goto_1

    .line 528
    :cond_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 530
    :cond_8
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_b

    if-eqz v1, :cond_9

    const/16 v0, 0x14

    goto :goto_2

    .line 537
    :cond_9
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, -0x3

    :goto_3
    return v0

    :cond_b
    if-eqz v1, :cond_c

    const/4 p0, -0x1

    return p0

    .line 544
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I
    .locals 10
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge p2, v0, :cond_c

    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_a

    .line 405
    invoke-static {p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->validateFormatPercent(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, -0x64

    const/4 v8, -0x1

    if-ne v5, v7, :cond_9

    add-int/lit8 v5, p2, 0x1

    .line 408
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez p4, :cond_1

    if-eq v7, v6, :cond_1

    return v8

    :cond_1
    const/16 v9, 0x73

    if-ne v7, v9, :cond_2

    .line 418
    invoke-static {p0, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendStringTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v5

    :goto_2
    move v6, p2

    const/4 p2, 0x1

    goto :goto_3

    :cond_2
    const/16 v9, 0x64

    if-ne v7, v9, :cond_3

    .line 420
    invoke-static {p0, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendIntTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v5

    goto :goto_2

    :cond_3
    if-ne v7, v6, :cond_5

    if-nez v3, :cond_4

    .line 425
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    move v6, v5

    const/4 p2, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v6, p2

    const/4 p2, 0x1

    const/4 v5, -0x1

    :goto_3
    if-ne v5, v8, :cond_6

    return v8

    :cond_6
    if-eqz v3, :cond_7

    add-int/2addr v4, v5

    :cond_7
    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    move p2, v6

    goto :goto_4

    :cond_9
    return v8

    :cond_a
    if-eqz v3, :cond_b

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 452
    :cond_b
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/2addr p2, v2

    goto :goto_1

    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    const/4 v4, -0x3

    :goto_6
    return v4
.end method

.method private static appendSegmentFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p7, v0, :cond_4

    const/4 v0, 0x1

    if-eqz p7, :cond_3

    if-eq p7, v0, :cond_2

    const/4 p3, 0x2

    if-eq p7, p3, :cond_1

    const/4 p3, 0x3

    if-ne p7, p3, :cond_0

    .line 332
    invoke-static {p0, p1, p2, p6, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result p0

    return p0

    .line 335
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 330
    :cond_1
    invoke-static {p0, p1, p2, p5, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result p0

    return p0

    .line 328
    :cond_2
    invoke-static {p0, p1, p2, p4, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result p0

    return p0

    .line 326
    :cond_3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result p0

    return p0

    :cond_4
    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 324
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method private static appendStringTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    instance-of v1, p1, Ljava/util/Formattable;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 470
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    const/4 v1, 0x0

    .line 475
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 476
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 479
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    const-string v1, "null"

    :cond_5
    if-eqz v0, :cond_6

    .line 486
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    .line 488
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, -0x3

    return p0
.end method

.method static doDryRun(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 187
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 193
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 199
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 205
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 211
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static doDryRun(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-static {v0, p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 248
    invoke-static {p0, p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 246
    :cond_0
    invoke-static {p0, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 244
    :cond_1
    invoke-static {p0, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 242
    :cond_2
    invoke-static {p0, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 240
    :cond_3
    invoke-static {p0, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 238
    :cond_4
    invoke-static {p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static varargs doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 654
    :try_start_0
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 659
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 17
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const/4 v0, 0x0

    if-nez v8, :cond_0

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const/4 v12, -0x1

    if-nez v10, :cond_1

    const/4 v13, -0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    move v14, v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    const/16 v7, -0xc8

    if-ge v14, v10, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v14

    .line 282
    invoke-static/range {v0 .. v7}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v12, :cond_2

    return v12

    :cond_2
    if-eqz v11, :cond_3

    add-int v16, v16, v0

    .line 289
    :cond_3
    invoke-static {v9, v15}, Lcom/facebook/common/stringformat/StringFormatUtil;->getNextFormatSegmentIndex(Ljava/lang/String;I)I

    move-result v15

    if-ne v14, v13, :cond_4

    const/16 v0, -0xc8

    if-ne v15, v0, :cond_5

    if-eqz v11, :cond_5

    const/4 v0, -0x2

    return v0

    :cond_4
    const/16 v0, -0xc8

    :cond_5
    if-gez v15, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    const/16 v0, -0xc8

    :goto_3
    move/from16 v1, v16

    if-eq v15, v0, :cond_9

    const/16 v0, -0xc9

    if-ne v15, v0, :cond_8

    goto :goto_4

    .line 309
    :cond_8
    invoke-static {v8, v9, v15, v1, v11}, Lcom/facebook/common/stringformat/StringFormatUtil;->processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    return v0

    :cond_9
    :goto_4
    if-eqz v11, :cond_a

    return v1

    :cond_a
    const/4 v0, -0x3

    return v0
.end method

.method private static varargs doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 346
    array-length v3, p2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 348
    :cond_2
    :goto_1
    sget-object p2, Lcom/facebook/common/stringformat/StringFormatUtil;->SINGLE_ITEM_NULL_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v3, 0x1

    .line 353
    :goto_2
    array-length v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    const/16 v8, -0xc9

    const/16 v9, -0xc8

    if-ge v1, v4, :cond_7

    aget-object v10, p2, v1

    xor-int/lit8 v11, v3, 0x1

    .line 354
    invoke-static {p0, p1, v5, v10, v11}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    return v11

    :cond_3
    if-eqz v2, :cond_4

    add-int/2addr v6, v10

    .line 361
    :cond_4
    invoke-static {p1, v5}, Lcom/facebook/common/stringformat/StringFormatUtil;->getNextFormatSegmentIndex(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_5

    goto :goto_4

    :cond_5
    if-ne v5, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    if-nez v7, :cond_8

    const/4 p0, -0x2

    return p0

    :cond_8
    if-eq v5, v9, :cond_a

    if-ne v5, v8, :cond_9

    goto :goto_5

    .line 386
    :cond_9
    invoke-static {p0, p1, v5, v6, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result p0

    return p0

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    return v6

    :cond_b
    const/4 p0, -0x3

    return p0
.end method

.method private static fallbackToSystem(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    .line 648
    invoke-static {p0, p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 646
    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v0

    aput-object p3, p1, v1

    aput-object p4, p1, v2

    aput-object p5, p1, v3

    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 644
    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    aput-object p2, p1, v0

    aput-object p3, p1, v1

    aput-object p4, p1, v2

    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 642
    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v0

    aput-object p3, p1, v1

    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 640
    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 638
    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBytes(J)Ljava/lang/String;
    .locals 3

    long-to-float v0, p0

    const/high16 v1, 0x44800000    # 1024.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 p0, 0x49800000    # 1048576.0f

    cmpg-float p1, v0, p0

    if-gez p1, :cond_1

    div-float/2addr v0, v1

    .line 127
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "%.2fKB"

    invoke-static {p1, p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p1, 0x4e800000

    cmpg-float v1, v0, p1

    if-gez v1, :cond_2

    div-float/2addr v0, p0

    .line 129
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "%.2fMB"

    invoke-static {p1, p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    div-float/2addr v0, p1

    .line 131
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "%.2fGB"

    invoke-static {p1, p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 55
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 76
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 87
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    const/4 v1, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 117
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 143
    invoke-static/range {p0 .. p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 145
    invoke-static/range {p0 .. p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->fallbackToSystem(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    return-object p0

    .line 149
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ne p1, v2, :cond_2

    .line 151
    invoke-static {v7, p0, p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 153
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 155
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNextFormatSegmentIndex(Ljava/lang/String;I)I
    .locals 6

    .line 607
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 611
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 612
    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->validateFormatPercent(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, -0x64

    if-ne v2, v5, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 613
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    move p1, v1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_1
    :goto_1
    add-int/2addr p1, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/16 p0, -0xc9

    goto :goto_2

    :cond_3
    const/16 p0, -0xc8

    :goto_2
    return p0
.end method

.method private static processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I
    .locals 5

    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p2, v0, :cond_4

    .line 560
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    if-le v0, p2, :cond_0

    .line 563
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    const/4 p0, -0x1

    return p0

    .line 571
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 579
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    add-int/2addr p3, v1

    goto :goto_3

    :cond_5
    const/4 p3, -0x3

    :goto_3
    return p3
.end method

.method private static validateFormatPercent(Ljava/lang/String;I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 594
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_0

    const/16 p1, 0x64

    if-eq p0, p1, :cond_0

    const/16 p1, 0x25

    if-ne p0, p1, :cond_1

    :cond_0
    const/16 p0, -0x64

    return p0

    :cond_1
    const/16 p0, -0x65

    return p0
.end method
