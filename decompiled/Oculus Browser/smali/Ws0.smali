.class public LWs0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LZs0;

.field public final b:Z

.field public final c:Landroid/app/Dialog;

.field public final d:Lle1;

.field public final e:LBd1;

.field public final f:LDd1;

.field public g:Landroid/animation/Animator;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LZs0;Landroid/view/View;ZLBd1;LDd1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LWs0;->a:LZs0;

    .line 3
    iput-boolean p4, p0, LWs0;->b:Z

    .line 4
    iput-object p5, p0, LWs0;->e:LBd1;

    .line 5
    iput-object p6, p0, LWs0;->f:LDd1;

    const/4 p5, 0x4

    .line 6
    invoke-virtual {p2, p5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p2, p0, LWs0;->a:LZs0;

    new-instance p5, LPs0;

    invoke-direct {p5, p0}, LPs0;-><init>(LWs0;)V

    invoke-virtual {p2, p5}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    if-eqz p4, :cond_0

    .line 8
    new-instance p2, LUs0;

    invoke-direct {p2, p0, p1, p3}, LUs0;-><init>(LWs0;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    :goto_0
    iget-object p3, p0, LWs0;->a:LZs0;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 11
    new-instance p4, LSs0;

    invoke-direct {p4, p0, p1}, LSs0;-><init>(LWs0;Landroid/content/Context;)V

    .line 12
    invoke-virtual {p4, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 13
    invoke-virtual {p4, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    invoke-virtual {p4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x30

    .line 15
    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    .line 16
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 p6, 0x0

    invoke-direct {p3, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    new-instance p3, LTs0;

    invoke-direct {p3, p0}, LTs0;-><init>(LWs0;)V

    invoke-virtual {p4, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p6, -0x1

    invoke-direct {p3, p6, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p2, p3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, -0x2

    .line 19
    invoke-virtual {p1, p6, p2}, Landroid/view/Window;->setLayout(II)V

    .line 20
    iput-object p4, p0, LWs0;->c:Landroid/app/Dialog;

    .line 21
    iput-object p5, p0, LWs0;->d:Lle1;

    goto :goto_1

    .line 22
    :cond_1
    sget-object p1, LEd1;->q:[LUd1;

    .line 23
    invoke-static {p1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object p1

    .line 24
    sget-object p4, LEd1;->a:Lfe1;

    iget-object p6, p0, LWs0;->f:LDd1;

    .line 25
    new-instance v0, Lbe1;

    invoke-direct {v0, p5}, Lbe1;-><init>(LVd1;)V

    .line 26
    iput-object p6, v0, Lbe1;->a:Ljava/lang/Object;

    .line 27
    invoke-interface {p1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object p4, LEd1;->f:Lke1;

    .line 29
    new-instance p6, Lbe1;

    invoke-direct {p6, p5}, Lbe1;-><init>(LVd1;)V

    .line 30
    iput-object p2, p6, Lbe1;->a:Ljava/lang/Object;

    .line 31
    invoke-interface {p1, p4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object p2, LEd1;->m:Lhe1;

    .line 33
    new-instance p4, LWd1;

    invoke-direct {p4, p5}, LWd1;-><init>(LVd1;)V

    .line 34
    iput-boolean p3, p4, LWd1;->a:Z

    .line 35
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p2, Lle1;

    invoke-direct {p2, p1, p5}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 37
    iput-object p2, p0, LWs0;->d:Lle1;

    .line 38
    iput-object p5, p0, LWs0;->c:Landroid/app/Dialog;

    :goto_1
    return-void
.end method

.method public static synthetic a(LWs0;ZLjava/lang/Runnable;)Landroid/animation/Animator;
    .locals 15

    move-object v0, p0

    .line 5
    iget-boolean v1, v0, LWs0;->b:Z

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, LWs0;->a:LZs0;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    if-eqz p1, :cond_0

    .line 7
    iget-object v7, v0, LWs0;->a:LZs0;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8
    iget-object v1, v0, LWs0;->a:LZs0;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v6, [F

    aput v4, v8, v5

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 9
    sget-object v7, Lvd1;->i:Lvd1;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v7, v0, LWs0;->a:LZs0;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v6, [F

    aput v1, v9, v5

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 11
    sget-object v7, Lvd1;->h:Lvd1;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 14
    :goto_1
    iget-object v7, v0, LWs0;->a:LZs0;

    if-eqz v7, :cond_8

    .line 15
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 17
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v11, v7, LZs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v11, v7, LZs0;->x:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v11, v7, LZs0;->y:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v11, v7, LZs0;->z:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v11, v7, LZs0;->A:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v11, v7, LZs0;->B:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v11, v7, LZs0;->D:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v11, v7, LZs0;->E:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 26
    :goto_2
    iget-object v12, v7, LZs0;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 27
    iget-object v12, v7, LZs0;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 28
    :cond_2
    iget-object v7, v7, LZs0;->F:Landroid/widget/Button;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 29
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_5

    .line 30
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 31
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_4

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {v11, v4}, Landroid/view/View;->setAlpha(F)V

    .line 33
    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v6, [F

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v13, v5

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    mul-int/lit8 v12, v7, 0x14

    add-int/lit16 v12, v12, 0x96

    int-to-long v12, v12

    .line 34
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_4

    .line 35
    :cond_3
    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v6, [F

    aput v4, v13, v5

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 36
    :goto_4
    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 38
    :cond_5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_6

    const-wide/16 v3, 0x64

    .line 39
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v8, v3, v6

    .line 40
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 41
    new-instance v1, LVs0;

    move-object/from16 v3, p2

    invoke-direct {v1, p0, v3}, LVs0;-><init>(LWs0;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    iget-object v1, v0, LWs0;->g:Landroid/animation/Animator;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 43
    :cond_7
    iput-object v2, v0, LWs0;->g:Landroid/animation/Animator;

    return-object v2

    :cond_8
    const/4 v0, 0x0

    .line 44
    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, LWs0;->h:Z

    .line 2
    iget-boolean p1, p0, LWs0;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, LWs0;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, LWs0;->e:LBd1;

    iget-object v0, p0, LWs0;->d:Lle1;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LBd1;->a(Lle1;I)V

    :goto_0
    return-void
.end method
