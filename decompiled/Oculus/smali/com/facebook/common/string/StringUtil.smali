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

.method public static varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs isAnyEmptyOrNull([Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    array-length v2, p0

    move v1, v0

    .line 44
    :goto_0
    if-ge v1, v2, :cond_0

    .line 45
    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const/4 v0, 0x1

    .line 49
    :cond_0
    return v0

    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
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

.method public static varargs join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V
    .locals 6
    .param p2    # Lcom/facebook/common/string/StringUtil$StringProcessor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 253
    const/4 v1, 0x1

    .line 254
    array-length v4, p3

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, p3, v3

    .line 255
    if-eqz v1, :cond_0

    move v1, v2

    .line 260
    :goto_1
    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_1

    .line 261
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V

    .line 254
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 262
    :cond_1
    instance-of v5, v0, [Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 263
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/common/string/StringUtil$StringProcessor;[Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    :cond_2
    if-eqz p2, :cond_3

    .line 265
    invoke-interface {p2, v0}, Lcom/facebook/common/string/StringUtil$StringProcessor;->process(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 267
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 270
    :cond_4
    return-void
.end method
