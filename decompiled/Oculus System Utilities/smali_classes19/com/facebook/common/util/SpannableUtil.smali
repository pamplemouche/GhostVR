.class public Lcom/facebook/common/util/SpannableUtil;
.super Ljava/lang/Object;
.source "SpannableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs setSpans(IILandroid/text/SpannableString;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "spannable"    # Landroid/text/SpannableString;
    .param p3, "spans"    # [Ljava/lang/Object;

    .prologue
    .line 47
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p3, v1

    .line 48
    .local v0, "span":Ljava/lang/Object;
    const/16 v3, 0x21

    invoke-virtual {p2, v0, p0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "span":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static varargs setSpans(IILandroid/text/SpannableStringBuilder;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "spannable"    # Landroid/text/SpannableStringBuilder;
    .param p3, "spans"    # [Ljava/lang/Object;

    .prologue
    .line 28
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p3, v1

    .line 29
    .local v0, "span":Ljava/lang/Object;
    const/16 v3, 0x21

    invoke-virtual {p2, v0, p0, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "span":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static varargs setSpans(Landroid/text/SpannableString;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "spannable"    # Landroid/text/SpannableString;
    .param p1, "spans"    # [Ljava/lang/Object;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/common/util/SpannableUtil;->setSpans(IILandroid/text/SpannableString;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static varargs setSpans(Landroid/text/SpannableStringBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "spannable"    # Landroid/text/SpannableStringBuilder;
    .param p1, "spans"    # [Ljava/lang/Object;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/common/util/SpannableUtil;->setSpans(IILandroid/text/SpannableStringBuilder;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method
