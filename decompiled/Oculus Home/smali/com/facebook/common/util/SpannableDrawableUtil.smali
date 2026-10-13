.class public Lcom/facebook/common/util/SpannableDrawableUtil;
.super Ljava/lang/Object;
.source "SpannableDrawableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendDrawable(Landroid/text/SpannableStringBuilder;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "spannableBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/facebook/common/util/SpannableDrawableUtil;->appendDrawable(Landroid/text/SpannableStringBuilder;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableStringBuilder;

    .line 24
    return-object p0
.end method

.method public static appendDrawable(Landroid/text/SpannableStringBuilder;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "spannableBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "verticalAlignment"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/common/util/SpannableDrawableUtil;->insertDrawable(Landroid/text/SpannableStringBuilder;ILandroid/graphics/drawable/Drawable;I)V

    .line 38
    return-object p0
.end method

.method public static insertDrawable(Landroid/text/SpannableStringBuilder;ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "spannableBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "position"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/util/SpannableDrawableUtil;->insertDrawable(Landroid/text/SpannableStringBuilder;ILandroid/graphics/drawable/Drawable;I)V

    .line 51
    return-void
.end method

.method public static insertDrawable(Landroid/text/SpannableStringBuilder;ILandroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p0, "spannableBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "position"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "verticalAlignment"    # I

    .prologue
    const/4 v2, 0x0

    .line 67
    if-nez p2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "."

    .line 72
    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\u00a0"

    .line 73
    invoke-virtual {v0, p1, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 75
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p2, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p1, 0x2

    const/16 v3, 0x11

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
