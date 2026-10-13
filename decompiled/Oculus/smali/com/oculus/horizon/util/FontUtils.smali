.class public Lcom/oculus/horizon/util/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTypefaceFromAttrs(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 21
    new-array v2, v5, [I

    const v0, 0x10103ac

    aput v0, v2, v8

    .line 22
    const/4 v0, 0x0

    .line 24
    new-array v4, v5, [I

    const v1, 0x1010097

    aput v1, v4, v8

    .line 25
    const/4 v1, -0x1

    .line 27
    new-array v5, v5, [I

    const v6, 0x1010034

    aput v6, v5, v8

    .line 29
    invoke-virtual {v3, p1, v5, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 30
    if-eqz v5, :cond_7

    .line 31
    invoke-virtual {v5, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 33
    if-eqz v6, :cond_6

    .line 36
    invoke-virtual {v3, v6, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    :cond_0
    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 47
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 51
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    :goto_1
    invoke-virtual {v3, p1, v2, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 61
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :cond_3
    invoke-virtual {v3, p1, v4, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 68
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    :cond_4
    if-eqz v1, :cond_5

    .line 72
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    :cond_5
    return-void

    :cond_6
    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_0

    :cond_7
    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_1
.end method
