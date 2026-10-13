.class public LY0;
.super LO0;
.source "PG"


# static fields
.field public static final F:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public A:Z

.field public B:Z

.field public final C:[F

.field public final D:Landroid/graphics/Matrix;

.field public final E:Landroid/graphics/Rect;

.field public x:LW0;

.field public y:Landroid/graphics/PorterDuffColorFilter;

.field public z:Landroid/graphics/ColorFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, LY0;->F:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LO0;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY0;->B:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, LY0;->C:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LY0;->D:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LY0;->E:Landroid/graphics/Rect;

    .line 6
    new-instance v0, LW0;

    invoke-direct {v0}, LW0;-><init>()V

    iput-object v0, p0, LY0;->x:LW0;

    return-void
.end method

.method public constructor <init>(LW0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, LO0;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, LY0;->B:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, LY0;->C:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LY0;->D:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LY0;->E:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, LY0;->x:LW0;

    .line 13
    iget-object v0, p1, LW0;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, LY0;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LY0;->y:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static a(IF)I
    .locals 2

    .line 16
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4
    new-instance v0, LY0;

    invoke-direct {v0}, LY0;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 6
    iput-object p0, v0, LO0;->w:Landroid/graphics/drawable/Drawable;

    .line 7
    new-instance p0, LX0;

    iget-object p1, v0, LO0;->w:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, LX0;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 11
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 12
    invoke-static {p0, p1, v2, p2}, LY0;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)LY0;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 14
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 15
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)LY0;
    .locals 1

    .line 1
    new-instance v0, LY0;

    invoke-direct {v0}, LY0;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, LY0;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, LO0;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, LY0;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, LY0;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    iget-object v0, p0, LY0;->z:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, LY0;->y:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    :cond_2
    iget-object v1, p0, LY0;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, LY0;->D:Landroid/graphics/Matrix;

    iget-object v2, p0, LY0;->C:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    iget-object v1, p0, LY0;->C:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 9
    iget-object v3, p0, LY0;->C:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 10
    iget-object v4, p0, LY0;->C:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11
    iget-object v6, p0, LY0;->C:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    cmpl-float v4, v6, v8

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    :cond_4
    iget-object v4, p0, LY0;->E:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 13
    iget-object v4, p0, LY0;->E:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_14

    if-gtz v3, :cond_5

    goto/16 :goto_7

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 17
    iget-object v6, p0, LY0;->E:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-virtual {p0}, LY0;->isAutoMirrored()Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_9

    .line 19
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v6, v10, :cond_6

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v6

    goto :goto_1

    .line 21
    :cond_6
    sget-boolean v6, Lx4;->d:Z

    const-string v10, "DrawableCompat"

    if-nez v6, :cond_7

    .line 22
    :try_start_0
    const-class v6, Landroid/graphics/drawable/Drawable;

    const-string v11, "getLayoutDirection"

    new-array v12, v2, [Ljava/lang/Class;

    .line 23
    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lx4;->c:Ljava/lang/reflect/Method;

    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v11, "Failed to retrieve getLayoutDirection() method"

    .line 25
    invoke-static {v10, v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_0
    sput-boolean v5, Lx4;->d:Z

    .line 27
    :cond_7
    sget-object v6, Lx4;->c:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_8

    :try_start_1
    new-array v11, v2, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v6, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v11, "Failed to invoke getLayoutDirection() via reflection"

    .line 29
    invoke-static {v10, v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    sput-object v9, Lx4;->c:Ljava/lang/reflect/Method;

    :cond_8
    const/4 v6, 0x0

    :goto_1
    if-ne v6, v5, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_a

    .line 31
    iget-object v6, p0, LY0;->E:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 32
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    :cond_a
    iget-object v6, p0, LY0;->E:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 34
    iget-object v6, p0, LY0;->x:LW0;

    .line 35
    iget-object v7, v6, LW0;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_c

    .line 36
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_b

    iget-object v7, v6, LW0;->f:Landroid/graphics/Bitmap;

    .line 37
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_b

    const/4 v7, 0x1

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_d

    .line 38
    :cond_c
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, LW0;->f:Landroid/graphics/Bitmap;

    .line 39
    iput-boolean v5, v6, LW0;->k:Z

    .line 40
    :cond_d
    iget-boolean v6, p0, LY0;->B:Z

    if-nez v6, :cond_e

    .line 41
    iget-object v6, p0, LY0;->x:LW0;

    invoke-virtual {v6, v1, v3}, LW0;->a(II)V

    goto :goto_5

    .line 42
    :cond_e
    iget-object v6, p0, LY0;->x:LW0;

    .line 43
    iget-boolean v7, v6, LW0;->k:Z

    if-nez v7, :cond_f

    iget-object v7, v6, LW0;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v6, LW0;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_f

    iget-object v7, v6, LW0;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v6, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_f

    iget-boolean v7, v6, LW0;->j:Z

    iget-boolean v8, v6, LW0;->e:Z

    if-ne v7, v8, :cond_f

    iget v7, v6, LW0;->i:I

    iget-object v6, v6, LW0;->b:LV0;

    .line 44
    invoke-virtual {v6}, LV0;->getRootAlpha()I

    move-result v6

    if-ne v7, v6, :cond_f

    const/4 v6, 0x1

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_10

    .line 45
    iget-object v6, p0, LY0;->x:LW0;

    invoke-virtual {v6, v1, v3}, LW0;->a(II)V

    .line 46
    iget-object v1, p0, LY0;->x:LW0;

    .line 47
    iget-object v3, v1, LW0;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, LW0;->g:Landroid/content/res/ColorStateList;

    .line 48
    iget-object v3, v1, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, LW0;->h:Landroid/graphics/PorterDuff$Mode;

    .line 49
    iget-object v3, v1, LW0;->b:LV0;

    invoke-virtual {v3}, LV0;->getRootAlpha()I

    move-result v3

    iput v3, v1, LW0;->i:I

    .line 50
    iget-boolean v3, v1, LW0;->e:Z

    iput-boolean v3, v1, LW0;->j:Z

    .line 51
    iput-boolean v2, v1, LW0;->k:Z

    .line 52
    :cond_10
    :goto_5
    iget-object v1, p0, LY0;->x:LW0;

    iget-object v3, p0, LY0;->E:Landroid/graphics/Rect;

    .line 53
    iget-object v6, v1, LW0;->b:LV0;

    invoke-virtual {v6}, LV0;->getRootAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_11

    const/4 v2, 0x1

    :cond_11
    if-nez v2, :cond_12

    if-nez v0, :cond_12

    move-object v0, v9

    goto :goto_6

    .line 54
    :cond_12
    iget-object v2, v1, LW0;->l:Landroid/graphics/Paint;

    if-nez v2, :cond_13

    .line 55
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, LW0;->l:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    :cond_13
    iget-object v2, v1, LW0;->l:Landroid/graphics/Paint;

    iget-object v5, v1, LW0;->b:LV0;

    invoke-virtual {v5}, LV0;->getRootAlpha()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v2, v1, LW0;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 59
    iget-object v0, v1, LW0;->l:Landroid/graphics/Paint;

    .line 60
    :goto_6
    iget-object v1, v1, LW0;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v9, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_14
    :goto_7
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    iget-object v0, v0, LW0;->b:LV0;

    invoke-virtual {v0}, LV0;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, LY0;->x:LW0;

    invoke-virtual {v1}, LW0;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, LX0;

    iget-object v1, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, LX0;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    invoke-virtual {p0}, LY0;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, LW0;->a:I

    .line 4
    iget-object v0, p0, LY0;->x:LW0;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    iget-object v0, v0, LW0;->b:LV0;

    iget v0, v0, LV0;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    iget-object v0, v0, LW0;->b:LV0;

    iget v0, v0, LV0;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, LY0;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 4
    iget-object v2, v0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v1, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v11, v0, LY0;->x:LW0;

    .line 7
    new-instance v2, LV0;

    invoke-direct {v2}, LV0;-><init>()V

    .line 8
    iput-object v2, v11, LW0;->b:LV0;

    .line 9
    sget-object v2, LC0;->a:[I

    invoke-static {v1, v10, v9, v2}, Lm4;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10
    iget-object v3, v0, LY0;->x:LW0;

    .line 11
    iget-object v4, v3, LW0;->b:LV0;

    const/4 v12, 0x6

    const/4 v13, -0x1

    const-string v5, "tintMode"

    .line 12
    invoke-static {v2, v8, v5, v12, v13}, Lm4;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 13
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v14, 0x9

    const/4 v15, 0x5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    if-eq v5, v15, :cond_3

    if-eq v5, v14, :cond_1

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 14
    :pswitch_0
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 15
    :pswitch_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 16
    :pswitch_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 17
    :cond_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 18
    :cond_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 19
    :cond_3
    :goto_0
    iput-object v6, v3, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x1

    .line 20
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 21
    iput-object v5, v3, LW0;->c:Landroid/content/res/ColorStateList;

    .line 22
    :cond_4
    iget-boolean v5, v3, LW0;->e:Z

    const-string v12, "autoMirrored"

    .line 23
    invoke-static {v8, v12}, Lm4;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 25
    :goto_1
    iput-boolean v5, v3, LW0;->e:Z

    .line 26
    iget v3, v4, LV0;->k:F

    const/4 v12, 0x7

    const-string v5, "viewportWidth"

    invoke-static {v2, v8, v5, v12, v3}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v4, LV0;->k:F

    .line 27
    iget v3, v4, LV0;->l:F

    const/16 v5, 0x8

    const-string v15, "viewportHeight"

    invoke-static {v2, v8, v15, v5, v3}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, v4, LV0;->l:F

    .line 28
    iget v15, v4, LV0;->k:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-lez v15, :cond_22

    cmpg-float v3, v3, v16

    if-lez v3, :cond_21

    .line 29
    iget v3, v4, LV0;->i:F

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, LV0;->i:F

    .line 30
    iget v3, v4, LV0;->j:F

    const/4 v15, 0x2

    invoke-virtual {v2, v15, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, LV0;->j:F

    .line 31
    iget v5, v4, LV0;->i:F

    cmpg-float v5, v5, v16

    if-lez v5, :cond_20

    cmpg-float v3, v3, v16

    if-lez v3, :cond_1f

    .line 32
    invoke-virtual {v4}, LV0;->getAlpha()F

    move-result v3

    const/4 v5, 0x4

    const-string v12, "alpha"

    .line 33
    invoke-static {v2, v8, v12, v5, v3}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 34
    invoke-virtual {v4, v3}, LV0;->setAlpha(F)V

    const/4 v12, 0x0

    .line 35
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 36
    iput-object v3, v4, LV0;->n:Ljava/lang/String;

    .line 37
    iget-object v5, v4, LV0;->p:LJ6;

    invoke-virtual {v5, v3, v4}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-virtual/range {p0 .. p0}, LY0;->getChangingConfigurations()I

    move-result v2

    iput v2, v11, LW0;->a:I

    .line 40
    iput-boolean v6, v11, LW0;->k:Z

    .line 41
    iget-object v5, v0, LY0;->x:LW0;

    .line 42
    iget-object v4, v5, LW0;->b:LV0;

    .line 43
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 44
    iget-object v2, v4, LV0;->h:LS0;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 45
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 46
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    add-int/lit8 v14, v19, 0x1

    const/16 v19, 0x1

    :goto_2
    if-eq v2, v6, :cond_1d

    .line 47
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ge v6, v14, :cond_7

    if-eq v2, v7, :cond_1d

    :cond_7
    const-string v6, "group"

    if-ne v2, v15, :cond_1b

    .line 48
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    check-cast v13, LS0;

    const-string v7, "path"

    .line 50
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v15, "pathData"

    const/4 v12, 0x0

    if-eqz v7, :cond_12

    .line 51
    new-instance v7, LR0;

    invoke-direct {v7}, LR0;-><init>()V

    .line 52
    sget-object v2, LC0;->c:[I

    invoke-static {v1, v10, v9, v2}, Lm4;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 53
    iput-object v12, v7, LR0;->d:[I

    .line 54
    invoke-static {v8, v15}, Lm4;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v12, v7

    move/from16 v17, v14

    const/4 v0, 0x1

    const/4 v4, 0x4

    const/16 v15, 0x8

    const/16 v18, 0x9

    const/16 v20, -0x1

    move-object v14, v6

    goto/16 :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 56
    iput-object v12, v7, LU0;->b:Ljava/lang/String;

    :cond_9
    const/4 v2, 0x2

    .line 57
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 58
    invoke-static {v12}, Lp4;->a(Ljava/lang/String;)[Lo4;

    move-result-object v2

    iput-object v2, v7, LU0;->a:[Lo4;

    :cond_a
    const/4 v12, 0x1

    const/4 v15, 0x0

    const-string v19, "fillColor"

    move-object v2, v6

    move-object/from16 v22, v3

    move-object/from16 v3, p2

    move-object/from16 v23, v4

    move-object/from16 v4, p4

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    move/from16 v17, v14

    const/4 v0, 0x1

    move-object v14, v6

    move v6, v12

    move-object v12, v7

    move v7, v15

    .line 59
    invoke-static/range {v2 .. v7}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Lc4;

    move-result-object v2

    iput-object v2, v12, LR0;->g:Lc4;

    const/16 v2, 0xc

    .line 60
    iget v3, v12, LR0;->j:F

    const-string v4, "fillAlpha"

    invoke-static {v14, v8, v4, v2, v3}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v12, LR0;->j:F

    const-string v2, "strokeLineCap"

    const/4 v3, -0x1

    const/16 v15, 0x8

    .line 61
    invoke-static {v14, v8, v2, v15, v3}, Lm4;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 62
    iget-object v3, v12, LR0;->n:Landroid/graphics/Paint$Cap;

    if-eqz v2, :cond_d

    if-eq v2, v0, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    goto :goto_3

    .line 63
    :cond_b
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_3

    .line 64
    :cond_c
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_3

    .line 65
    :cond_d
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 66
    :goto_3
    iput-object v3, v12, LR0;->n:Landroid/graphics/Paint$Cap;

    const-string v2, "strokeLineJoin"

    const/4 v6, -0x1

    const/16 v7, 0x9

    .line 67
    invoke-static {v14, v8, v2, v7, v6}, Lm4;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 68
    iget-object v3, v12, LR0;->o:Landroid/graphics/Paint$Join;

    if-eqz v2, :cond_10

    if-eq v2, v0, :cond_f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_e

    goto :goto_4

    .line 69
    :cond_e
    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_4

    .line 70
    :cond_f
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_4

    .line 71
    :cond_10
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 72
    :goto_4
    iput-object v3, v12, LR0;->o:Landroid/graphics/Paint$Join;

    const/16 v2, 0xa

    .line 73
    iget v3, v12, LR0;->p:F

    const-string v4, "strokeMiterLimit"

    invoke-static {v14, v8, v4, v2, v3}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v12, LR0;->p:F

    const/16 v18, 0x3

    const/16 v19, 0x0

    const-string v5, "strokeColor"

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    const/16 v20, -0x1

    move/from16 v6, v18

    const/16 v18, 0x9

    move/from16 v7, v19

    .line 74
    invoke-static/range {v2 .. v7}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Lc4;

    move-result-object v2

    iput-object v2, v12, LR0;->e:Lc4;

    const/16 v2, 0xb

    .line 75
    iget v3, v12, LR0;->h:F

    const-string v4, "strokeAlpha"

    invoke-static {v14, v8, v4, v2, v3}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v12, LR0;->h:F

    .line 76
    iget v2, v12, LR0;->f:F

    const-string v3, "strokeWidth"

    const/4 v4, 0x4

    invoke-static {v14, v8, v3, v4, v2}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v12, LR0;->f:F

    .line 77
    iget v2, v12, LR0;->l:F

    const-string v3, "trimPathEnd"

    const/4 v5, 0x6

    invoke-static {v14, v8, v3, v5, v2}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v12, LR0;->l:F

    .line 78
    iget v2, v12, LR0;->m:F

    const-string v3, "trimPathOffset"

    const/4 v5, 0x7

    invoke-static {v14, v8, v3, v5, v2}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v12, LR0;->m:F

    .line 79
    iget v2, v12, LR0;->k:F

    const-string v3, "trimPathStart"

    const/4 v5, 0x5

    invoke-static {v14, v8, v3, v5, v2}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    iput v2, v12, LR0;->k:F

    const/16 v2, 0xd

    .line 80
    iget v3, v12, LR0;->i:I

    const-string v5, "fillType"

    invoke-static {v14, v8, v5, v2, v3}, Lm4;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    iput v2, v12, LR0;->i:I

    .line 81
    :goto_5
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    iget-object v2, v13, LS0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v12}, LU0;->getPathName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v23

    if-eqz v2, :cond_11

    .line 84
    iget-object v2, v3, LV0;->p:LJ6;

    invoke-virtual {v12}, LU0;->getPathName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v12}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object/from16 v5, v24

    .line 85
    iget v2, v5, LW0;->a:I

    iget v6, v12, LU0;->c:I

    or-int/2addr v2, v6

    iput v2, v5, LW0;->a:I

    move-object/from16 v12, v22

    const/4 v0, 0x0

    const/4 v4, 0x7

    const/4 v7, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x5

    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_12
    move-object/from16 v22, v3

    move-object v3, v4

    move/from16 v17, v14

    const/4 v0, 0x1

    const/4 v4, 0x4

    const/16 v7, 0x8

    const/16 v18, 0x9

    const/16 v20, -0x1

    const-string v14, "clip-path"

    .line 86
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 87
    new-instance v2, LQ0;

    invoke-direct {v2}, LQ0;-><init>()V

    .line 88
    invoke-static {v8, v15}, Lm4;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_6

    .line 89
    :cond_13
    sget-object v6, LC0;->d:[I

    invoke-static {v1, v10, v9, v6}, Lm4;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v12, 0x0

    .line 90
    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_14

    .line 91
    iput-object v14, v2, LU0;->b:Ljava/lang/String;

    .line 92
    :cond_14
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 93
    invoke-static {v12}, Lp4;->a(Ljava/lang/String;)[Lo4;

    move-result-object v12

    iput-object v12, v2, LU0;->a:[Lo4;

    .line 94
    :cond_15
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    :goto_6
    iget-object v6, v13, LS0;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v2}, LU0;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 97
    iget-object v6, v3, LV0;->p:LJ6;

    invoke-virtual {v2}, LU0;->getPathName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_16
    iget v6, v5, LW0;->a:I

    iget v2, v2, LU0;->c:I

    or-int/2addr v2, v6

    iput v2, v5, LW0;->a:I

    goto/16 :goto_7

    .line 99
    :cond_17
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 100
    new-instance v2, LS0;

    invoke-direct {v2}, LS0;-><init>()V

    .line 101
    sget-object v6, LC0;->b:[I

    invoke-static {v1, v10, v9, v6}, Lm4;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 102
    iput-object v12, v2, LS0;->l:[I

    .line 103
    iget v12, v2, LS0;->c:F

    const-string v14, "rotation"

    const/4 v15, 0x5

    invoke-static {v6, v8, v14, v15, v12}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    iput v12, v2, LS0;->c:F

    .line 104
    iget v12, v2, LS0;->d:F

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    iput v12, v2, LS0;->d:F

    .line 105
    iget v12, v2, LS0;->e:F

    const/4 v14, 0x2

    invoke-virtual {v6, v14, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    iput v12, v2, LS0;->e:F

    .line 106
    iget v12, v2, LS0;->f:F

    const-string v0, "scaleX"

    const/4 v7, 0x3

    invoke-static {v6, v8, v0, v7, v12}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, LS0;->f:F

    .line 107
    iget v0, v2, LS0;->g:F

    const-string v12, "scaleY"

    invoke-static {v6, v8, v12, v4, v0}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, LS0;->g:F

    .line 108
    iget v0, v2, LS0;->h:F

    const-string v12, "translateX"

    const/4 v4, 0x6

    invoke-static {v6, v8, v12, v4, v0}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, LS0;->h:F

    .line 109
    iget v0, v2, LS0;->i:F

    const-string v12, "translateY"

    const/4 v4, 0x7

    invoke-static {v6, v8, v12, v4, v0}, Lm4;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v2, LS0;->i:F

    const/4 v0, 0x0

    .line 110
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_18

    .line 111
    iput-object v12, v2, LS0;->m:Ljava/lang/String;

    .line 112
    :cond_18
    invoke-virtual {v2}, LS0;->b()V

    .line 113
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    iget-object v6, v13, LS0;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v22

    .line 115
    invoke-virtual {v12, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v2}, LS0;->getGroupName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 117
    iget-object v6, v3, LV0;->p:LJ6;

    invoke-virtual {v2}, LS0;->getGroupName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_19
    iget v6, v5, LW0;->a:I

    iget v2, v2, LS0;->k:I

    or-int/2addr v2, v6

    iput v2, v5, LW0;->a:I

    goto :goto_8

    :cond_1a
    :goto_7
    move-object/from16 v12, v22

    const/4 v0, 0x0

    const/4 v4, 0x7

    const/4 v7, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x5

    goto :goto_8

    :cond_1b
    move-object v12, v3

    move-object v3, v4

    move/from16 v17, v14

    const/4 v0, 0x0

    const/4 v4, 0x7

    const/4 v14, 0x2

    const/4 v15, 0x5

    const/16 v18, 0x9

    const/16 v20, -0x1

    if-ne v2, v7, :cond_1c

    .line 119
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 121
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 122
    :cond_1c
    :goto_8
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move-object v4, v3

    move-object v3, v12

    move/from16 v14, v17

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v15, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_1d
    if-nez v19, :cond_1e

    .line 123
    iget-object v0, v11, LW0;->c:Landroid/content/res/ColorStateList;

    iget-object v1, v11, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1}, LY0;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v3, LY0;->y:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_1e
    move-object/from16 v3, p0

    .line 124
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object v3, v0

    .line 125
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move-object v3, v0

    .line 126
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-object v3, v0

    .line 127
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-object v3, v0

    .line 128
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    iget-boolean v0, v0, LW0;->e:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LY0;->x:LW0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, LW0;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LY0;->x:LW0;

    iget-object v0, v0, LW0;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, LY0;->A:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 4
    new-instance v0, LW0;

    iget-object v1, p0, LY0;->x:LW0;

    invoke-direct {v0, v1}, LW0;-><init>(LW0;)V

    iput-object v0, p0, LY0;->x:LW0;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LY0;->A:Z

    :cond_1
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, LY0;->x:LW0;

    .line 4
    iget-object v2, v1, LW0;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v1, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0, v2, v4}, LY0;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, LY0;->y:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-virtual {p0}, LY0;->invalidateSelf()V

    const/4 v0, 0x1

    .line 7
    :cond_1
    invoke-virtual {v1}, LW0;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v1, LW0;->b:LV0;

    .line 9
    iget-object v2, v2, LV0;->h:LS0;

    invoke-virtual {v2, p1}, LS0;->a([I)Z

    move-result p1

    .line 10
    iget-boolean v2, v1, LW0;->k:Z

    or-int/2addr v2, p1

    iput-boolean v2, v1, LW0;->k:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, LY0;->invalidateSelf()V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    iget-object v0, v0, LW0;->b:LV0;

    invoke-virtual {v0}, LV0;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4
    iget-object v0, p0, LY0;->x:LW0;

    iget-object v0, v0, LW0;->b:LV0;

    invoke-virtual {v0, p1}, LV0;->setRootAlpha(I)V

    .line 5
    invoke-virtual {p0}, LY0;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    iput-boolean p1, v0, LW0;->e:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, LY0;->z:Landroid/graphics/ColorFilter;

    .line 4
    invoke-virtual {p0}, LY0;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lx4;->b(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LY0;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lx4;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    .line 4
    iget-object v1, v0, LW0;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, LW0;->c:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v0, v0, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, LY0;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LY0;->y:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, LY0;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lx4;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LY0;->x:LW0;

    .line 4
    iget-object v1, v0, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, LW0;->d:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v0, v0, LW0;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, LY0;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LY0;->y:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, LY0;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
