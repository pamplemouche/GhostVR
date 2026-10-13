.class public Lcom/facebook/common/util/CharacterUtil;
.super Ljava/lang/Object;
.source "CharacterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCombiningCodePoint(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 16
    const/16 v0, 0x20d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x20ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPunctuation(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 26
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
