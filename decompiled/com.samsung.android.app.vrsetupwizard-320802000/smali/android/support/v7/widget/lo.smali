.class Landroid/support/v7/widget/lo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/WindowManager$LayoutParams;

.field private final e:Landroid/graphics/Rect;

.field private final f:[I

.field private final g:[I

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/lo;->f:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/lo;->g:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/lo;->h:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/lo;->i:Z

    iput v0, p0, Landroid/support/v7/widget/lo;->j:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104a9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/view/e;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v1}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Landroid/support/v7/b/i;->sesl_tooltip:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    iget-object p1, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    sget v0, Landroid/support/v7/b/g;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/widget/lo;->c:Landroid/widget/TextView;

    iget-object p1, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    new-instance v0, Landroid/support/v7/widget/lp;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/lp;-><init>(Landroid/support/v7/widget/lo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object p1, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x3ea

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    sget v0, Landroid/support/v7/b/k;->Animation_AppCompat_Tooltip:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object p1, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x40008

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private a(Landroid/view/View;III)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const-string v1, "window"

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-direct {p0}, Landroid/support/v7/widget/lo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-direct {p0}, Landroid/support/v7/widget/lo;->d()I

    move-result p3

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p4

    if-le p2, p1, :cond_9

    :goto_0
    sub-int p2, p1, p4

    goto/16 :goto_3

    :cond_0
    if-ne p1, v2, :cond_9

    if-gtz p2, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p4

    if-gt p2, p3, :cond_9

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p4

    if-le p2, p1, :cond_9

    goto :goto_0

    :cond_2
    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_9

    :cond_3
    if-gtz p2, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p4

    if-ge p2, p3, :cond_9

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p4

    if-le p2, p1, :cond_9

    :goto_1
    sub-int/2addr p1, p4

    move p2, p1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v7/widget/lo;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    if-ne v0, v3, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p4

    if-le p2, p1, :cond_9

    goto :goto_1

    :cond_6
    if-ne v0, v2, :cond_9

    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p4

    if-ge p2, p3, :cond_9

    add-int/2addr p3, p4

    move p2, p3

    goto :goto_3

    :cond_7
    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_9

    :cond_8
    iget-object p1, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p4

    if-ge p2, p3, :cond_9

    :goto_2
    add-int p2, p3, p4

    :cond_9
    :goto_3
    return p2
.end method

.method private static a(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/lo;->j:I

    return-void
.end method

.method private a(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    const/16 v5, 0x31

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {p1}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v1, "TooltipPopup"

    const-string v2, "Cannot find app view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v6, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    if-gez v6, :cond_2

    iget-object v6, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_2

    iget-object v6, v0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v8, "status_bar_height"

    const-string v9, "dimen"

    const-string v10, "android"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget-object v9, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v7, v8, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    new-array v6, v4, [I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v8, Landroid/graphics/Rect;

    aget v9, v6, v7

    const/4 v10, 0x1

    aget v11, v6, v10

    aget v12, v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aget v6, v6, v10

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v6, v13

    invoke-direct {v8, v9, v11, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iput v9, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, v0, Landroid/support/v7/widget/lo;->g:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, v0, Landroid/support/v7/widget/lo;->f:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v6, v5, v7

    iget-object v8, v0, Landroid/support/v7/widget/lo;->g:[I

    aget v9, v8, v7

    sub-int/2addr v6, v9

    aput v6, v5, v7

    aget v6, v5, v10

    aget v8, v8, v10

    sub-int/2addr v6, v8

    aput v6, v5, v10

    aget v5, v5, v7

    add-int/2addr v5, v3

    iget-object v6, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v4

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, v0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    iget-object v5, v0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v8, v0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/v7/b/e;->sesl_hover_tooltip_popup_right_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v11, v9, v10

    sub-int/2addr v11, v5

    aget v9, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v9, v12

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v12, v12, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v13, v4

    sub-int/2addr v12, v13

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v12, v13

    mul-int/lit8 v13, v8, 0x2

    sub-int/2addr v12, v13

    goto :goto_1

    :cond_3
    iget-object v12, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v12, v12, v7

    add-int/2addr v12, v3

    iget-object v13, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v13, v4

    sub-int/2addr v12, v13

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    mul-int/lit8 v13, v8, 0x2

    add-int/2addr v12, v13

    :goto_1
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, v12, v6, v8}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;III)I

    move-result v12

    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v12, v9, v5

    iget-object v13, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v12, v13, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v12, v12, v7

    goto :goto_2

    :cond_5
    iget-object v12, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v12, v12, v7

    :goto_2
    add-int/2addr v12, v3

    iget-object v13, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v13, v4

    sub-int/2addr v12, v13

    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, v12, v6, v8}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;III)I

    move-result v12

    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ltz v11, :cond_6

    :goto_3
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_6
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_4
    if-eqz p6, :cond_7

    iget-object v12, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v10, v12, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v10, v12

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_7
    if-eqz p7, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v10

    if-nez v10, :cond_8

    iget-object v3, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v3, v3, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v4

    sub-int/2addr v3, v7

    div-int/lit8 v4, v6, 0x2

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v8, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_5

    :cond_8
    iget-object v10, v0, Landroid/support/v7/widget/lo;->f:[I

    aget v7, v10, v7

    iget-object v10, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/2addr v10, v4

    sub-int/2addr v7, v10

    add-int/2addr v7, v3

    sub-int v3, v6, v8

    div-int/2addr v3, v4

    add-int/2addr v7, v3

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_5
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, v3, v6, v8}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;III)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v5, v9

    iget-object v1, v0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v5, v1, :cond_9

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6

    :cond_9
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_a
    :goto_6
    return-void
.end method

.method private c()Z
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/lo;->e:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget v4, Landroid/support/v7/b/e;->sesl_navigation_bar_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_0

    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/lo;->a(I)V

    return v4

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private d()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/lo;->j:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/lo;->h:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/lo;->i:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/lo;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(IIILjava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/lo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/lo;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/lo;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    iput p1, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p3, :cond_1

    const p1, 0x800035

    goto :goto_0

    :cond_1
    const p1, 0x800033

    :goto_0
    iput p1, p4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/v7/widget/lo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/lo;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/lo;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V

    iget-object p1, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Landroid/view/View;IIZLjava/lang/CharSequence;ZZ)V
    .locals 8

    iput-boolean p6, p0, Landroid/support/v7/widget/lo;->h:Z

    iput-boolean p7, p0, Landroid/support/v7/widget/lo;->i:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/lo;->b()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/lo;->a()V

    :cond_0
    iget-object p6, p0, Landroid/support/v7/widget/lo;->c:Landroid/widget/TextView;

    invoke-virtual {p6, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, p0, Landroid/support/v7/widget/lo;->h:Z

    iget-boolean v7, p0, Landroid/support/v7/widget/lo;->i:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V

    iget-object p1, p0, Landroid/support/v7/widget/lo;->a:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/lo;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/lo;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
