.class public Lcom/facebook/common/string/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/string/StringUtil$StringProcessor;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEscapedFQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x27

    .line 360
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 362
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 364
    .local v0, "c":C
    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    .line 365
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    return-object p0
.end method

.method public static varargs areAllEmptyOrNull([Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "charSequences"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    array-length v1, p0

    .line 55
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 56
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const/4 v2, 0x0

    .line 60
    :goto_1
    return v2

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static assertNotBlank(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 206
    return-object p0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static assertNotBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 211
    return-object p0

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param

    .prologue
    .line 334
    if-nez p0, :cond_0

    .line 335
    const/4 v4, 0x0

    .line 349
    :goto_0
    return-object v4

    .line 338
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string v4, "\\s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "words":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v3

    .local v1, "numWords":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 341
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 340
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_1
    if-lez v0, :cond_2

    .line 345
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_2
    aget-object v4, v3, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 349
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static capitalizeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 311
    const/4 v1, 0x0

    .line 320
    :goto_0
    return-object v1

    .line 314
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 315
    const-string v1, ""

    goto :goto_0

    .line 318
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs equalToOneOf(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "subject"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 79
    .local v0, "string":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/facebook/common/string/StringUtil;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const/4 v1, 0x1

    .line 84
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return v1

    .line 78
    .restart local v0    # "string":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUTf8([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNewlineCount(Ljava/lang/String;)I
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v6, 0xa

    const/4 v4, 0x0

    .line 468
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 482
    :cond_0
    return v2

    .line 471
    :cond_1
    const/4 v2, 0x0

    .line 472
    .local v2, "lines":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    .line 473
    .local v1, "codePointCount":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 474
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    int-to-char v0, v4

    .line 475
    .local v0, "c":C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_3

    .line 476
    add-int/lit8 v2, v2, 0x1

    .line 477
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    int-to-char v4, v4

    if-ne v4, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 473
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    :cond_3
    if-ne v0, v6, :cond_2

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getStringValue(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 415
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 416
    const/4 v1, 0x0

    .line 418
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static hash64(Ljava/lang/String;)J
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 123
    const-wide v0, 0x3ffffffffffe5L

    .line 124
    .local v0, "h":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 126
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 127
    const-wide/16 v4, 0x1f

    mul-long/2addr v4, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-wide v0
.end method

.method public static isAbsentOrNull(Lcom/google/common/base/Optional;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "s":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<+Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isAnyEmptyOrNull([Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "charSequences"    # [Ljava/lang/CharSequence;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    array-length v1, p0

    .line 44
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 49
    :goto_1
    return v2

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/TrueOnNull;
    .end annotation

    .prologue
    .line 200
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isEmptyAfterTrimOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isConsecutiveNumber(Ljava/lang/String;)Z
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 506
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isEmptyAfterTrimOrNull(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v6

    .line 509
    :cond_1
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isPositiveInt(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 512
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v0, v8, -0x30

    .line 513
    .local v0, "firstDigit":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v5, v8, -0x30

    .line 514
    .local v5, "secondDigit":I
    const/4 v3, 0x1

    .line 515
    .local v3, "order":I
    sub-int v8, v5, v0

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 516
    const/4 v3, -0x1

    .line 518
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 519
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x30

    .line 520
    .local v4, "right":I
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v2, v8, -0x30

    .line 521
    .local v2, "left":I
    sub-int v8, v4, v2

    if-ne v8, v3, :cond_0

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "left":I
    .end local v4    # "right":I
    :cond_3
    move v6, v7

    .line 525
    goto :goto_0
.end method

.method public static isEmptyAfterTrimOrNull(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/TrueOnNull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 190
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/infer/annotation/TrueOnNull;
    .end annotation

    .prologue
    .line 34
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPositiveInt(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 537
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 541
    .local v1, "number":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .end local v1    # "number":I
    :cond_0
    :goto_0
    return v2

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static isRepetitiveNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isEmptyAfterTrimOrNull(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v3

    .line 554
    :cond_1
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isPositiveInt(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 558
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 559
    .local v2, "right":C
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 560
    .local v1, "left":C
    if-ne v2, v1, :cond_0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "left":C
    .end local v2    # "right":C
    :cond_2
    move v3, v4

    .line 564
    goto :goto_0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/util/Collection;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "tokens":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/CharSequence;>;"
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 287
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x1

    .line 288
    .local v0, "firstTime":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 289
    .local v2, "token":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 294
    :goto_1
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 296
    .end local v2    # "token":Ljava/lang/CharSequence;
    :cond_1
    return-object v1
.end method

.method public static varargs join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "items"    # [Ljava/lang/Object;

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "processor"    # Lcom/facebook/common/string/StringUtil$StringProcessor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "items"    # [Ljava/lang/Object;

    .prologue
    .line 253
    const/4 v0, 0x1

    .line 254
    .local v0, "first":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, p3, v2

    .line 255
    .local v1, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 260
    :goto_1
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_1

    .line 261
    check-cast v1, Ljava/util/Collection;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, p1, p2, v4}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V

    .line 254
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 262
    :cond_1
    instance-of v4, v1, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 263
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "o":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v1}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    if-eqz p2, :cond_3

    .line 265
    invoke-interface {p2, v1}, Lcom/facebook/common/string/StringUtil$StringProcessor;->process(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 267
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 270
    .end local v1    # "o":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public static makeEscapedFqlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/facebook/common/string/StringUtil;->appendEscapedFQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeEscapedJSString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "allowControlCharacter"    # Z

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    if-nez p0, :cond_0

    .line 392
    const-string v3, ""

    .line 405
    :goto_0
    return-object v3

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 396
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 397
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 399
    :cond_2
    if-gt v1, v8, :cond_4

    if-nez p1, :cond_3

    const/16 v3, 0x20

    if-lt v1, v3, :cond_4

    .line 400
    :cond_3
    const-string v3, "\\x%02X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 401
    :cond_4
    if-le v1, v8, :cond_1

    .line 402
    const-string v3, "\\u%04X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 405
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static phpStyleSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeFromEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "remove"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 487
    invoke-static {p0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 490
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceSpacesWithNoBreakSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 455
    const/16 v0, 0x20

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static safeCompareTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "s2"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    if-nez p0, :cond_1

    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 90
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 91
    :cond_1
    if-nez p1, :cond_2

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "s2"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    if-nez p0, :cond_1

    .line 69
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static splitString(Ljava/lang/String;C)Ljava/util/List;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static tail(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUTf8(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-static {p0, v0, v0}, Lcom/facebook/common/string/StringUtil;->trim(Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static trim(Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "left"    # Z
    .param p2, "right"    # Z

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "start":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 147
    .local v0, "end":I
    if-eqz p2, :cond_0

    .line 148
    :goto_0
    if-le v0, v1, :cond_0

    .line 149
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    .line 156
    :goto_1
    if-le v0, v1, :cond_1

    .line 157
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 163
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_4

    .line 166
    .end local p0    # "s":Ljava/lang/CharSequence;
    :goto_2
    return-object p0

    .line 152
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_4
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2
.end method

.method public static trimLeft(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/common/string/StringUtil;->trim(Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static trimRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/common/string/StringUtil;->trim(Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "length"    # I

    .prologue
    .line 225
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 228
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    .line 229
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v1, p1, v1

    .line 228
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static xmlEncodeNonLatin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 427
    if-eqz p0, :cond_3

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 429
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 430
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 431
    .local v0, "ch":C
    const/16 v3, 0x26

    if-ne v0, v3, :cond_0

    .line 432
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v0, v3, :cond_1

    .line 434
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 436
    :cond_1
    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 441
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v3

    :cond_3
    const-string v3, ""

    goto :goto_2
.end method
