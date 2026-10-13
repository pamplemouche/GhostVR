.class public Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ReactViewBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;,
        Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBorderCornerRadii:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBorderRGB:Lcom/facebook/react/uimanager/Spacing;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBorderRadius:F

.field private mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBorderWidth:Lcom/facebook/react/uimanager/Spacing;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCenterDrawPath:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mColor:I

.field private final mContext:Landroid/content/Context;

.field private mInnerBottomLeftCorner:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInnerBottomRightCorner:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInnerClipPathForBorderRadius:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInnerTopLeftCorner:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInnerTopRightCorner:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mNeedUpdatePathForBorderRadius:Z

.field private mOuterClipPathForBorderRadius:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathEffectForBorderStyle:Landroid/graphics/PathEffect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPathForBorder:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPathForBorderRadiusOutline:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTempRectForCenterDrawPath:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 100
    iput-boolean v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 101
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 105
    iput v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    .line 106
    const/16 v0, 0xff

    iput v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    .line 124
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method private static colorFromAlphaAndRGBComponents(FF)I
    .locals 3

    .prologue
    .line 1210
    const v0, 0xffffff

    float-to-int v1, p1

    and-int/2addr v0, v1

    .line 1211
    const/high16 v1, -0x1000000

    float-to-int v2, p0

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v1, v2

    .line 1213
    or-int/2addr v0, v1

    return v0
.end method

.method private drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V
    .locals 2

    .prologue
    .line 1182
    if-nez p2, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 1187
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1191
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1192
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1193
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1194
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p7, p8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p9, p10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1196
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1197
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 24

    .prologue
    .line 1000
    move-object/from16 v0, p0

    iget v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v1, v2}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v1

    .line 1001
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1007
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v4

    .line 1009
    iget v1, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1010
    iget v2, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1011
    iget v3, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1012
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1015
    if-gtz v1, :cond_1

    if-gtz v3, :cond_1

    if-gtz v2, :cond_1

    if-lez v4, :cond_5

    .line 1016
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 1018
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v7

    .line 1019
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    .line 1020
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v11

    .line 1021
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v8

    .line 1023
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v5, v9, :cond_17

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    const/4 v5, 0x1

    .line 1025
    :goto_0
    const/4 v9, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v9

    .line 1026
    const/4 v10, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v10

    .line 1028
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1029
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 1033
    :goto_1
    const/4 v9, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v9

    if-nez v9, :cond_15

    move v9, v11

    .line 1037
    :goto_2
    if-eqz v5, :cond_7

    move v10, v9

    .line 1038
    :goto_3
    if-eqz v5, :cond_8

    :goto_4
    move v5, v10

    .line 1063
    :goto_5
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 1064
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 1068
    invoke-static/range {v1 .. v8}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->fastBorderCompatibleColorOrZero(IIIIIIII)I

    move-result v9

    .line 1077
    if-eqz v9, :cond_e

    .line 1078
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 1080
    iget v11, v15, Landroid/graphics/Rect;->right:I

    .line 1081
    iget v12, v15, Landroid/graphics/Rect;->bottom:I

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1084
    if-lez v1, :cond_2

    .line 1085
    add-int v5, v20, v1

    .line 1086
    move/from16 v0, v20

    int-to-float v6, v0

    move/from16 v0, v21

    int-to-float v7, v0

    int-to-float v8, v5

    sub-int v5, v12, v4

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1088
    :cond_2
    if-lez v2, :cond_3

    .line 1089
    add-int v5, v21, v2

    .line 1090
    add-int v1, v1, v20

    int-to-float v6, v1

    move/from16 v0, v21

    int-to-float v7, v0

    int-to-float v8, v11

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1092
    :cond_3
    if-lez v3, :cond_4

    .line 1093
    sub-int v1, v11, v3

    .line 1094
    int-to-float v6, v1

    add-int v1, v21, v2

    int-to-float v7, v1

    int-to-float v8, v11

    int-to-float v9, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1096
    :cond_4
    if-lez v4, :cond_5

    .line 1097
    sub-int v1, v12, v4

    .line 1098
    move/from16 v0, v20

    int-to-float v2, v0

    int-to-float v7, v1

    sub-int v1, v11, v3

    int-to-float v4, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1169
    :cond_5
    :goto_6
    return-void

    .line 1024
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    move v10, v7

    .line 1037
    goto :goto_3

    :cond_8
    move v7, v9

    .line 1038
    goto :goto_4

    .line 1043
    :cond_9
    if-eqz v5, :cond_a

    move v12, v10

    .line 1044
    :goto_7
    if-eqz v5, :cond_b

    .line 1046
    :goto_8
    const/4 v10, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v10

    .line 1047
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v13

    .line 1048
    if-eqz v5, :cond_c

    move v14, v13

    .line 1050
    :goto_9
    if-eqz v5, :cond_d

    .line 1053
    :goto_a
    if-eqz v14, :cond_14

    move v5, v12

    .line 1057
    :goto_b
    if-eqz v10, :cond_13

    move v7, v9

    .line 1058
    goto/16 :goto_5

    :cond_a
    move v12, v9

    .line 1043
    goto :goto_7

    :cond_b
    move v9, v10

    .line 1044
    goto :goto_8

    :cond_c
    move v14, v10

    .line 1048
    goto :goto_9

    :cond_d
    move v10, v13

    .line 1050
    goto :goto_a

    .line 1108
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1110
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 1111
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v23

    .line 1113
    if-lez v1, :cond_f

    .line 1114
    move/from16 v0, v20

    int-to-float v12, v0

    .line 1115
    move/from16 v0, v21

    int-to-float v13, v0

    .line 1116
    add-int v9, v20, v1

    int-to-float v14, v9

    .line 1117
    add-int v9, v21, v2

    int-to-float v15, v9

    .line 1118
    add-int v9, v20, v1

    int-to-float v0, v9

    move/from16 v16, v0

    .line 1119
    add-int v9, v21, v23

    sub-int/2addr v9, v4

    int-to-float v0, v9

    move/from16 v17, v0

    .line 1120
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1121
    add-int v9, v21, v23

    int-to-float v0, v9

    move/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    .line 1123
    invoke-direct/range {v9 .. v19}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1126
    :cond_f
    if-lez v2, :cond_10

    .line 1127
    move/from16 v0, v20

    int-to-float v12, v0

    .line 1128
    move/from16 v0, v21

    int-to-float v13, v0

    .line 1129
    add-int v5, v20, v1

    int-to-float v14, v5

    .line 1130
    add-int v5, v21, v2

    int-to-float v15, v5

    .line 1131
    add-int v5, v20, v22

    sub-int/2addr v5, v3

    int-to-float v0, v5

    move/from16 v16, v0

    .line 1132
    add-int v5, v21, v2

    int-to-float v0, v5

    move/from16 v17, v0

    .line 1133
    add-int v5, v20, v22

    int-to-float v0, v5

    move/from16 v18, v0

    .line 1134
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v6

    .line 1136
    invoke-direct/range {v9 .. v19}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1139
    :cond_10
    if-lez v3, :cond_11

    .line 1140
    add-int v5, v20, v22

    int-to-float v12, v5

    .line 1141
    move/from16 v0, v21

    int-to-float v13, v0

    .line 1142
    add-int v5, v20, v22

    int-to-float v14, v5

    .line 1143
    add-int v5, v21, v23

    int-to-float v15, v5

    .line 1144
    add-int v5, v20, v22

    sub-int/2addr v5, v3

    int-to-float v0, v5

    move/from16 v16, v0

    .line 1145
    add-int v5, v21, v23

    sub-int/2addr v5, v4

    int-to-float v0, v5

    move/from16 v17, v0

    .line 1146
    add-int v5, v20, v22

    sub-int/2addr v5, v3

    int-to-float v0, v5

    move/from16 v18, v0

    .line 1147
    add-int v2, v2, v21

    int-to-float v0, v2

    move/from16 v19, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v7

    .line 1149
    invoke-direct/range {v9 .. v19}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1152
    :cond_11
    if-lez v4, :cond_12

    .line 1153
    move/from16 v0, v20

    int-to-float v9, v0

    .line 1154
    add-int v2, v21, v23

    int-to-float v10, v2

    .line 1155
    add-int v2, v20, v22

    int-to-float v11, v2

    .line 1156
    add-int v2, v21, v23

    int-to-float v12, v2

    .line 1157
    add-int v2, v20, v22

    sub-int/2addr v2, v3

    int-to-float v13, v2

    .line 1158
    add-int v2, v21, v23

    sub-int/2addr v2, v4

    int-to-float v14, v2

    .line 1159
    add-int v1, v1, v20

    int-to-float v15, v1

    .line 1160
    add-int v1, v21, v23

    sub-int/2addr v1, v4

    int-to-float v0, v1

    move/from16 v16, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1162
    invoke-direct/range {v6 .. v16}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1166
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_6

    :cond_13
    move v7, v11

    goto/16 :goto_5

    :cond_14
    move v5, v7

    goto/16 :goto_b

    :cond_15
    move v9, v10

    goto/16 :goto_2

    :cond_16
    move v7, v9

    goto/16 :goto_1

    :cond_17
    move v5, v7

    move v7, v11

    goto/16 :goto_5
.end method

.method private drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 31

    .prologue
    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePath()V

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    move-object/from16 v0, p0

    iget v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v1, v2}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v1

    .line 334
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 340
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v29

    .line 341
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v2

    .line 342
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v14

    .line 343
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    .line 344
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v30

    .line 346
    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 352
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v1

    .line 353
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    .line 354
    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    if-ne v2, v3, :cond_3

    if-ne v14, v3, :cond_3

    if-ne v5, v3, :cond_3

    move/from16 v0, v30

    if-ne v0, v3, :cond_3

    .line 362
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v3, v4}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 476
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 477
    return-void

    .line 371
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 377
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_10

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    .line 379
    :goto_1
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    .line 380
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    .line 382
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 383
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v6

    if-nez v6, :cond_12

    .line 387
    :goto_2
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v3

    if-nez v3, :cond_11

    move v3, v5

    .line 391
    :goto_3
    if-eqz v1, :cond_8

    move v4, v3

    .line 392
    :goto_4
    if-eqz v1, :cond_9

    :goto_5
    move/from16 v27, v2

    move v3, v4

    .line 417
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    .line 422
    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->y:F

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->x:F

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v10, v4

    .line 432
    invoke-direct/range {v1 .. v11}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 435
    :cond_4
    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v4

    move/from16 v16, v5

    move/from16 v22, v5

    .line 445
    invoke-direct/range {v12 .. v22}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 448
    :cond_5
    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v20, v27

    move/from16 v22, v5

    move/from16 v27, v21

    move/from16 v28, v11

    .line 458
    invoke-direct/range {v18 .. v28}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 461
    :cond_6
    move-object/from16 v0, v29

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->y:F

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->x:F

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v30

    move v5, v11

    move/from16 v10, v21

    .line 471
    invoke-direct/range {v1 .. v11}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto/16 :goto_0

    .line 378
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    move v4, v2

    .line 391
    goto/16 :goto_4

    :cond_9
    move v2, v3

    .line 392
    goto/16 :goto_5

    .line 397
    :cond_a
    if-eqz v1, :cond_c

    move v6, v4

    .line 398
    :goto_7
    if-eqz v1, :cond_d

    .line 400
    :goto_8
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v4

    .line 401
    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v7

    .line 402
    if-eqz v1, :cond_e

    move v8, v7

    .line 404
    :goto_9
    if-eqz v1, :cond_f

    move v1, v4

    .line 407
    :goto_a
    if-eqz v8, :cond_b

    move v2, v6

    .line 411
    :cond_b
    if-eqz v1, :cond_10

    move/from16 v27, v3

    move v3, v2

    .line 412
    goto/16 :goto_6

    :cond_c
    move v6, v3

    .line 397
    goto :goto_7

    :cond_d
    move v3, v4

    .line 398
    goto :goto_8

    :cond_e
    move v8, v4

    .line 402
    goto :goto_9

    :cond_f
    move v1, v7

    .line 404
    goto :goto_a

    :cond_10
    move/from16 v27, v5

    move v3, v2

    goto/16 :goto_6

    :cond_11
    move v3, v4

    goto/16 :goto_3

    :cond_12
    move v2, v3

    goto/16 :goto_2
.end method

.method private static fastBorderCompatibleColorOrZero(IIIIIIII)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 986
    if-lez p0, :cond_1

    move v3, p4

    :goto_0
    if-lez p1, :cond_2

    move v2, p5

    :goto_1
    and-int/2addr v3, v2

    if-lez p2, :cond_3

    move v2, p6

    :goto_2
    and-int/2addr v2, v3

    if-lez p3, :cond_0

    move v0, p7

    :cond_0
    and-int/2addr v0, v2

    .line 991
    if-lez p0, :cond_4

    :goto_3
    if-lez p1, :cond_5

    :goto_4
    or-int v2, p4, p5

    if-lez p2, :cond_6

    :goto_5
    or-int/2addr v2, p6

    if-lez p3, :cond_7

    :goto_6
    or-int/2addr v2, p7

    .line 996
    if-ne v0, v2, :cond_8

    :goto_7
    return v0

    :cond_1
    move v3, v0

    .line 986
    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move p4, v1

    .line 991
    goto :goto_3

    :cond_5
    move p5, v1

    goto :goto_4

    :cond_6
    move p6, v1

    goto :goto_5

    :cond_7
    move p7, v1

    goto :goto_6

    :cond_8
    move v0, v1

    .line 996
    goto :goto_7
.end method

.method private getBorderColor(I)I
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    .line 1224
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    .line 1226
    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->colorFromAlphaAndRGBComponents(FF)I

    move-result v0

    return v0

    .line 1223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1224
    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    goto :goto_1
.end method

.method private static getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V
    .locals 20

    .prologue
    .line 878
    add-double v2, p0, p4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 879
    add-double v4, p2, p6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 889
    sub-double v6, p8, v2

    .line 890
    sub-double v8, p10, v4

    .line 891
    sub-double v10, p12, v2

    .line 892
    sub-double v12, p14, v4

    .line 899
    sub-double v14, p4, p0

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    .line 900
    sub-double v16, p6, p2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    .line 901
    sub-double/2addr v12, v8

    sub-double/2addr v10, v6

    div-double v10, v12, v10

    .line 902
    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    .line 912
    mul-double v8, v16, v16

    mul-double v12, v14, v14

    mul-double/2addr v12, v10

    mul-double/2addr v12, v10

    add-double/2addr v8, v12

    .line 913
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    mul-double/2addr v12, v14

    mul-double/2addr v12, v6

    mul-double/2addr v12, v10

    .line 914
    mul-double/2addr v14, v14

    mul-double v18, v6, v6

    mul-double v16, v16, v16

    sub-double v16, v18, v16

    mul-double v14, v14, v16

    .line 921
    neg-double v14, v14

    div-double/2addr v14, v8

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v8

    div-double v16, v12, v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 922
    neg-double v12, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v16

    div-double v8, v12, v8

    sub-double/2addr v8, v14

    .line 923
    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    .line 930
    add-double/2addr v2, v8

    .line 931
    add-double/2addr v4, v6

    .line 933
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    .line 934
    double-to-float v2, v2

    move-object/from16 v0, p16

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 935
    double-to-float v2, v4

    move-object/from16 v0, p16

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 937
    :cond_0
    return-void
.end method

.method private isBorderColorDefined(I)Z
    .locals 3

    .prologue
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1217
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    .line 1218
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    .line 1219
    :cond_0
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 1217
    goto :goto_0

    .line 1219
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setBorderAlpha(IF)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 242
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 244
    :cond_1
    return-void
.end method

.method private setBorderRGB(IF)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 231
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 233
    :cond_1
    return-void
.end method

.method private updatePath()V
    .locals 25

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    if-nez v2, :cond_0

    .line 866
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 487
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    .line 490
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_2

    .line 491
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    .line 494
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    if-nez v2, :cond_3

    .line 495
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    .line 498
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    if-nez v2, :cond_4

    .line 499
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    .line 502
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_5

    .line 503
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 506
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_6

    .line 507
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 510
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    if-nez v2, :cond_7

    .line 511
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    .line 514
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    if-nez v2, :cond_8

    .line 515
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    .line 518
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v2

    .line 529
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 533
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v12

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderRadius()F

    move-result v2

    .line 541
    sget-object v3, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v3

    .line 542
    sget-object v4, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v5

    .line 543
    sget-object v4, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 544
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v7

    .line 545
    sget-object v4, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 546
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v11

    .line 548
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_24

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    const/4 v2, 0x1

    .line 550
    :goto_1
    sget-object v4, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v4

    .line 551
    sget-object v6, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v6

    .line 552
    sget-object v8, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v8

    .line 553
    sget-object v9, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v9

    .line 555
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v13}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 556
    invoke-static {v4}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 560
    :goto_2
    invoke-static {v6}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v4

    if-eqz v4, :cond_27

    move v4, v5

    .line 564
    :goto_3
    invoke-static {v8}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v5

    if-eqz v5, :cond_26

    move v5, v7

    .line 568
    :goto_4
    invoke-static {v9}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v6

    if-eqz v6, :cond_25

    move v6, v11

    .line 572
    :goto_5
    if-eqz v2, :cond_10

    move v8, v4

    .line 573
    :goto_6
    if-eqz v2, :cond_11

    .line 574
    :goto_7
    if-eqz v2, :cond_12

    move v7, v6

    .line 575
    :goto_8
    if-eqz v2, :cond_13

    :goto_9
    move v2, v3

    move v3, v8

    .line 605
    :goto_a
    iget v4, v12, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 606
    iget v4, v12, Landroid/graphics/RectF;->top:F

    sub-float v4, v3, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 607
    iget v4, v12, Landroid/graphics/RectF;->right:F

    sub-float v4, v2, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 608
    iget v4, v12, Landroid/graphics/RectF;->top:F

    sub-float v4, v2, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 609
    iget v4, v12, Landroid/graphics/RectF;->right:F

    sub-float v4, v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 610
    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 611
    iget v4, v12, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 612
    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v24

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v11, 0x1

    aput v9, v10, v11

    const/4 v11, 0x2

    aput v19, v10, v11

    const/4 v11, 0x3

    aput v20, v10, v11

    const/4 v11, 0x4

    aput v21, v10, v11

    const/4 v11, 0x5

    aput v22, v10, v11

    const/4 v11, 0x6

    aput v23, v10, v11

    const/4 v11, 0x7

    aput v24, v10, v11

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v11, 0x1

    aput v3, v10, v11

    const/4 v11, 0x2

    aput v2, v10, v11

    const/4 v11, 0x3

    aput v2, v10, v11

    const/4 v11, 0x4

    aput v5, v10, v11

    const/4 v11, 0x5

    aput v5, v10, v11

    const/4 v11, 0x6

    aput v7, v10, v11

    const/4 v11, 0x7

    aput v7, v10, v11

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 642
    const/4 v4, 0x0

    .line 644
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v6, :cond_a

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 648
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    const/16 v11, 0x8

    new-array v11, v11, [F

    const/4 v12, 0x0

    add-float v13, v3, v4

    aput v13, v11, v12

    const/4 v12, 0x1

    add-float v13, v3, v4

    aput v13, v11, v12

    const/4 v12, 0x2

    add-float v13, v2, v4

    aput v13, v11, v12

    const/4 v12, 0x3

    add-float v13, v2, v4

    aput v13, v11, v12

    const/4 v12, 0x4

    add-float v13, v5, v4

    aput v13, v11, v12

    const/4 v12, 0x5

    add-float v13, v5, v4

    aput v13, v11, v12

    const/4 v12, 0x6

    add-float v13, v7, v4

    aput v13, v11, v12

    const/4 v12, 0x7

    add-float v13, v7, v4

    aput v13, v11, v12

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v10, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    const/16 v6, 0x8

    new-array v12, v6, [F

    const/4 v13, 0x0

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1c

    move v6, v4

    :goto_b
    add-float/2addr v6, v8

    aput v6, v12, v13

    const/4 v6, 0x1

    const/4 v13, 0x0

    cmpl-float v3, v3, v13

    if-lez v3, :cond_1d

    move v3, v4

    :goto_c
    add-float/2addr v3, v9

    aput v3, v12, v6

    const/4 v6, 0x2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1e

    move v3, v4

    :goto_d
    add-float v3, v3, v19

    aput v3, v12, v6

    const/4 v3, 0x3

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1f

    move v2, v4

    :goto_e
    add-float v2, v2, v20

    aput v2, v12, v3

    const/4 v3, 0x4

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_20

    move v2, v4

    :goto_f
    add-float v2, v2, v21

    aput v2, v12, v3

    const/4 v3, 0x5

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_21

    move v2, v4

    :goto_10
    add-float v2, v2, v22

    aput v2, v12, v3

    const/4 v3, 0x6

    const/4 v2, 0x0

    cmpl-float v2, v7, v2

    if-lez v2, :cond_22

    move v2, v4

    :goto_11
    add-float v2, v2, v23

    aput v2, v12, v3

    const/4 v2, 0x7

    const/4 v3, 0x0

    cmpl-float v3, v7, v3

    if-lez v3, :cond_23

    :goto_12
    add-float v3, v24, v4

    aput v3, v12, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v11, v12, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_b

    .line 764
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    .line 768
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    invoke-static/range {v2 .. v18}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_c

    .line 791
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    .line 794
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v24

    sub-float/2addr v4, v5

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v23

    add-float/2addr v6, v7

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    invoke-static/range {v2 .. v18}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_d

    .line 817
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    .line 820
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float/2addr v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v9, v9, v20

    add-float/2addr v8, v9

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    invoke-static/range {v2 .. v18}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_e

    .line 843
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    .line 846
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v21

    sub-float/2addr v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v22

    sub-float/2addr v4, v5

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    invoke-static/range {v2 .. v18}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    goto/16 :goto_0

    .line 549
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_10
    move v8, v3

    .line 572
    goto/16 :goto_6

    :cond_11
    move v3, v4

    .line 573
    goto/16 :goto_7

    :cond_12
    move v7, v5

    .line 574
    goto/16 :goto_8

    :cond_13
    move v5, v6

    .line 575
    goto/16 :goto_9

    .line 582
    :cond_14
    if-eqz v2, :cond_18

    move v10, v6

    .line 583
    :goto_13
    if-eqz v2, :cond_19

    .line 584
    :goto_14
    if-eqz v2, :cond_1a

    move v6, v9

    .line 585
    :goto_15
    if-eqz v2, :cond_1b

    .line 587
    :goto_16
    invoke-static {v10}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_15

    move v3, v10

    .line 591
    :cond_15
    invoke-static {v4}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_16

    move v5, v4

    .line 595
    :cond_16
    invoke-static {v6}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_17

    move v7, v6

    .line 599
    :cond_17
    invoke-static {v8}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_24

    move v2, v5

    move v5, v8

    .line 600
    goto/16 :goto_a

    :cond_18
    move v10, v4

    .line 582
    goto :goto_13

    :cond_19
    move v4, v6

    .line 583
    goto :goto_14

    :cond_1a
    move v6, v8

    .line 584
    goto :goto_15

    :cond_1b
    move v8, v9

    .line 585
    goto :goto_16

    .line 662
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_b

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_24
    move v2, v5

    move v5, v11

    goto/16 :goto_a

    :cond_25
    move v6, v9

    goto/16 :goto_5

    :cond_26
    move v5, v8

    goto/16 :goto_4

    :cond_27
    move v4, v6

    goto/16 :goto_3

    :cond_28
    move v3, v4

    goto/16 :goto_2
.end method

.method private updatePathEffect()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    .line 956
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->getPathEffect(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;F)Landroid/graphics/PathEffect;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathEffectForBorderStyle:Landroid/graphics/PathEffect;

    .line 958
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathEffectForBorderStyle:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 959
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePathEffect()V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    return v0
.end method

.method public getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F
    .locals 1

    .prologue
    .line 282
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v0

    return v0
.end method

.method public getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return p1

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    invoke-virtual {p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 293
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_0

    move p1, v0

    .line 297
    goto :goto_0
.end method

.method public getBorderWidthOrDefaultTo(FI)F
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return p1

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    .line 946
    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_0

    move p1, v0

    .line 950
    goto :goto_0
.end method

.method public getColor()I
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 326
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    return v0
.end method

.method public getDirectionAwareBorderInsets()Landroid/graphics/RectF;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1230
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v3

    .line 1231
    invoke-virtual {p0, v3, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v6

    .line 1232
    const/4 v2, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v7

    .line 1233
    invoke-virtual {p0, v3, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v2

    .line 1234
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v5

    .line 1236
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_7

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v3, :cond_7

    .line 1237
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getResolvedLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 1238
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v1

    .line 1239
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v3

    .line 1241
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v4

    iget-object v8, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1242
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1246
    :cond_0
    invoke-static {v3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v5

    .line 1250
    :goto_1
    if-eqz v0, :cond_3

    move v3, v2

    .line 1251
    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    move v2, v3

    .line 1269
    :cond_1
    :goto_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v6, v1, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_2
    move v0, v1

    .line 1237
    goto :goto_0

    :cond_3
    move v3, v1

    .line 1250
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1251
    goto :goto_3

    .line 1256
    :cond_5
    if-eqz v0, :cond_8

    move v4, v3

    .line 1257
    :goto_5
    if-eqz v0, :cond_9

    .line 1259
    :goto_6
    invoke-static {v4}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_6

    move v2, v4

    .line 1263
    :cond_6
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_7
    move v1, v5

    goto :goto_4

    :cond_8
    move v4, v1

    .line 1256
    goto :goto_5

    :cond_9
    move v1, v3

    .line 1257
    goto :goto_6

    :cond_a
    move v2, v3

    goto :goto_1
.end method

.method public getFullBorderRadius()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    goto :goto_0
.end method

.method public getFullBorderWidth()F
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 963
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 964
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    iget v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/ColorUtil;->multiplyColorAlpha(II)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/views/view/ColorUtil;->getOpacityFromColor(I)I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 186
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 197
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-eqz v0, :cond_3

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->updatePath()V

    .line 193
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getResolvedLayoutDirection()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    return v0
.end method

.method public hasRoundedBorders()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 138
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-eqz v2, :cond_3

    .line 143
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget v5, v3, v2

    .line 144
    invoke-static {v5}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v6

    if-nez v6, :cond_2

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_0

    .line 143
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 157
    return-void
.end method

.method public onResolvedLayoutDirectionChanged(I)Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 162
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mAlpha:I

    .line 163
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 165
    :cond_0
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderRGB(IF)V

    .line 221
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderAlpha(IF)V

    .line 222
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    if-eq v1, v0, :cond_0

    .line 250
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 252
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 254
    :cond_0
    return-void

    .line 247
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->valueOf(Ljava/lang/String;)Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    move-result-object v0

    goto :goto_0
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/Spacing;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 217
    :cond_1
    return-void

    .line 213
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 301
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mColor:I

    .line 302
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 303
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderRadius:F

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 260
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 262
    :cond_0
    return-void
.end method

.method public setRadius(FI)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    if-nez v0, :cond_0

    .line 266
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    .line 267
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    aget v0, v0, p2

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mBorderCornerRadii:[F

    aput p1, v0, p2

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 273
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->invalidateSelf()V

    .line 275
    :cond_1
    return-void
.end method

.method public setResolvedLayoutDirection(I)Z
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 313
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->mLayoutDirection:I

    .line 314
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->onResolvedLayoutDirectionChanged(I)Z

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
