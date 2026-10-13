.class public abstract Lmg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJd;


# static fields
.field public static Y:Ljava/lang/reflect/Method;

.field public static Z:Ljava/lang/reflect/Method;

.field public static a0:Ljava/lang/reflect/Method;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:Z

.field public J:Z

.field public K:I

.field public L:I

.field public M:Landroid/database/DataSetObserver;

.field public N:Landroid/view/View;

.field public O:Landroid/widget/AdapterView$OnItemClickListener;

.field public final P:Llg;

.field public final Q:Lkg;

.field public final R:Ljg;

.field public final S:Lhg;

.field public final T:Landroid/os/Handler;

.field public final U:Landroid/graphics/Rect;

.field public V:Landroid/graphics/Rect;

.field public W:Z

.field public X:Landroid/widget/PopupWindow;

.field public w:Landroid/content/Context;

.field public x:Landroid/widget/ListAdapter;

.field public y:Lpf;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "ListPopupWindow"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmg;->Y:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 2
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    :try_start_1
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "getMaxAvailableHeight"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmg;->Z:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v3, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    .line 4
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_1
    :try_start_2
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setEpicenterBounds"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmg;->a0:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lmg;->z:I

    .line 3
    iput v0, p0, Lmg;->A:I

    const/16 v0, 0x3ea

    .line 4
    iput v0, p0, Lmg;->D:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmg;->H:I

    .line 6
    iput-boolean v0, p0, Lmg;->I:Z

    .line 7
    iput-boolean v0, p0, Lmg;->J:Z

    const v1, 0x7fffffff

    .line 8
    iput v1, p0, Lmg;->K:I

    .line 9
    iput v0, p0, Lmg;->L:I

    .line 10
    new-instance v1, Llg;

    invoke-direct {v1, p0}, Llg;-><init>(Lmg;)V

    iput-object v1, p0, Lmg;->P:Llg;

    .line 11
    new-instance v1, Lkg;

    invoke-direct {v1, p0}, Lkg;-><init>(Lmg;)V

    iput-object v1, p0, Lmg;->Q:Lkg;

    .line 12
    new-instance v1, Ljg;

    invoke-direct {v1, p0}, Ljg;-><init>(Lmg;)V

    iput-object v1, p0, Lmg;->R:Ljg;

    .line 13
    new-instance v1, Lhg;

    invoke-direct {v1, p0}, Lhg;-><init>(Lmg;)V

    iput-object v1, p0, Lmg;->S:Lhg;

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmg;->U:Landroid/graphics/Rect;

    .line 15
    iput-object p1, p0, Lmg;->w:Landroid/content/Context;

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmg;->T:Landroid/os/Handler;

    .line 17
    sget-object v1, LeS;->h0:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lmg;->B:I

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lmg;->C:I

    if-eqz v0, :cond_0

    .line 20
    iput-boolean v2, p0, Lmg;->E:Z

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    new-instance v0, LEe;

    invoke-direct {v0, p1, p2, p3, p4}, LEe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Lpf;
    .locals 1

    .line 15
    new-instance v0, Lpf;

    invoke-direct {v0, p1, p2}, Lpf;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public a()V
    .locals 14

    .line 16
    iget-object v0, p0, Lmg;->y:Lpf;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lmg;->w:Landroid/content/Context;

    .line 18
    iget-boolean v2, p0, Lmg;->W:Z

    xor-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lmg;->a(Landroid/content/Context;Z)Lpf;

    move-result-object v0

    iput-object v0, p0, Lmg;->y:Lpf;

    .line 19
    iget-object v2, p0, Lmg;->x:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    iget-object v0, p0, Lmg;->y:Lpf;

    iget-object v2, p0, Lmg;->O:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 21
    iget-object v0, p0, Lmg;->y:Lpf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 22
    iget-object v0, p0, Lmg;->y:Lpf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 23
    iget-object v0, p0, Lmg;->y:Lpf;

    new-instance v2, Lgg;

    invoke-direct {v2, p0}, Lgg;-><init>(Lmg;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 24
    iget-object v0, p0, Lmg;->y:Lpf;

    iget-object v2, p0, Lmg;->R:Ljg;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 25
    iget-object v0, p0, Lmg;->y:Lpf;

    .line 26
    iget-object v2, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    :goto_0
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 29
    iget-object v3, p0, Lmg;->U:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 30
    iget-object v0, p0, Lmg;->U:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    .line 31
    iget-boolean v4, p0, Lmg;->E:Z

    if-nez v4, :cond_2

    neg-int v3, v3

    .line 32
    iput v3, p0, Lmg;->C:I

    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lmg;->U:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 34
    :cond_2
    :goto_1
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    .line 35
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 36
    :goto_2
    iget-object v5, p0, Lmg;->N:Landroid/view/View;

    .line 37
    iget v6, p0, Lmg;->C:I

    .line 38
    sget-object v7, Lmg;->Z:Ljava/lang/reflect/Method;

    const-string v8, "ListPopupWindow"

    if-eqz v7, :cond_4

    .line 39
    :try_start_0
    iget-object v9, p0, Lmg;->X:Landroid/widget/PopupWindow;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    .line 40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v4

    .line 41
    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v3, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    .line 42
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_4
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5, v6}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v3

    .line 44
    :goto_3
    iget-boolean v5, p0, Lmg;->I:Z

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-nez v5, :cond_9

    iget v5, p0, Lmg;->z:I

    if-ne v5, v7, :cond_5

    goto :goto_5

    .line 45
    :cond_5
    iget v5, p0, Lmg;->A:I

    if-eq v5, v6, :cond_7

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_6

    .line 46
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_4

    .line 47
    :cond_6
    iget-object v5, p0, Lmg;->w:Landroid/content/Context;

    .line 48
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lmg;->U:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    sub-int/2addr v5, v11

    .line 49
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_4

    .line 50
    :cond_7
    iget-object v5, p0, Lmg;->w:Landroid/content/Context;

    .line 51
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Lmg;->U:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v9

    sub-int/2addr v5, v10

    const/high16 v9, -0x80000000

    .line 52
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 53
    :goto_4
    iget-object v9, p0, Lmg;->y:Lpf;

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v9, v5, v3, v7}, Lpf;->a(III)I

    move-result v3

    if-lez v3, :cond_8

    .line 54
    iget-object v5, p0, Lmg;->y:Lpf;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    iget-object v9, p0, Lmg;->y:Lpf;

    .line 55
    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v5

    add-int/2addr v9, v0

    add-int/lit8 v0, v9, 0x0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_5
    add-int/2addr v0, v3

    .line 56
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 57
    :goto_6
    iget-object v4, p0, Lmg;->X:Landroid/widget/PopupWindow;

    iget v5, p0, Lmg;->D:I

    invoke-static {v4, v5}, Lt8;->a(Landroid/widget/PopupWindow;I)V

    .line 58
    iget-object v4, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 59
    iget-object v4, p0, Lmg;->N:Landroid/view/View;

    .line 60
    invoke-static {v4}, LA7;->t(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_b

    return-void

    .line 61
    :cond_b
    iget v4, p0, Lmg;->A:I

    if-ne v4, v7, :cond_c

    const/4 v4, -0x1

    goto :goto_7

    :cond_c
    if-ne v4, v6, :cond_d

    .line 62
    iget-object v4, p0, Lmg;->N:Landroid/view/View;

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 64
    :cond_d
    :goto_7
    iget v5, p0, Lmg;->z:I

    if-ne v5, v7, :cond_12

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    const/4 v0, -0x1

    :goto_8
    if-eqz v3, :cond_10

    .line 65
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    iget v5, p0, Lmg;->A:I

    if-ne v5, v7, :cond_f

    const/4 v5, -0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 66
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    .line 67
    :cond_10
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    iget v5, p0, Lmg;->A:I

    if-ne v5, v7, :cond_11

    const/4 v5, -0x1

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 68
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_12
    if-ne v5, v6, :cond_13

    goto :goto_b

    :cond_13
    move v0, v5

    .line 69
    :goto_b
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Lmg;->J:Z

    if-nez v5, :cond_14

    iget-boolean v5, p0, Lmg;->I:Z

    if-nez v5, :cond_14

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 70
    iget-object v8, p0, Lmg;->X:Landroid/widget/PopupWindow;

    .line 71
    iget-object v9, p0, Lmg;->N:Landroid/view/View;

    .line 72
    iget v10, p0, Lmg;->B:I

    iget v11, p0, Lmg;->C:I

    if-gez v4, :cond_15

    const/4 v12, -0x1

    goto :goto_d

    :cond_15
    move v12, v4

    :goto_d
    if-gez v0, :cond_16

    const/4 v13, -0x1

    goto :goto_e

    :cond_16
    move v13, v0

    :goto_e
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_14

    .line 73
    :cond_17
    iget v3, p0, Lmg;->A:I

    if-ne v3, v7, :cond_18

    const/4 v3, -0x1

    goto :goto_f

    :cond_18
    if-ne v3, v6, :cond_19

    .line 74
    iget-object v3, p0, Lmg;->N:Landroid/view/View;

    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 76
    :cond_19
    :goto_f
    iget v4, p0, Lmg;->z:I

    if-ne v4, v7, :cond_1a

    const/4 v0, -0x1

    goto :goto_10

    :cond_1a
    if-ne v4, v6, :cond_1b

    goto :goto_10

    :cond_1b
    move v0, v4

    .line 77
    :goto_10
    iget-object v4, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 78
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 79
    sget-object v0, Lmg;->Y:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    .line 80
    :try_start_1
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :catch_1
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 81
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1c
    :goto_11
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Lmg;->J:Z

    if-nez v3, :cond_1d

    iget-boolean v3, p0, Lmg;->I:Z

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 83
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmg;->Q:Lkg;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 84
    iget-boolean v0, p0, Lmg;->G:Z

    if-eqz v0, :cond_1e

    .line 85
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Lmg;->F:Z

    invoke-static {v0, v3}, Lt8;->a(Landroid/widget/PopupWindow;Z)V

    .line 86
    :cond_1e
    sget-object v0, Lmg;->a0:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 87
    :try_start_2
    iget-object v3, p0, Lmg;->X:Landroid/widget/PopupWindow;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lmg;->V:Landroid/graphics/Rect;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 88
    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_1f
    :goto_13
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    .line 90
    iget-object v2, p0, Lmg;->N:Landroid/view/View;

    .line 91
    iget v3, p0, Lmg;->B:I

    iget v4, p0, Lmg;->C:I

    iget v5, p0, Lmg;->H:I

    .line 92
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 93
    iget-object v0, p0, Lmg;->y:Lpf;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 94
    iget-boolean v0, p0, Lmg;->W:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmg;->y:Lpf;

    invoke-virtual {v0}, Lpf;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 95
    :cond_20
    iget-object v0, p0, Lmg;->y:Lpf;

    if-eqz v0, :cond_21

    .line 96
    iput-boolean v1, v0, Lpf;->E:Z

    .line 97
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 98
    :cond_21
    iget-boolean v0, p0, Lmg;->W:Z

    if-nez v0, :cond_22

    .line 99
    iget-object v0, p0, Lmg;->T:Landroid/os/Handler;

    iget-object v1, p0, Lmg;->S:Lhg;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    :goto_14
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 11
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lmg;->U:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    iget-object v0, p0, Lmg;->U:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lmg;->A:I

    goto :goto_0

    .line 14
    :cond_0
    iput p1, p0, Lmg;->A:I

    :goto_0
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg;->M:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lig;

    invoke-direct {v0, p0}, Lig;-><init>(Lmg;)V

    iput-object v0, p0, Lmg;->M:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lmg;->x:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lmg;->x:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lmg;->M:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lmg;->y:Lpf;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lmg;->x:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    iput-boolean p1, p0, Lmg;->W:Z

    .line 10
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .line 3
    iget-object v0, p0, Lmg;->y:Lpf;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmg;->C:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmg;->E:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Lmg;->X:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lmg;->y:Lpf;

    .line 4
    iget-object v0, p0, Lmg;->T:Landroid/os/Handler;

    iget-object v1, p0, Lmg;->P:Llg;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
