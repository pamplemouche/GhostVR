.class public Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 268
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method private static getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XML attribute not specified!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :pswitch_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    .line 283
    :pswitch_1
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 285
    :pswitch_2
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 287
    :pswitch_3
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 289
    :pswitch_4
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 291
    :pswitch_5
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 293
    :pswitch_6
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 295
    :pswitch_7
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 297
    :pswitch_8
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 299
    :pswitch_9
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_BOTTOM_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "GenericDraweeHierarchyBuilder#inflateBuilder"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 83
    invoke-static {v1, p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->updateBuilder(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 87
    :cond_1
    return-object v0
.end method

.method public static updateBuilder(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
    .locals 19
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v10, 0x0

    .line 108
    const/4 v5, 0x1

    .line 109
    const/4 v4, 0x1

    .line 110
    const/4 v3, 0x1

    .line 111
    const/4 v2, 0x1

    .line 112
    const/4 v12, 0x1

    .line 113
    const/4 v9, 0x1

    .line 114
    const/4 v8, 0x1

    .line 115
    const/4 v7, 0x1

    .line 117
    if-eqz p2, :cond_22

    .line 118
    sget-object v6, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 122
    :try_start_0
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getIndexCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v14

    .line 123
    const/4 v6, 0x0

    move/from16 v18, v6

    move v6, v2

    move v2, v7

    move v7, v3

    move v3, v8

    move v8, v4

    move v4, v9

    move v9, v5

    move v5, v12

    move/from16 v12, v18

    :goto_0
    if-ge v12, v14, :cond_21

    .line 124
    :try_start_1
    invoke-virtual {v13, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    .line 126
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_actualImageScaleType:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 127
    invoke-static {v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 129
    :cond_1
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_placeholderImage:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 130
    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v10

    move-object/from16 v18, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object/from16 v2, v18

    :goto_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x11

    if-lt v11, v12, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 221
    invoke-virtual {v11}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2e

    .line 222
    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    .line 223
    :cond_2
    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 224
    :cond_3
    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 225
    :cond_4
    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    .line 230
    :cond_5
    :goto_3
    throw v2

    .line 132
    :cond_6
    :try_start_2
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_pressedStateOverlayImage:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 133
    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPressedStateOverlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto :goto_1

    .line 135
    :cond_7
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarImage:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 136
    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setProgressBarImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto :goto_1

    .line 139
    :cond_8
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_fadeDuration:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 140
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFadeDuration(I)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 142
    :cond_9
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_viewAspectRatio:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 143
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setDesiredAspectRatio(F)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 145
    :cond_a
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_placeholderImageScaleType:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 146
    invoke-static {v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 148
    :cond_b
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_retryImage:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 149
    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRetryImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 151
    :cond_c
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_retryImageScaleType:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 152
    invoke-static {v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRetryImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 154
    :cond_d
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_failureImage:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 155
    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFailureImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 157
    :cond_e
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_failureImageScaleType:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 158
    invoke-static {v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFailureImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 160
    :cond_f
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarImageScaleType:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 161
    invoke-static {v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setProgressBarImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 163
    :cond_10
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarAutoRotateInterval:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 165
    invoke-virtual {v13, v15, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    goto/16 :goto_1

    .line 167
    :cond_11
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_backgroundImage:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 168
    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 170
    :cond_12
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_overlayImage:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 171
    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setOverlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    goto/16 :goto_1

    .line 173
    :cond_13
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundAsCircle:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 174
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/RoundingParams;->setRoundAsCircle(Z)Lcom/facebook/drawee/generic/RoundingParams;

    goto/16 :goto_1

    .line 176
    :cond_14
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundedCornerRadius:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 177
    invoke-virtual {v13, v15, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    goto/16 :goto_1

    .line 179
    :cond_15
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopLeft:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 180
    invoke-virtual {v13, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    goto/16 :goto_1

    .line 182
    :cond_16
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopRight:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 183
    invoke-virtual {v13, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    goto/16 :goto_1

    .line 185
    :cond_17
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomLeft:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 186
    invoke-virtual {v13, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    goto/16 :goto_1

    .line 188
    :cond_18
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomRight:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 189
    invoke-virtual {v13, v15, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_1

    .line 191
    :cond_19
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopStart:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a

    .line 192
    invoke-virtual {v13, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto/16 :goto_1

    .line 194
    :cond_1a
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopEnd:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 195
    invoke-virtual {v13, v15, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    goto/16 :goto_1

    .line 197
    :cond_1b
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomStart:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    .line 198
    invoke-virtual {v13, v15, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto/16 :goto_1

    .line 200
    :cond_1c
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomEnd:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    .line 201
    invoke-virtual {v13, v15, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    goto/16 :goto_1

    .line 203
    :cond_1d
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundWithOverlayColor:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e

    .line 204
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/RoundingParams;->setOverlayColor(I)Lcom/facebook/drawee/generic/RoundingParams;

    goto/16 :goto_1

    .line 206
    :cond_1e
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderWidth:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    .line 207
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/RoundingParams;->setBorderWidth(F)Lcom/facebook/drawee/generic/RoundingParams;

    goto/16 :goto_1

    .line 209
    :cond_1f
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderColor:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_20

    .line 210
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/RoundingParams;->setBorderColor(I)Lcom/facebook/drawee/generic/RoundingParams;

    goto/16 :goto_1

    .line 212
    :cond_20
    sget v16, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderPadding:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 213
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/facebook/drawee/generic/RoundingParams;->setPadding(F)Lcom/facebook/drawee/generic/RoundingParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 218
    :cond_21
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x11

    if-lt v12, v13, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 221
    invoke-virtual {v12}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_29

    .line 222
    if-eqz v9, :cond_25

    if-eqz v4, :cond_25

    const/4 v9, 0x1

    .line 223
    :goto_4
    if-eqz v8, :cond_26

    if-eqz v5, :cond_26

    const/4 v4, 0x1

    .line 224
    :goto_5
    if-eqz v6, :cond_27

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    .line 225
    :goto_6
    if-eqz v7, :cond_28

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    :goto_7
    move v5, v9

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    .line 237
    :cond_22
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getProgressBarImage()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_23

    if-lez v11, :cond_23

    .line 238
    new-instance v6, Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getProgressBarImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v7, v11}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setProgressBarImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 243
    :cond_23
    if-lez v10, :cond_24

    .line 244
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v7

    if-eqz v5, :cond_32

    int-to-float v5, v10

    move v6, v5

    :goto_9
    if-eqz v4, :cond_33

    int-to-float v4, v10

    move v5, v4

    :goto_a
    if-eqz v2, :cond_34

    int-to-float v2, v10

    move v4, v2

    :goto_b
    if-eqz v3, :cond_35

    int-to-float v2, v10

    :goto_c
    invoke-virtual {v7, v6, v5, v4, v2}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 251
    :cond_24
    return-object p0

    .line 222
    :cond_25
    const/4 v9, 0x0

    goto :goto_4

    .line 223
    :cond_26
    const/4 v4, 0x0

    goto :goto_5

    .line 224
    :cond_27
    const/4 v3, 0x0

    goto :goto_6

    .line 225
    :cond_28
    const/4 v2, 0x0

    goto :goto_7

    .line 227
    :cond_29
    if-eqz v9, :cond_2a

    if-eqz v5, :cond_2a

    const/4 v9, 0x1

    .line 228
    :goto_d
    if-eqz v8, :cond_2b

    if-eqz v4, :cond_2b

    const/4 v5, 0x1

    .line 229
    :goto_e
    if-eqz v6, :cond_2c

    if-eqz v2, :cond_2c

    const/4 v4, 0x1

    .line 230
    :goto_f
    if-eqz v7, :cond_2d

    if-eqz v3, :cond_2d

    const/4 v2, 0x1

    :goto_10
    move v3, v2

    move v2, v4

    move v4, v5

    move v5, v9

    .line 233
    goto :goto_8

    .line 227
    :cond_2a
    const/4 v9, 0x0

    goto :goto_d

    .line 228
    :cond_2b
    const/4 v5, 0x0

    goto :goto_e

    .line 229
    :cond_2c
    const/4 v4, 0x0

    goto :goto_f

    .line 230
    :cond_2d
    const/4 v2, 0x0

    goto :goto_10

    .line 227
    :cond_2e
    if-eqz v10, :cond_2f

    if-eqz v6, :cond_2f

    .line 228
    :cond_2f
    if-eqz v9, :cond_30

    if-eqz v5, :cond_30

    .line 229
    :cond_30
    if-eqz v7, :cond_31

    if-eqz v3, :cond_31

    .line 230
    :cond_31
    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    goto/16 :goto_3

    .line 244
    :cond_32
    const/4 v5, 0x0

    move v6, v5

    goto :goto_9

    :cond_33
    const/4 v4, 0x0

    move v5, v4

    goto :goto_a

    :cond_34
    const/4 v2, 0x0

    move v4, v2

    goto :goto_b

    :cond_35
    const/4 v2, 0x0

    goto :goto_c

    .line 218
    :catchall_1
    move-exception v6

    move v10, v5

    move v5, v9

    move v9, v4

    move v4, v8

    move v8, v3

    move v3, v7

    move v7, v2

    move-object v2, v6

    move v6, v12

    goto/16 :goto_2
.end method
