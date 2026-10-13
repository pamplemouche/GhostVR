.class public Lcom/facebook/common/util/HashCodeUtil;
.super Ljava/lang/Object;
.source "HashCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode(II)I
    .locals 1

    .prologue
    .line 104
    add-int/lit8 v0, p0, 0x1f

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    .line 106
    return v0
.end method

.method public static hashCode(IIIIII)I
    .locals 1

    .prologue
    .line 152
    add-int/lit8 v0, p0, 0x1f

    .line 153
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p3

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p4

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p5

    .line 158
    return v0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p0, :cond_0

    move v1, v0

    .line 39
    :goto_0
    if-nez p1, :cond_1

    .line 38
    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(II)I

    move-result v0

    return v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 86
    if-nez p0, :cond_0

    move v0, v5

    .line 87
    :goto_0
    if-nez p1, :cond_1

    move v1, v5

    .line 88
    :goto_1
    if-nez p2, :cond_2

    move v2, v5

    .line 89
    :goto_2
    if-nez p3, :cond_3

    move v3, v5

    .line 90
    :goto_3
    if-nez p4, :cond_4

    move v4, v5

    .line 91
    :goto_4
    if-nez p5, :cond_5

    .line 86
    :goto_5
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(IIIIII)I

    move-result v0

    return v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3

    .line 91
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_4

    .line 92
    :cond_5
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_5
.end method
