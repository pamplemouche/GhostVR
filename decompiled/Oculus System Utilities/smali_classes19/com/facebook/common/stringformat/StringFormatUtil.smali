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
    .locals 9
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 172
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v7

    .line 173
    .local v7, "bufferSize":I
    if-ne v7, v1, :cond_0

    .line 174
    new-instance v8, Ljava/util/Formatter;

    invoke-direct {v8, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 175
    .local v8, "formatter":Ljava/util/Formatter;
    invoke-virtual {v8, v2, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 182
    .end local v8    # "formatter":Ljava/util/Formatter;
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, -0x2

    if-ne v7, v0, :cond_1

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 180
    invoke-static {p0, p1, p2}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static appendIntTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .locals 4
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 494
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 495
    .local v0, "dryRun":Z
    :goto_0
    const/4 v1, 0x0

    .line 497
    .local v1, "length":I
    if-nez p1, :cond_2

    .line 498
    if-eqz v0, :cond_1

    .line 499
    const-string v2, "null"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 548
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_1
    if-eqz v0, :cond_c

    move v2, v1

    :goto_2
    return v2

    .line 494
    .end local v0    # "dryRun":Z
    .end local v1    # "length":I
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 501
    .restart local v0    # "dryRun":Z
    .restart local v1    # "length":I
    :cond_1
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 503
    :cond_2
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 504
    if-eqz v0, :cond_3

    .line 506
    add-int/lit8 v1, v1, 0xb

    goto :goto_1

    .line 510
    :cond_3
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 512
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    .line 513
    if-eqz v0, :cond_5

    .line 515
    add-int/lit8 v1, v1, 0x6

    goto :goto_1

    .line 519
    :cond_5
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 521
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_8

    .line 522
    if-eqz v0, :cond_7

    .line 524
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 528
    :cond_7
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 530
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_a

    .line 531
    if-eqz v0, :cond_9

    .line 533
    add-int/lit8 v1, v1, 0x14

    goto :goto_1

    .line 537
    :cond_9
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 541
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_a
    if-eqz v0, :cond_b

    .line 542
    const/4 v2, -0x1

    goto :goto_2

    .line 544
    :cond_b
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 548
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_c
    const/4 v2, -0x3

    goto :goto_2
.end method

.method private static appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I
    .locals 10
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "startIdx"    # I
    .param p3, "arg"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "considerArg"    # Z

    .prologue
    .line 396
    move v4, p2

    .line 397
    .local v4, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 398
    .local v3, "formatLen":I
    const/4 v5, 0x0

    .line 399
    .local v5, "length":I
    if-nez p0, :cond_0

    const/4 v2, 0x1

    .line 401
    .local v2, "dryRun":Z
    :goto_0
    if-ge v4, v3, :cond_8

    .line 402
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 404
    .local v1, "ch":C
    const/16 v9, 0x25

    if-ne v1, v9, :cond_a

    .line 405
    invoke-static {p1, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->validateFormatPercent(Ljava/lang/String;I)I

    move-result v8

    .line 407
    .local v8, "validatePercentResult":I
    const/16 v9, -0x64

    if-ne v8, v9, :cond_9

    .line 408
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 410
    .local v6, "nextChar":C
    if-nez p4, :cond_1

    const/16 v9, 0x25

    if-eq v6, v9, :cond_1

    .line 412
    const/4 v9, -0x1

    .line 459
    .end local v1    # "ch":C
    .end local v6    # "nextChar":C
    .end local v8    # "validatePercentResult":I
    :goto_1
    return v9

    .line 399
    .end local v2    # "dryRun":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 415
    .restart local v1    # "ch":C
    .restart local v2    # "dryRun":Z
    .restart local v6    # "nextChar":C
    .restart local v8    # "validatePercentResult":I
    :cond_1
    const/4 v7, 0x1

    .line 417
    .local v7, "segmentDone":Z
    const/16 v9, 0x73

    if-ne v6, v9, :cond_2

    .line 418
    invoke-static {p0, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendStringTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v0

    .line 434
    .local v0, "appendResult":I
    :goto_2
    const/4 v9, -0x1

    if-ne v0, v9, :cond_6

    .line 435
    const/4 v9, -0x1

    goto :goto_1

    .line 419
    .end local v0    # "appendResult":I
    :cond_2
    const/16 v9, 0x64

    if-ne v6, v9, :cond_3

    .line 420
    invoke-static {p0, p3}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendIntTypeArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "appendResult":I
    goto :goto_2

    .line 421
    .end local v0    # "appendResult":I
    :cond_3
    const/16 v9, 0x25

    if-ne v6, v9, :cond_5

    .line 423
    const/4 v7, 0x0

    .line 424
    if-nez v2, :cond_4

    .line 425
    const/16 v9, 0x25

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    :cond_4
    const/4 v0, 0x1

    .line 428
    .restart local v0    # "appendResult":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 431
    .end local v0    # "appendResult":I
    :cond_5
    const/4 v0, -0x1

    .restart local v0    # "appendResult":I
    goto :goto_2

    .line 437
    :cond_6
    if-eqz v2, :cond_7

    .line 438
    add-int/2addr v5, v0

    .line 441
    :cond_7
    if-eqz v7, :cond_b

    .line 459
    .end local v0    # "appendResult":I
    .end local v1    # "ch":C
    .end local v6    # "nextChar":C
    .end local v7    # "segmentDone":Z
    .end local v8    # "validatePercentResult":I
    :cond_8
    if-eqz v2, :cond_d

    move v9, v5

    goto :goto_1

    .line 446
    .restart local v1    # "ch":C
    .restart local v8    # "validatePercentResult":I
    :cond_9
    const/4 v9, -0x1

    goto :goto_1

    .line 449
    .end local v8    # "validatePercentResult":I
    :cond_a
    if-eqz v2, :cond_c

    .line 450
    add-int/lit8 v5, v5, 0x1

    .line 456
    :cond_b
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 457
    goto :goto_0

    .line 452
    :cond_c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 459
    .end local v1    # "ch":C
    :cond_d
    const/4 v9, -0x3

    goto :goto_1
.end method

.method private static appendSegmentFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "startIdx"    # I
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;
    .param p6, "arg3"    # Ljava/lang/Object;
    .param p7, "argIdx"    # I

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
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 463
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 465
    .local v0, "dryRun":Z
    :goto_0
    instance-of v2, p1, Ljava/util/Formattable;

    if-eqz v2, :cond_2

    .line 467
    if-eqz v0, :cond_1

    .line 468
    const/4 v2, -0x1

    .line 489
    :goto_1
    return v2

    .line 463
    .end local v0    # "dryRun":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 470
    .restart local v0    # "dryRun":Z
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 474
    :cond_2
    const/4 v1, 0x0

    .line 475
    .local v1, "str":Ljava/lang/String;
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 476
    check-cast v1, Ljava/lang/String;

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

    move-result v2

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
    const/4 v2, -0x3

    goto :goto_1
.end method

.method static doDryRun(Ljava/lang/String;)I
    .locals 7
    .param p0, "format"    # Ljava/lang/String;

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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;

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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "argCount"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "argsList"    # [Ljava/lang/Object;

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
    .locals 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 654
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 655
    :catch_0
    move-exception v0

    .line 659
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    .end local v0    # "ex":Ljava/util/IllegalFormatException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static doFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .param p0, "output"    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argCount"    # I
    .param p3, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, "segIdx":I
    const/4 v10, 0x0

    .line 273
    .local v10, "length":I
    if-nez p0, :cond_0

    const/4 v9, 0x1

    .line 279
    .local v9, "dryRun":Z
    :goto_0
    if-nez p2, :cond_1

    const/4 v11, -0x1

    .line 281
    .local v11, "startAt":I
    :goto_1
    move v7, v11

    .local v7, "argIdx":I
    :goto_2
    if-ge v7, p2, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 282
    invoke-static/range {v0 .. v7}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormatArgs(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v8

    .line 283
    .local v8, "appendLen":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 284
    const/4 v0, -0x1

    .line 309
    .end local v8    # "appendLen":I
    :goto_3
    return v0

    .line 273
    .end local v7    # "argIdx":I
    .end local v9    # "dryRun":Z
    .end local v11    # "startAt":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 279
    .restart local v9    # "dryRun":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 286
    .restart local v7    # "argIdx":I
    .restart local v8    # "appendLen":I
    .restart local v11    # "startAt":I
    :cond_2
    if-eqz v9, :cond_3

    .line 287
    add-int/2addr v10, v8

    .line 289
    :cond_3
    invoke-static {p1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->getNextFormatSegmentIndex(Ljava/lang/String;I)I

    move-result v2

    .line 291
    if-ne v7, v11, :cond_4

    const/16 v0, -0xc8

    if-ne v2, v0, :cond_4

    if-eqz v9, :cond_4

    .line 292
    const/4 v0, -0x2

    goto :goto_3

    .line 295
    :cond_4
    if-gez v2, :cond_7

    .line 301
    .end local v8    # "appendLen":I
    :cond_5
    const/16 v0, -0xc8

    if-eq v2, v0, :cond_6

    const/16 v0, -0xc9

    if-ne v2, v0, :cond_9

    .line 303
    :cond_6
    if-eqz v9, :cond_8

    move v0, v10

    .line 304
    goto :goto_3

    .line 281
    .restart local v8    # "appendLen":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 306
    .end local v8    # "appendLen":I
    :cond_8
    const/4 v0, -0x3

    goto :goto_3

    .line 309
    :cond_9
    invoke-static {p0, p1, v2, v10, v9}, Lcom/facebook/common/stringformat/StringFormatUtil;->processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    goto :goto_3
.end method

.method private static varargs doFormatArray(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 10
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 341
    const/4 v6, 0x0

    .line 342
    .local v6, "segIdx":I
    const/4 v5, 0x0

    .line 343
    .local v5, "length":I
    if-nez p0, :cond_2

    const/4 v3, 0x1

    .line 345
    .local v3, "dryRun":Z
    :goto_0
    const/4 v2, 0x0

    .line 346
    .local v2, "argsWasEmpty":Z
    if-eqz p2, :cond_0

    array-length v7, p2

    if-nez v7, :cond_1

    .line 348
    :cond_0
    sget-object p2, Lcom/facebook/common/stringformat/StringFormatUtil;->SINGLE_ITEM_NULL_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 349
    const/4 v2, 0x1

    .line 352
    :cond_1
    const/4 v4, 0x0

    .line 353
    .local v4, "formatted":Z
    array-length v9, p2

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_6

    aget-object v1, p2, v8

    .line 354
    .local v1, "arg":Ljava/lang/Object;
    if-nez v2, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-static {p0, p1, v6, v1, v7}, Lcom/facebook/common/stringformat/StringFormatUtil;->appendSegmentFormat(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    .line 355
    .local v0, "appendLen":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_4

    .line 356
    const/4 v7, -0x1

    .line 386
    .end local v0    # "appendLen":I
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_3
    return v7

    .line 343
    .end local v2    # "argsWasEmpty":Z
    .end local v3    # "dryRun":Z
    .end local v4    # "formatted":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 354
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "argsWasEmpty":Z
    .restart local v3    # "dryRun":Z
    .restart local v4    # "formatted":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 358
    .restart local v0    # "appendLen":I
    :cond_4
    if-eqz v3, :cond_5

    .line 359
    add-int/2addr v5, v0

    .line 361
    :cond_5
    invoke-static {p1, v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->getNextFormatSegmentIndex(Ljava/lang/String;I)I

    move-result v6

    .line 363
    const/16 v7, -0xc8

    if-ne v6, v7, :cond_7

    .line 374
    .end local v0    # "appendLen":I
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_6
    :goto_4
    if-eqz v3, :cond_9

    if-nez v4, :cond_9

    .line 375
    const/4 v7, -0x2

    goto :goto_3

    .line 365
    .restart local v0    # "appendLen":I
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_7
    const/16 v7, -0xc9

    if-ne v6, v7, :cond_8

    .line 366
    const/4 v4, 0x1

    .line 367
    goto :goto_4

    .line 369
    :cond_8
    const/4 v4, 0x1

    .line 353
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 378
    .end local v0    # "appendLen":I
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_9
    const/16 v7, -0xc8

    if-eq v6, v7, :cond_a

    const/16 v7, -0xc9

    if-ne v6, v7, :cond_c

    .line 380
    :cond_a
    if-eqz v3, :cond_b

    move v7, v5

    .line 381
    goto :goto_3

    .line 383
    :cond_b
    const/4 v7, -0x3

    goto :goto_3

    .line 386
    :cond_c
    invoke-static {p0, p1, v6, v5, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v7

    goto :goto_3
.end method

.method private static fallbackToSystem(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "argCount"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "argsList"    # [Ljava/lang/Object;

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

.method public static formatBytes(J)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # J

    .prologue
    const/high16 v3, 0x44800000    # 1024.0f

    .line 121
    const/high16 v1, 0x44800000    # 1024.0f

    .line 122
    .local v1, "KB":F
    mul-float v2, v3, v1

    .line 123
    .local v2, "MB":F
    mul-float v0, v3, v2

    .line 124
    .local v0, "GB":F
    long-to-float v3, p0

    cmpg-float v3, v3, v1

    if-gez v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    :goto_0
    return-object v3

    .line 126
    :cond_0
    long-to-float v3, p0

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    .line 127
    const-string v3, "%.2fKB"

    long-to-float v4, p0

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 128
    :cond_1
    long-to-float v3, p0

    cmpg-float v3, v3, v0

    if-gez v3, :cond_2

    .line 129
    const-string v3, "%.2fMB"

    long-to-float v4, p0

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 131
    :cond_2
    const-string v3, "%.2fGB"

    long-to-float v4, p0

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static formatStrLocaleSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "format"    # Ljava/lang/String;
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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/Object;
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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/Object;
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
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
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
    .locals 8
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "argCount"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "arg3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "argsList"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 143
    invoke-static/range {p0 .. p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->doDryRunInternal(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v7

    .line 144
    .local v7, "bufferSize":I
    if-ne v7, v2, :cond_1

    .line 145
    invoke-static/range {p0 .. p6}, Lcom/facebook/common/stringformat/StringFormatUtil;->fallbackToSystem(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 155
    .end local p0    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 146
    .restart local p0    # "format":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x2

    if-eq v7, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v0, "output":Ljava/lang/StringBuilder;
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
    .locals 7
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "startIdx"    # I

    .prologue
    const/16 v6, 0x25

    .line 606
    move v3, p1

    .line 607
    .local v3, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 608
    .local v1, "formatLen":I
    const/4 v2, 0x0

    .line 610
    .local v2, "foundDoublePercent":Z
    :goto_0
    if-ge v3, v1, :cond_2

    .line 611
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 612
    .local v0, "ch":C
    if-ne v0, v6, :cond_0

    invoke-static {p0, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->validateFormatPercent(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, -0x64

    if-ne v4, v5, :cond_0

    .line 613
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 616
    add-int/lit8 v3, v3, 0x1

    .line 617
    const/4 v2, 0x1

    .line 622
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 623
    goto :goto_0

    .line 619
    :cond_1
    add-int/lit8 v4, v3, 0x2

    .line 625
    .end local v0    # "ch":C
    :goto_1
    return v4

    :cond_2
    if-eqz v2, :cond_3

    const/16 v4, -0xc9

    goto :goto_1

    :cond_3
    const/16 v4, -0xc8

    goto :goto_1
.end method

.method private static processRemainingString(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I
    .locals 6
    .param p0, "output"    # Ljava/lang/StringBuilder;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "startIdx"    # I
    .param p3, "currLength"    # I
    .param p4, "dryRun"    # Z

    .prologue
    const/16 v5, 0x25

    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 554
    .local v1, "formatLen":I
    move v2, p2

    .line 555
    .local v2, "index":I
    const/4 v3, 0x0

    .line 559
    .local v3, "remainingLen":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 560
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 562
    .local v0, "ch":C
    if-ne v0, v5, :cond_0

    .line 563
    add-int/lit8 v4, v2, 0x1

    if-le v1, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    .line 565
    add-int/lit8 v2, v2, 0x1

    .line 576
    :cond_0
    if-eqz p4, :cond_3

    .line 577
    add-int/lit8 v3, v3, 0x1

    .line 582
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 583
    goto :goto_0

    .line 568
    :cond_1
    if-eqz p4, :cond_2

    .line 569
    const/4 v4, -0x1

    .line 585
    .end local v0    # "ch":C
    :goto_2
    return v4

    .line 571
    .restart local v0    # "ch":C
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 579
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 585
    .end local v0    # "ch":C
    :cond_4
    if-eqz p4, :cond_5

    add-int v4, p3, v3

    goto :goto_2

    :cond_5
    const/4 v4, -0x3

    goto :goto_2
.end method

.method private static validateFormatPercent(Ljava/lang/String;I)I
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "percentIndex"    # I

    .prologue
    .line 592
    add-int/lit8 v1, p1, 0x1

    .line 593
    .local v1, "nextIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 594
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 595
    .local v0, "nextChar":C
    const/16 v2, 0x73

    if-eq v0, v2, :cond_0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/16 v2, 0x25

    if-ne v0, v2, :cond_1

    .line 596
    :cond_0
    const/16 v2, -0x64

    .line 599
    .end local v0    # "nextChar":C
    :goto_0
    return v2

    :cond_1
    const/16 v2, -0x65

    goto :goto_0
.end method
