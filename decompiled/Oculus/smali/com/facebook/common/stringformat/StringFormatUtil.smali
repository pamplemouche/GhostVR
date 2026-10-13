.class public Lcom/facebook/common/stringformat/StringFormatUtil;
.super Ljava/lang/Object;
.source "StringFormatUtil.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static final SINGLE_ITEM_NULL_OBJECT_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/stringformat/StringFormatUtil;->SINGLE_ITEM_NULL_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs appendFormatStrLocaleSafe(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p2

    .line 172
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 173
    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 175
    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 182
    :goto_0
    return-void

    .line 176
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

    goto :goto_0
.end method

.method private static appendIntTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 494
    if-nez p0, :cond_0

    const/4 v1, 0x1

    .line 497
    :goto_0
    if-nez p1, :cond_2

    .line 498
    if-eqz v1, :cond_1

    .line 499
    const-string v2, "null"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 548
    :goto_1
    if-eqz v1, :cond_c

    :goto_2
    return v0

    :cond_0
    move v1, v0

    .line 494
    goto :goto_0

    .line 501
    :cond_1
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 503
    :cond_2
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 504
    if-eqz v1, :cond_3

    .line 506
    const/16 v0, 0xb

    goto :goto_1

    .line 510
    :cond_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 512
    :cond_4
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    .line 513
    if-eqz v1, :cond_5

    .line 515
    const/4 v0, 0x6

    goto :goto_1

    .line 519
    :cond_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 521
    :cond_6
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_8

    .line 522
    if-eqz v1, :cond_7

    .line 524
    const/4 v0, 0x4

    goto :goto_1

    .line 528
    :cond_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 530
    :cond_8
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_a

    .line 531
    if-eqz v1, :cond_9

    .line 533
    const/16 v0, 0x14

    goto :goto_1

    .line 537
    :cond_9
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 541
    :cond_a
    if-eqz v1, :cond_b

    .line 542
    const/4 v0, -0x1

    goto :goto_2

    .line 544
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 548
    :cond_c
    const/4 v0, -0x3

    goto :goto_2
.end method

.method private static appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I
    .locals 10
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v9, 0x25

    const/4 v5, -0x1

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 399
    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    move v3, v2

    move v4, p2

    .line 401
    :goto_1
    if-ge v4, v8, :cond_d

    .line 402
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 404
    if-ne v6, v9, :cond_9

    .line 405
    invoke-static {p1, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->validateFormatPercent(Ljava/lang/String;I)I

    move-result v6

    .line 407
    const/16 v7, -0x64

    if-ne v6, v7, :cond_8

    .line 408
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 410
    if-nez p4, :cond_1

    if-eq v6, v9, :cond_1

    move v0, v5

    .line 459
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 399
    goto :goto_0

    .line 417
    :cond_1
    const/16 v7, 0x73

    if-ne v6, v7, :cond_2

    .line 418
    invoke-static {p0, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendStringTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v6

    move v7, v1

    .line 434
    :goto_3
    if-ne v6, v5, :cond_6

    move v0, v5

    .line 435
    goto :goto_2

    .line 419
    :cond_2
    const/16 v7, 0x64

    if-ne v6, v7, :cond_3

    .line 420
    invoke-static {p0, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendIntTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v6

    move v7, v1

    goto :goto_3

    .line 421
    :cond_3
    if-ne v6, v9, :cond_5

    .line 424
    if-nez v0, :cond_4

    .line 425
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v6, v1

    move v7, v2

    goto :goto_3

    :cond_5
    move v6, v5

    move v7, v1

    .line 431
    goto :goto_3

    .line 437
    :cond_6
    if-eqz v0, :cond_7

    .line 438
    add-int/2addr v3, v6

    .line 441
    :cond_7
    if-eqz v7, :cond_a

    move v1, v3

    .line 459
    :goto_4
    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v5

    .line 446
    goto :goto_2

    .line 449
    :cond_9
    if-eqz v0, :cond_b

    .line 450
    add-int/lit8 v3, v3, 0x1

    .line 456
    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 457
    goto :goto_1

    .line 452
    :cond_b
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 459
    :cond_c
    const/4 v0, -0x3

    goto :goto_2

    :cond_d
    move v1, v3

    goto :goto_4
.end method

.method private static appendSegmentFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 322
    packed-switch p7, :pswitch_data_0

    .line 335
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 324
    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    .line 332
    :goto_0
    return v0

    .line 326
    :pswitch_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-static {p0, p1, p2, p4, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    goto :goto_0

    .line 330
    :pswitch_3
    invoke-static {p0, p1, p2, p5, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    goto :goto_0

    .line 332
    :pswitch_4
    invoke-static {p0, p1, p2, p6, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static appendStringTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 463
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 465
    :goto_0
    instance-of v1, p1, Ljava/util/Formattable;

    if-eqz v1, :cond_2

    .line 467
    if-eqz v0, :cond_1

    .line 468
    const/4 v0, -0x1

    .line 489
    :goto_1
    return v0

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 470
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 474
    :cond_2
    const/4 v1, 0x0

    .line 475
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 476
    check-cast p1, Ljava/lang/String;

    move-object v1, p1

    .line 481
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 482
    const-string v1, "null"

    .line 485
    :cond_4
    if-eqz v0, :cond_6

    .line 486
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 477
    :cond_5
    if-eqz p1, :cond_3

    .line 479
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 488
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const/4 v0, -0x3

    goto :goto_1
.end method

.method static doDryRun(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 187
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 193
    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 199
    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 205
    const/4 v2, 0x3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 211
    const/4 v0, 0x0

    const/4 v2, 0x4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static doDryRun(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 248
    invoke-static {p0, p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    invoke-static {p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-static {p0, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 244
    :pswitch_3
    invoke-static {p0, p2, p3, p4}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 246
    :pswitch_4
    invoke-static {p0, p2, p3, p4, p5}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static varargs doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 654
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 655
    :catch_0
    move-exception v0

    .line 659
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 272
    const/4 v9, 0x0

    .line 273
    if-nez p0, :cond_1

    const/4 v0, 0x1

    move v10, v0

    .line 279
    :goto_0
    if-nez p2, :cond_2

    const/4 v0, -0x1

    move v8, v0

    :goto_1
    move v7, v8

    .line 281
    :goto_2
    if-ge v7, p2, :cond_9

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 282
    invoke-static/range {v0 .. v7}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    .line 283
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 284
    const/4 v0, -0x1

    .line 309
    :cond_0
    :goto_3
    return v0

    .line 273
    :cond_1
    const/4 v0, 0x0

    move v10, v0

    goto :goto_0

    .line 279
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 286
    :cond_3
    if-eqz v10, :cond_8

    .line 287
    add-int/2addr v0, v9

    .line 289
    :goto_4
    invoke-static {p1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->getNextFormatSegmentIndex(Ljava/lang/String;I)I

    move-result v2

    .line 291
    if-ne v7, v8, :cond_4

    const/16 v1, -0xc8

    if-ne v2, v1, :cond_4

    if-eqz v10, :cond_4

    .line 292
    const/4 v0, -0x2

    goto :goto_3

    .line 295
    :cond_4
    if-gez v2, :cond_6

    .line 301
    :goto_5
    const/16 v1, -0xc8

    if-eq v2, v1, :cond_5

    const/16 v1, -0xc9

    if-ne v2, v1, :cond_7

    .line 303
    :cond_5
    if-nez v10, :cond_0

    .line 306
    const/4 v0, -0x3

    goto :goto_3

    .line 281
    :cond_6
    add-int/lit8 v7, v7, 0x1

    move v9, v0

    goto :goto_2

    .line 309
    :cond_7
    invoke-static {p0, p1, v2, v0, v10}, Lcom/facebook/common/stringformat/StringFormatUtil;->processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    goto :goto_3

    :cond_8
    move v0, v9

    goto :goto_4

    :cond_9
    move v0, v9

    goto :goto_5
.end method

.method private static varargs doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 10

    .prologue
    .line 341
    const/4 v4, 0x0

    .line 342
    const/4 v2, 0x0

    .line 343
    if-nez p0, :cond_3

    const/4 v0, 0x1

    move v6, v0

    .line 345
    :goto_0
    const/4 v0, 0x0

    .line 346
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 348
    :cond_0
    sget-object p2, Lcom/facebook/common/stringformat/StringFormatUtil;->SINGLE_ITEM_NULL_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 349
    const/4 v0, 0x1

    .line 352
    :cond_1
    const/4 v3, 0x0

    .line 353
    array-length v7, p2

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_c

    aget-object v8, p2, v5

    .line 354
    if-nez v0, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-static {p0, p1, v4, v8, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v1

    .line 355
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 356
    const/4 v0, -0x1

    .line 386
    :cond_2
    :goto_3
    return v0

    .line 343
    :cond_3
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 354
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 358
    :cond_5
    if-eqz v6, :cond_b

    .line 359
    add-int/2addr v1, v2

    .line 361
    :goto_4
    invoke-static {p1, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->getNextFormatSegmentIndex(Ljava/lang/String;I)I

    move-result v2

    .line 363
    const/16 v4, -0xc8

    if-ne v2, v4, :cond_6

    move v0, v1

    move v1, v3

    .line 374
    :goto_5
    if-eqz v6, :cond_8

    if-nez v1, :cond_8

    .line 375
    const/4 v0, -0x2

    goto :goto_3

    .line 365
    :cond_6
    const/16 v3, -0xc9

    if-ne v2, v3, :cond_7

    .line 366
    const/4 v0, 0x1

    move v9, v0

    move v0, v1

    move v1, v9

    .line 367
    goto :goto_5

    .line 369
    :cond_7
    const/4 v4, 0x1

    .line 353
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v4

    move v4, v2

    move v2, v1

    goto :goto_1

    .line 378
    :cond_8
    const/16 v1, -0xc8

    if-eq v2, v1, :cond_9

    const/16 v1, -0xc9

    if-ne v2, v1, :cond_a

    .line 380
    :cond_9
    if-nez v6, :cond_2

    .line 383
    const/4 v0, -0x3

    goto :goto_3

    .line 386
    :cond_a
    invoke-static {p0, p1, v2, v0, v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    move v1, v3

    move v0, v2

    move v2, v4

    goto :goto_5
.end method

.method private static fallbackToSystem(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 636
    packed-switch p1, :pswitch_data_0

    .line 648
    invoke-static {p0, p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 638
    :pswitch_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 640
    :pswitch_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 642
    :pswitch_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 644
    :pswitch_3
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    aput-object p4, v0, v3

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 646
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    aput-object p4, v0, v3

    aput-object p5, v0, v4

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFallbackToSystem(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 87
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatStrLocaleSafeInner(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 143
    invoke-static/range {p0 .. p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 144
    if-ne v1, v2, :cond_1

    .line 145
    invoke-static/range {p0 .. p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->fallbackToSystem(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 155
    :cond_0
    :goto_0
    return-object p0

    .line 146
    :cond_1
    const/4 v0, -0x2

    if-eq v1, v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    if-ne p1, v2, :cond_2

    .line 151
    invoke-static {v0, p0, p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 153
    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private static getNextFormatSegmentIndex(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/16 v5, 0x25

    .line 607
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 608
    const/4 v0, 0x0

    move v1, p1

    .line 610
    :goto_0
    if-ge v1, v2, :cond_2

    .line 611
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 612
    if-ne v3, v5, :cond_0

    invoke-static {p0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->validateFormatPercent(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, -0x64

    if-ne v3, v4, :cond_0

    .line 613
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    .line 616
    add-int/lit8 v1, v1, 0x1

    .line 617
    const/4 v0, 0x1

    .line 622
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 623
    goto :goto_0

    .line 619
    :cond_1
    add-int/lit8 v0, v1, 0x2

    .line 625
    :goto_1
    return v0

    :cond_2
    if-eqz v0, :cond_3

    const/16 v0, -0xc9

    goto :goto_1

    :cond_3
    const/16 v0, -0xc8

    goto :goto_1
.end method

.method private static processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I
    .locals 6

    .prologue
    const/16 v5, 0x25

    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 555
    const/4 v0, 0x0

    move v1, p2

    .line 559
    :goto_0
    if-ge v1, v2, :cond_4

    .line 560
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 562
    if-ne v3, v5, :cond_0

    .line 563
    add-int/lit8 v4, v1, 0x1

    if-le v2, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    .line 565
    add-int/lit8 v1, v1, 0x1

    .line 576
    :cond_0
    if-eqz p4, :cond_3

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 582
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 583
    goto :goto_0

    .line 568
    :cond_1
    if-eqz p4, :cond_2

    .line 569
    const/4 v0, -0x1

    .line 585
    :goto_2
    return v0

    .line 571
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 579
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 585
    :cond_4
    if-eqz p4, :cond_5

    add-int/2addr v0, p3

    goto :goto_2

    :cond_5
    const/4 v0, -0x3

    goto :goto_2
.end method

.method private static validateFormatPercent(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 592
    add-int/lit8 v0, p1, 0x1

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 594
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 595
    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    .line 596
    :cond_0
    const/16 v0, -0x64

    .line 599
    :goto_0
    return v0

    :cond_1
    const/16 v0, -0x65

    goto :goto_0
.end method
