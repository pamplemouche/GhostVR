.class public LH9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic w:Ljava/util/Map;

.field public final synthetic x:Ljava/util/Map;

.field public final synthetic y:LQ9;


# direct methods
.method public constructor <init>(LQ9;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, LH9;->y:LQ9;

    iput-object p2, p0, LH9;->w:Ljava/util/Map;

    iput-object p3, p0, LH9;->x:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LH9;->y:LQ9;

    iget-object v1, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v1, v0, LH9;->y:LQ9;

    iget-object v2, v0, LH9;->w:Ljava/util/Map;

    iget-object v3, v0, LH9;->x:Ljava/util/Map;

    .line 3
    iget-object v4, v1, LQ9;->c0:Ljava/util/Set;

    if-eqz v4, :cond_6

    iget-object v5, v1, LQ9;->d0:Ljava/util/Set;

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v5, v1, LQ9;->d0:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5
    new-instance v5, LI9;

    invoke-direct {v5, v1}, LI9;-><init>(LQ9;)V

    .line 6
    iget-object v6, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :goto_0
    iget-object v9, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    if-ge v7, v9, :cond_4

    .line 8
    iget-object v9, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v9, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    add-int v11, v6, v7

    .line 9
    iget-object v12, v1, LQ9;->a0:LP9;

    invoke-virtual {v12, v11}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lqb;

    .line 10
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v13

    if-eqz v12, :cond_1

    .line 12
    iget v12, v12, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget v12, v1, LQ9;->j0:I

    mul-int v12, v12, v4

    add-int/2addr v12, v13

    .line 13
    :goto_1
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 14
    iget-object v15, v1, LQ9;->c0:Ljava/util/Set;

    if-eqz v15, :cond_2

    invoke-interface {v15, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 15
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 16
    iget v15, v1, LQ9;->D0:I

    move-object/from16 v16, v11

    int-to-long v10, v15

    invoke-virtual {v12, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    invoke-virtual {v14, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move v12, v13

    goto :goto_2

    :cond_2
    move-object/from16 v16, v11

    .line 18
    :goto_2
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    sub-int/2addr v12, v13

    int-to-float v11, v12

    const/4 v12, 0x0

    invoke-direct {v10, v12, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 19
    iget v11, v1, LQ9;->C0:I

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 20
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v10, 0x1

    .line 21
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 22
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 23
    iget-object v11, v1, LQ9;->F0:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez v8, :cond_3

    .line 24
    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v8, 0x1

    .line 25
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 26
    invoke-virtual {v9, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v11, v16

    .line 27
    invoke-interface {v2, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-interface {v3, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 29
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqb;

    .line 31
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 32
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 33
    iget-object v8, v1, LQ9;->d0:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 34
    new-instance v6, Lha;

    invoke-direct {v6, v5, v7}, Lha;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 35
    iput v5, v6, Lha;->h:F

    const/4 v8, 0x0

    .line 36
    iput v8, v6, Lha;->i:F

    .line 37
    iget v5, v1, LQ9;->E0:I

    int-to-long v9, v5

    .line 38
    iput-wide v9, v6, Lha;->e:J

    .line 39
    iget-object v5, v1, LQ9;->F0:Landroid/view/animation/Interpolator;

    .line 40
    iput-object v5, v6, Lha;->d:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    .line 41
    iget v9, v1, LQ9;->j0:I

    mul-int v9, v9, v4

    .line 42
    new-instance v10, Lha;

    invoke-direct {v10, v5, v7}, Lha;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    .line 43
    iput v9, v10, Lha;->g:I

    .line 44
    iget v5, v1, LQ9;->C0:I

    int-to-long v11, v5

    .line 45
    iput-wide v11, v10, Lha;->e:J

    .line 46
    iget-object v5, v1, LQ9;->F0:Landroid/view/animation/Interpolator;

    .line 47
    iput-object v5, v10, Lha;->d:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v5, Lx9;

    invoke-direct {v5, v1, v6}, Lx9;-><init>(LQ9;Lqb;)V

    .line 49
    iput-object v5, v10, Lha;->m:Lga;

    .line 50
    iget-object v5, v1, LQ9;->e0:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v10

    .line 51
    :goto_4
    iget-object v5, v1, LQ9;->Z:Landroid/support/v7/app/OverlayListView;

    .line 52
    iget-object v5, v5, Landroid/support/v7/app/OverlayListView;->w:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_5
    return-void
.end method
