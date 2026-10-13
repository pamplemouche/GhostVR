.class public Lcom/oculus/horizon/widget/ProgressButton;
.super Landroid/widget/FrameLayout;
.source "ProgressButton.java"


# instance fields
.field private mLabel:Landroid/widget/TextView;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/ProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/ProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    .prologue
    .line 36
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 39
    sget v4, Lcom/oculus/horizon/R$layout;->widget_progress_button:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v3, Lcom/oculus/horizon/R$id;->button_label:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    .line 42
    sget v3, Lcom/oculus/horizon/R$id;->loading_indicator:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/ProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 43
    if-nez p2, :cond_0

    .line 172
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v13, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v8, -0x1

    .line 53
    const/4 v7, -0x1

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    const/16 v4, 0xf

    .line 61
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v14, 0x0

    const v15, 0x1010034

    aput v15, v5, v14

    .line 62
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 63
    if-eqz v5, :cond_8

    .line 64
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 65
    if-eqz v14, :cond_7

    .line 67
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const v17, 0x1010098

    aput v17, v15, v16

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 69
    if-eqz v15, :cond_1

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 71
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    :cond_1
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const v17, 0x1010095

    aput v17, v15, v16

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 77
    if-eqz v14, :cond_2

    .line 78
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 79
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    move/from16 v18, v4

    move-object v4, v3

    move/from16 v3, v18

    .line 83
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    :goto_2
    const/16 v5, 0xa

    new-array v15, v5, [I

    fill-array-data v15, :array_0

    .line 99
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 100
    if-eqz v16, :cond_6

    .line 101
    const/4 v5, 0x0

    move/from16 v18, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v18

    :goto_3
    array-length v14, v15

    if-ge v13, v14, :cond_4

    .line 102
    aget v14, v15, v13

    sparse-switch v14, :sswitch_data_0

    .line 101
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 104
    :sswitch_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_4

    .line 108
    :sswitch_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 109
    if-eqz v14, :cond_3

    move-object v4, v14

    goto :goto_4

    .line 113
    :sswitch_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    goto :goto_4

    .line 117
    :sswitch_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 121
    :sswitch_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    goto :goto_4

    .line 125
    :sswitch_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_4

    .line 129
    :sswitch_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_4

    .line 133
    :sswitch_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_4

    .line 137
    :sswitch_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_4

    .line 141
    :sswitch_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    goto :goto_4

    .line 146
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1, v14}, Lcom/oculus/horizon/util/FontUtils;->setTypefaceFromAttrs(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 150
    packed-switch v7, :pswitch_data_0

    .line 165
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v11, v8, v9, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    .line 152
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_6

    .line 155
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_6

    .line 158
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_6

    .line 161
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_6

    .line 167
    :cond_5
    const/high16 v4, -0x1000000

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_7

    :cond_6
    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    goto :goto_5

    :cond_7
    move/from16 v18, v4

    move-object v4, v3

    move/from16 v3, v18

    goto/16 :goto_1

    :cond_8
    move/from16 v18, v4

    move-object v4, v3

    move/from16 v3, v18

    goto/16 :goto_2

    .line 87
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
        0x10100ab
        0x101014f
        0x1010153
        0x101016d
        0x101016e
        0x101016f
        0x1010170
        0x1010171
    .end array-data

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x1010095 -> :sswitch_0
        0x1010098 -> :sswitch_1
        0x10100ab -> :sswitch_2
        0x101014f -> :sswitch_3
        0x1010153 -> :sswitch_4
        0x101016d -> :sswitch_5
        0x101016e -> :sswitch_6
        0x101016f -> :sswitch_7
        0x1010170 -> :sswitch_8
        0x1010171 -> :sswitch_9
    .end sparse-switch

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/widget/ProgressButton;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoading(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/oculus/horizon/widget/ProgressButton;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    :goto_0
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 188
    return-void

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/oculus/horizon/widget/ProgressButton;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/widget/ProgressButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method
