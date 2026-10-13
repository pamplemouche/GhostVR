.class public LF9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic w:Z

.field public final synthetic x:LQ9;


# direct methods
.method public constructor <init>(LQ9;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LF9;->x:LQ9;

    iput-boolean p2, p0, LF9;->w:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LF9;->x:LQ9;

    iget-object v1, v1, LQ9;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v1, v0, LF9;->x:LQ9;

    iget-boolean v2, v1, LQ9;->A0:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v3, v1, LQ9;->B0:Z

    goto/16 :goto_c

    .line 4
    :cond_0
    iget-boolean v2, v0, LF9;->w:Z

    .line 5
    iget-object v4, v1, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-static {v4}, LQ9;->a(Landroid/view/View;)I

    move-result v4

    .line 6
    iget-object v5, v1, LQ9;->V:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v5, v6}, LQ9;->b(Landroid/view/View;I)V

    .line 7
    invoke-virtual {v1}, LQ9;->b()Z

    move-result v5

    invoke-virtual {v1, v5}, LQ9;->f(Z)V

    .line 8
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 9
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x0

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 11
    iget-object v6, v1, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-static {v6, v4}, LQ9;->b(Landroid/view/View;I)V

    .line 12
    iget-object v4, v1, LQ9;->G:Landroid/view/View;

    if-nez v4, :cond_2

    iget-object v4, v1, LQ9;->Q:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v1, LQ9;->Q:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v1, v6, v8}, LQ9;->a(II)I

    move-result v6

    .line 15
    iget-object v8, v1, LQ9;->Q:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v9, v4, :cond_1

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 16
    :goto_1
    invoke-virtual {v1}, LQ9;->b()Z

    move-result v4

    invoke-virtual {v1, v4}, LQ9;->c(Z)I

    move-result v4

    .line 17
    iget-object v8, v1, LQ9;->b0:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 18
    invoke-virtual {v1}, LQ9;->c()Lpb;

    move-result-object v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    iget v9, v1, LQ9;->j0:I

    .line 19
    invoke-virtual {v1}, LQ9;->c()Lpb;

    move-result-object v10

    .line 20
    iget-object v10, v10, Lpb;->v:Ljava/util/List;

    .line 21
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    mul-int v9, v9, v10

    :goto_2
    if-lez v8, :cond_4

    .line 22
    iget v8, v1, LQ9;->l0:I

    add-int/2addr v9, v8

    .line 23
    :cond_4
    iget v8, v1, LQ9;->k0:I

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 24
    iget-boolean v9, v1, LQ9;->z0:Z

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    .line 25
    :goto_3
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v4

    .line 26
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 27
    invoke-virtual {v5, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 28
    iget-object v5, v1, LQ9;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v11, v1, LQ9;->O:Landroid/widget/FrameLayout;

    .line 29
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v5, v11

    .line 30
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v11, v5

    .line 31
    iget-object v5, v1, LQ9;->G:Landroid/view/View;

    const/16 v12, 0x8

    if-nez v5, :cond_6

    if-lez v6, :cond_6

    if-gt v9, v11, :cond_6

    .line 32
    iget-object v4, v1, LQ9;->Q:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v4, v1, LQ9;->Q:Landroid/widget/ImageView;

    invoke-static {v4, v6}, LQ9;->b(Landroid/view/View;I)V

    goto :goto_4

    .line 34
    :cond_6
    iget-object v5, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-static {v5}, LQ9;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, v1, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v5, v1, LQ9;->O:Landroid/widget/FrameLayout;

    .line 35
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    if-lt v6, v5, :cond_7

    .line 36
    iget-object v5, v1, LQ9;->Q:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    add-int v9, v8, v4

    const/4 v6, 0x0

    .line 37
    :goto_4
    invoke-virtual {v1}, LQ9;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    if-gt v9, v11, :cond_8

    .line 38
    iget-object v4, v1, LQ9;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 39
    :cond_8
    iget-object v4, v1, LQ9;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 40
    :goto_5
    iget-object v4, v1, LQ9;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v1, v4}, LQ9;->f(Z)V

    .line 41
    iget-object v4, v1, LQ9;->W:Landroid/widget/RelativeLayout;

    .line 42
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    .line 43
    :goto_7
    invoke-virtual {v1, v4}, LQ9;->c(Z)I

    move-result v4

    .line 44
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v4

    if-le v5, v11, :cond_b

    sub-int/2addr v5, v11

    sub-int/2addr v8, v5

    move v5, v11

    .line 45
    :cond_b
    iget-object v6, v1, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 46
    iget-object v6, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->clearAnimation()V

    .line 47
    iget-object v6, v1, LQ9;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->clearAnimation()V

    if-eqz v2, :cond_c

    .line 48
    iget-object v6, v1, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v4}, LQ9;->a(Landroid/view/View;I)V

    .line 49
    iget-object v4, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1, v4, v8}, LQ9;->a(Landroid/view/View;I)V

    .line 50
    iget-object v4, v1, LQ9;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, LQ9;->a(Landroid/view/View;I)V

    goto :goto_8

    .line 51
    :cond_c
    iget-object v6, v1, LQ9;->V:Landroid/widget/LinearLayout;

    invoke-static {v6, v4}, LQ9;->b(Landroid/view/View;I)V

    .line 52
    iget-object v4, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-static {v4, v8}, LQ9;->b(Landroid/view/View;I)V

    .line 53
    iget-object v4, v1, LQ9;->O:Landroid/widget/FrameLayout;

    invoke-static {v4, v5}, LQ9;->b(Landroid/view/View;I)V

    .line 54
    :goto_8
    iget-object v4, v1, LQ9;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, LQ9;->b(Landroid/view/View;I)V

    .line 55
    invoke-virtual {v1}, LQ9;->c()Lpb;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, LQ9;->c()Lpb;

    move-result-object v4

    .line 56
    iget-object v4, v4, Lpb;->v:Ljava/util/List;

    :goto_9
    if-nez v4, :cond_e

    .line 57
    iget-object v2, v1, LQ9;->b0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 58
    iget-object v1, v1, LQ9;->a0:LP9;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_c

    .line 59
    :cond_e
    iget-object v6, v1, LQ9;->b0:Ljava/util/List;

    .line 60
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 63
    iget-object v1, v1, LQ9;->a0:LP9;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_c

    :cond_f
    if-eqz v2, :cond_10

    .line 64
    iget-object v6, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    iget-object v8, v1, LQ9;->a0:LP9;

    .line 65
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v10

    const/4 v11, 0x0

    .line 67
    :goto_a
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_11

    add-int v12, v10, v11

    .line 68
    invoke-virtual {v8, v12}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    .line 69
    invoke-virtual {v6, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 70
    new-instance v14, Landroid/graphics/Rect;

    .line 71
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v14, v15, v5, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    invoke-virtual {v9, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    :cond_11
    if-eqz v2, :cond_12

    .line 73
    iget-object v3, v1, LQ9;->C:Landroid/content/Context;

    iget-object v5, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    iget-object v6, v1, LQ9;->a0:LP9;

    .line 74
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v10

    const/4 v11, 0x0

    .line 76
    :goto_b
    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_13

    add-int v12, v10, v11

    .line 77
    invoke-virtual {v6, v12}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    .line 78
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 79
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 80
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-virtual {v13, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 82
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    .line 84
    :cond_13
    iget-object v3, v1, LQ9;->b0:Ljava/util/List;

    .line 85
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 87
    iput-object v5, v1, LQ9;->c0:Ljava/util/Set;

    .line 88
    iget-object v3, v1, LQ9;->b0:Ljava/util/List;

    .line 89
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 91
    iput-object v5, v1, LQ9;->d0:Ljava/util/Set;

    .line 92
    iget-object v3, v1, LQ9;->b0:Ljava/util/List;

    iget-object v4, v1, LQ9;->c0:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 93
    iget-object v3, v1, LQ9;->b0:Ljava/util/List;

    iget-object v4, v1, LQ9;->d0:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v3, v1, LQ9;->a0:LP9;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    if-eqz v2, :cond_14

    .line 95
    iget-boolean v2, v1, LQ9;->z0:Z

    if-eqz v2, :cond_14

    iget-object v2, v1, LQ9;->c0:Ljava/util/Set;

    .line 96
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, v1, LQ9;->d0:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-lez v3, :cond_14

    .line 97
    iget-object v2, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 98
    iget-object v2, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->requestLayout()V

    const/4 v2, 0x1

    .line 99
    iput-boolean v2, v1, LQ9;->A0:Z

    .line 100
    iget-object v2, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 101
    new-instance v3, LH9;

    invoke-direct {v3, v1, v9, v8}, LH9;-><init>(LQ9;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    .line 102
    iput-object v2, v1, LQ9;->c0:Ljava/util/Set;

    .line 103
    iput-object v2, v1, LQ9;->d0:Ljava/util/Set;

    :goto_c
    return-void
.end method
