.class public Lcom/oculus/horizon/util/TextSpanUtils;
.super Ljava/lang/Object;
.source "TextSpanUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBadgedText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 11

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 188
    sget v0, Lcom/oculus/horizon/R$color;->oculus_red:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 189
    sget v0, Lcom/oculus/horizon/R$color;->oculus_black_1:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 192
    sget v0, Lcom/oculus/horizon/R$dimen;->three_column_library_item_title_badge_corners:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 193
    sget v0, Lcom/oculus/horizon/R$dimen;->three_column_library_item_title_badge_padding:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 194
    sget v0, Lcom/oculus/horizon/R$dimen;->three_column_library_item_title_badge_baseline_adjustement:I

    .line 195
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 198
    new-instance v0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/util/RoundedBackgroundSpan;-><init>(FIIFFI)V

    .line 201
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    sget v2, Lcom/oculus/horizon/R$dimen;->badge_view_text_size:I

    .line 202
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 204
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 205
    invoke-virtual {v7, v1, v9, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 206
    invoke-virtual {v7, v0, v9, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 207
    return-object v7
.end method

.method public static varargs highlightText(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0x12

    .line 49
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    if-eqz p3, :cond_0

    array-length v1, p3

    if-gtz v1, :cond_1

    .line 82
    :cond_0
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 55
    array-length v4, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, p3, v2

    .line 56
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 63
    :goto_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 64
    new-instance v7, Landroid/text/style/StyleSpan;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 67
    invoke-static {v5}, Lcom/oculus/horizon/util/TextSpanUtils;->unicodeLength(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v1

    .line 64
    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 70
    if-eqz p1, :cond_4

    .line 71
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 74
    invoke-static {v5}, Lcom/oculus/horizon/util/TextSpanUtils;->unicodeLength(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v1

    .line 71
    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 78
    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public static highlightText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, p1, v1}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 129
    invoke-static {p2, p3}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 146
    new-instance v3, Lcom/oculus/horizon/util/TextSpanUtils$2;

    invoke-direct {v3, v0, p0}, Lcom/oculus/horizon/util/TextSpanUtils$2;-><init>(Landroidx/core/util/Pair;Landroid/content/Context;)V

    .line 156
    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0, v3}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {p1, v1}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static makeLink(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/View$OnClickListener;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1, p2}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static makeLink(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;>;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 89
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 90
    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v2, v0

    .line 95
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 96
    new-instance v4, Lcom/oculus/horizon/util/TextSpanUtils$1;

    invoke-direct {v4, v0}, Lcom/oculus/horizon/util/TextSpanUtils$1;-><init>(Landroidx/core/util/Pair;)V

    .line 110
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 111
    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-static {v0}, Lcom/oculus/horizon/util/TextSpanUtils;->unicodeLength(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v5, 0x21

    .line 111
    invoke-virtual {v2, v4, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 92
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, v0

    goto :goto_0

    .line 117
    :cond_1
    return-object v2
.end method

.method public static makeLinkWithURLSpan(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Landroid/text/SpannableString;

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, p2}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 138
    return-object v0
.end method

.method public static varargs makeList(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 163
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 164
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 165
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 166
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v6, Landroid/text/style/BulletSpan;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-static {v4}, Lcom/oculus/horizon/util/TextSpanUtils;->unicodeLength(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v6, v1, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 168
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-object v2
.end method

.method public static unicodeLength(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    return v0
.end method

.method public static useNonbreakingSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    const-string v0, "\\s+"

    const-string/jumbo v1, "\u00a0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
