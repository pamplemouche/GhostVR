.class public Lif1;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:[I

.field public static final e:[I

.field public static final f:[I


# instance fields
.field public final a:Landroid/view/View;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lif1;->d:[I

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    .line 2
    sput-object v0, Lif1;->e:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lif1;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;IIIIII)V
    .locals 15

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lif1;->a:Landroid/view/View;

    .line 3
    invoke-static/range {p1 .. p1}, LA7;->m(Landroid/view/View;)I

    .line 4
    iget-object v2, v0, Lif1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 5
    iget-object v2, v0, Lif1;->a:Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 7
    iget-object v2, v0, Lif1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 8
    iget-object v2, v0, Lif1;->a:Landroid/view/View;

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v4, p3

    invoke-static {v3, v4}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v5, p5

    invoke-static {v4, v5}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v6, p6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 12
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v6, v0, Lif1;->c:Landroid/graphics/drawable/GradientDrawable;

    move/from16 v7, p4

    int-to-float v7, v7

    .line 13
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-lez v5, :cond_0

    .line 14
    iget-object v6, v0, Lif1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 15
    :cond_0
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v5, -0x1

    .line 17
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 18
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    .line 19
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x2

    new-array v8, v7, [[I

    sget-object v9, Lif1;->e:[I

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    const/4 v11, 0x1

    aput-object v9, v8, v11

    new-array v9, v7, [I

    sget-object v12, Lif1;->f:[I

    .line 20
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    .line 21
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    const/16 v14, 0xff

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 22
    invoke-static {v12, v13}, Ln4;->c(II)I

    move-result v12

    aput v12, v9, v10

    .line 23
    sget-object v10, Lif1;->d:[I

    .line 24
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v12

    invoke-virtual {v3, v10, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 25
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 26
    invoke-static {v3, v7}, Ln4;->c(II)I

    move-result v3

    aput v3, v9, v11

    .line 27
    invoke-direct {v6, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 28
    iget-object v3, v0, Lif1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5, v6, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move/from16 v3, p7

    .line 29
    invoke-static {v5, v3}, Lif1;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, p2

    invoke-static {v1, v2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 32
    iget-object v2, v0, Lif1;->b:Landroid/content/res/ColorStateList;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    iput-object v1, v0, Lif1;->b:Landroid/content/res/ColorStateList;

    .line 34
    iget-object v2, v0, Lif1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method
