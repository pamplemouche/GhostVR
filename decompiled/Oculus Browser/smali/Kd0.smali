.class public LKd0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/content/Context;

.field public final d:LrU;

.field public final e:Lsd0;

.field public final f:LJd0;

.field public g:LCd0;

.field public h:I

.field public i:Lde0;

.field public j:LNd0;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lsd0;LrU;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LKd0;->h:I

    .line 3
    iput-object p1, p0, LKd0;->b:Landroid/view/ViewGroup;

    .line 4
    iput-object p2, p0, LKd0;->c:Landroid/content/Context;

    .line 5
    iput-object p3, p0, LKd0;->e:Lsd0;

    .line 6
    invoke-interface {p3}, Lsd0;->c()LJd0;

    move-result-object p2

    iput-object p2, p0, LKd0;->f:LJd0;

    .line 7
    iput-object p4, p0, LKd0;->d:LrU;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42400000    # 48.0f

    mul-float p1, p1, p2

    iput p1, p0, LKd0;->a:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 47
    iget-object v0, p0, LKd0;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, LKd0;->i:Lde0;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, LKd0;->k:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 11

    .line 5
    iget v0, p0, LKd0;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, LKd0;->i:Lde0;

    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lde0;->E:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget v1, v0, Lde0;->x:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v1, v5

    neg-float v5, v1

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 9
    iget v5, v0, Lde0;->D:F

    add-float/2addr v5, v1

    iput v5, v0, Lde0;->D:F

    .line 10
    invoke-virtual {v0}, Lde0;->a()F

    move-result v1

    .line 11
    iget v5, v0, Lde0;->x:F

    sub-float v6, v1, v5

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v5, v8

    .line 12
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 13
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v6, v9

    double-to-float v6, v6

    mul-float v6, v6, v8

    .line 14
    iget-object v7, v0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :cond_1
    iget v7, v0, Lde0;->x:F

    div-float/2addr v1, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 16
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 17
    invoke-virtual {v0}, Lde0;->d()Z

    move-result v7

    .line 18
    iget-boolean v9, v0, Lde0;->N:Z

    if-eq v7, v9, :cond_2

    .line 19
    iget-object v9, v0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v9, v7}, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->a(Z)V

    if-eqz v7, :cond_2

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 21
    iput-boolean v3, v0, Lde0;->O:Z

    .line 22
    :cond_2
    iput-boolean v7, v0, Lde0;->N:Z

    .line 23
    iget v2, v0, Lde0;->M:I

    if-eqz v2, :cond_4

    if-eqz v7, :cond_3

    .line 24
    iget-object v7, v0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v7, v2}, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->a(I)V

    .line 25
    iget-object v2, v0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Lde0;->G:I

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v0}, Lde0;->b()V

    :cond_4
    :goto_0
    mul-float v6, v6, v5

    mul-float v6, v6, v8

    mul-float v5, v5, v1

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 27
    iget v2, v0, Lde0;->I:I

    iget-boolean v5, v0, Lde0;->L:Z

    if-eqz v5, :cond_5

    neg-int v1, v1

    :cond_5
    add-int/2addr v2, v1

    .line 28
    iget v1, v0, Lde0;->C:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lde0;->a(I)V

    .line 29
    :cond_6
    :goto_1
    iget-object v0, p0, LKd0;->j:LNd0;

    iget-object v1, p0, LKd0;->i:Lde0;

    .line 30
    invoke-virtual {v1}, Lde0;->a()F

    move-result v1

    iget-object v2, p0, LKd0;->i:Lde0;

    invoke-virtual {v2}, Lde0;->d()Z

    move-result v2

    .line 31
    invoke-interface {v0, p1, v1, v2}, LNd0;->a(FFZ)V

    .line 32
    iget-object p1, p0, LKd0;->i:Lde0;

    iget-object v0, p0, LKd0;->j:LNd0;

    invoke-interface {v0}, LNd0;->a()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 33
    iget-object p1, p1, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {p1, v0, v3}, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->a(ZZ)V

    .line 34
    iget-object p1, p0, LKd0;->j:LNd0;

    invoke-interface {p1}, LNd0;->o()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 35
    iget-object p1, p0, LKd0;->i:Lde0;

    .line 36
    iput-boolean v4, p1, Lde0;->B:Z

    .line 37
    iget-object v0, p1, Lde0;->P:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Lde0;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 38
    iput v4, p0, LKd0;->h:I

    goto :goto_2

    .line 39
    :cond_7
    iget v0, p0, LKd0;->h:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, LKd0;->g:LCd0;

    if-eqz v0, :cond_8

    neg-float p1, p1

    .line 40
    invoke-virtual {v0, p1}, LCd0;->a(F)V

    :cond_8
    :goto_2
    return-void
.end method

.method public a(FF)V
    .locals 2

    .line 1
    iget v0, p0, LKd0;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LKd0;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, LKd0;->g:LCd0;

    if-nez v0, :cond_1

    iget-object v0, p0, LKd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCd0;

    iput-object v0, p0, LKd0;->g:LCd0;

    .line 3
    :cond_1
    iget-object v0, p0, LKd0;->g:LCd0;

    invoke-virtual {v0, p1, p2}, LCd0;->a(FF)V

    const/4 p1, 0x3

    .line 4
    iput p1, p0, LKd0;->h:I

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 41
    iget v0, p0, LKd0;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LKd0;->i:Lde0;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, LKd0;->a()V

    .line 43
    iget-object v0, p0, LKd0;->i:Lde0;

    if-eqz p1, :cond_0

    iget-object p1, p0, LKd0;->j:LNd0;

    invoke-interface {p1}, LNd0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lde0;->a(Z)V

    .line 44
    iget-object p1, p0, LKd0;->j:LNd0;

    invoke-interface {p1}, LNd0;->b()V

    goto :goto_1

    .line 45
    :cond_1
    iget p1, p0, LKd0;->h:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, LKd0;->g:LCd0;

    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, LCd0;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 50
    iget-object v0, p0, LKd0;->g:LCd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LCd0;->a()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 7

    .line 1
    iget v0, p0, LKd0;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LKd0;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, LKd0;->i:Lde0;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Lde0;

    iget-object v3, p0, LKd0;->c:Landroid/content/Context;

    invoke-direct {v0, v3}, Lde0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LKd0;->i:Lde0;

    .line 4
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, LKd0;->i:Lde0;

    new-instance v3, LFd0;

    invoke-direct {v3, p0}, LFd0;-><init>(LKd0;)V

    .line 6
    iput-object v3, v0, Lde0;->z:Lbe0;

    .line 7
    iget-object v0, p0, LKd0;->i:Lde0;

    new-instance v3, LGd0;

    invoke-direct {v3, p0}, LGd0;-><init>(LKd0;)V

    .line 8
    iput-object v3, v0, Lde0;->A:Lce0;

    .line 9
    invoke-static {}, LPY;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OverscrollHistoryNavigation"

    const-string v3, "overscroll_history_navigation_bottom_sheet"

    .line 10
    invoke-static {v0, v3, v2}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, LKd0;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, LKd0;->c:Landroid/content/Context;

    iget-object v4, p0, LKd0;->e:Lsd0;

    .line 12
    invoke-interface {v4}, Lsd0;->a()LrU;

    move-result-object v4

    iget-object v5, p0, LKd0;->e:Lsd0;

    invoke-interface {v5}, Lsd0;->b()LMd0;

    move-result-object v5

    .line 13
    new-instance v6, LTd0;

    invoke-direct {v6, v0, v3, v4, v5}, LTd0;-><init>(Landroid/view/View;Landroid/content/Context;LrU;LMd0;)V

    goto :goto_1

    .line 14
    :cond_2
    sget-object v6, LNd0;->a:LNd0;

    :goto_1
    iput-object v6, p0, LKd0;->j:LNd0;

    .line 15
    :cond_3
    iget-object v0, p0, LKd0;->i:Lde0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 16
    iget-object v0, p0, LKd0;->i:Lde0;

    .line 17
    iput-boolean p1, v0, Lde0;->L:Z

    .line 18
    iget-object v0, v0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    if-eqz p1, :cond_4

    const v3, 0x7f0800fd

    goto :goto_2

    :cond_4
    const v3, 0x7f0800fa

    .line 19
    :goto_2
    iget-object v4, v0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->D:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v4, v0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->D:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->a(Z)V

    const/4 v0, 0x2

    if-nez p1, :cond_6

    .line 22
    iget-object v3, p0, LKd0;->f:LJd0;

    check-cast v3, Lfe0;

    .line 23
    iget-object v4, v3, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->a()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, v3, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ChromeActivity;->a0()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_7

    :cond_6
    if-nez p1, :cond_b

    .line 24
    iget-object v3, p0, LKd0;->f:LJd0;

    check-cast v3, Lfe0;

    .line 25
    iget-object v4, v3, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->a()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v3, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 26
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ChromeActivity;->a0()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, v3, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 27
    iget-object v4, v3, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 28
    sget-object v5, LdH0;->y:Ljava/lang/Class;

    invoke-virtual {v4, v5}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v4

    check-cast v4, LdH0;

    if-nez v4, :cond_7

    goto :goto_4

    .line 29
    :cond_7
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 30
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 32
    iget-object v3, v4, LdH0;->x:Ljava/lang/String;

    .line 33
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_b

    const/4 v3, 0x2

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    .line 34
    :goto_7
    iget-object v4, p0, LKd0;->i:Lde0;

    .line 35
    iput v3, v4, Lde0;->M:I

    .line 36
    iget-object v5, p0, LKd0;->l:Ljava/lang/Runnable;

    if-eqz v5, :cond_c

    .line 37
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v4, 0x0

    .line 38
    iput-object v4, p0, LKd0;->l:Ljava/lang/Runnable;

    .line 39
    :cond_c
    iget-object v4, p0, LKd0;->i:Lde0;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_d

    iget-object v4, p0, LKd0;->b:Landroid/view/ViewGroup;

    iget-object v5, p0, LKd0;->i:Lde0;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    :cond_d
    iget-object v4, p0, LKd0;->i:Lde0;

    .line 41
    invoke-virtual {v4}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-boolean v5, v4, Lde0;->B:Z

    if-nez v5, :cond_10

    iget-object v5, v4, Lde0;->z:Lbe0;

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    .line 42
    iput v5, v4, Lde0;->D:F

    .line 43
    iput-boolean v1, v4, Lde0;->E:Z

    .line 44
    iput-boolean v2, v4, Lde0;->N:Z

    .line 45
    iget-boolean v5, v4, Lde0;->L:Z

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_8

    :cond_f
    iget v5, v4, Lde0;->G:I

    neg-int v5, v5

    .line 46
    :goto_8
    iput v5, v4, Lde0;->I:I

    iput v5, v4, Lde0;->C:I

    .line 47
    iget-object v4, v4, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v4, v2, v2}, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->a(ZZ)V

    .line 48
    :cond_10
    :goto_9
    iget-object v4, p0, LKd0;->j:LNd0;

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    :goto_a
    invoke-interface {v4, p1, v1}, LNd0;->a(ZZ)V

    .line 49
    iput v0, p0, LKd0;->h:I

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget v0, p0, LKd0;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LKd0;->i:Lde0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, LKd0;->a()V

    .line 3
    iget-object v0, p0, LKd0;->i:Lde0;

    invoke-virtual {v0}, Lde0;->c()V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, LKd0;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LKd0;->g:LCd0;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, LCd0;->c()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, LKd0;->h:I

    return-void
.end method
