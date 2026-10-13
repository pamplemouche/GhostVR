.class public Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements LOM0;
.implements LqR0;


# instance fields
.field public A:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

.field public B:Landroid/support/v7/widget/RecyclerView;

.field public C:LpR0;

.field public D:Lorg/chromium/chrome/browser/ui/widget/FadingShadowView;

.field public E:Z

.field public F:I

.field public G:LRM0;

.field public final H:LDg;

.field public w:LBg;

.field public x:Landroid/view/ViewStub;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LkR0;

    invoke-direct {p1, p0}, LkR0;-><init>(Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->H:LDg;

    return-void
.end method

.method public static a(LQM0;Landroid/content/res/Resources;)I
    .locals 1

    .line 37
    iget p0, p0, LQM0;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    add-int/lit16 p0, p0, -0x258

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    mul-float p0, p0, p1

    float-to-int p0, p0

    const/high16 v0, 0x41800000    # 16.0f

    mul-float p1, p1, v0

    int-to-float p0, p0

    .line 40
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->w:LBg;

    invoke-virtual {v0}, LBg;->a()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 47
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->z:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->w:LBg;

    invoke-virtual {v0}, LBg;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->C:LpR0;

    iget-object p0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->w:LBg;

    invoke-virtual {p0}, LBg;->a()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, LpR0;->b(Z)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a()V

    return-void
.end method

.method public static final synthetic b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(LBg;)Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->w:LBg;

    const p1, 0x7f0b037a

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    .line 3
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->w:LBg;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->w:LBg;

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->H:LDg;

    .line 6
    iget-object p1, p1, LBg;->w:LCg;

    invoke-virtual {p1, v0}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Landroid/support/v7/widget/RecyclerView;->O:Z

    .line 9
    new-instance v0, LlR0;

    invoke-direct {v0, p0}, LlR0;-><init>(Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(LUg;)V

    .line 10
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    .line 11
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    return-object p1
.end method

.method public a(ILrR0;IIILTh;ZZ)LpR0;
    .locals 6

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->x:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 13
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->x:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, LpR0;

    .line 14
    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->C:LpR0;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p8

    .line 15
    invoke-virtual/range {v0 .. v5}, LpR0;->a(LrR0;IIIZ)V

    if-eqz p6, :cond_0

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->C:LpR0;

    .line 17
    iput-object p6, p1, Landroid/support/v7/widget/Toolbar;->f0:LTh;

    :cond_0
    const p1, 0x7f0b03df

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/FadingShadowView;

    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->D:Lorg/chromium/chrome/browser/ui/widget/FadingShadowView;

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f06018f

    .line 20
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 21
    new-instance p5, LoM0;

    invoke-direct {p5, p3}, LoM0;-><init>(I)V

    iput-object p5, p1, Lorg/chromium/chrome/browser/ui/widget/FadingShadowView;->w:LoM0;

    .line 22
    iput p4, p1, Lorg/chromium/chrome/browser/ui/widget/FadingShadowView;->x:I

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 24
    iput-boolean p7, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->E:Z

    .line 25
    iget-object p1, p2, LrR0;->d:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a()V

    .line 27
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->C:LpR0;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public final a()V
    .locals 3

    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->C:LpR0;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, -0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->C:LpR0;

    .line 43
    iget-object v0, v0, LpR0;->n0:LrR0;

    .line 44
    invoke-virtual {v0}, LrR0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->E:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 45
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->D:Lorg/chromium/chrome/browser/ui/widget/FadingShadowView;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public a(LQM0;)V
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a(LQM0;Landroid/content/res/Resources;)I

    move-result p1

    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->B:Landroid/support/v7/widget/RecyclerView;

    .line 31
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 32
    invoke-static {v0, p1, v1, p1, v2}, LA7;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a()V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0b023d

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;

    .line 36
    iget-object p1, p1, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LKd0;->a(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->G:LRM0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LRM0;->b()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0195

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0190

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->y:Landroid/widget/TextView;

    const v0, 0x7f0b0191

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->z:Landroid/view/View;

    const v0, 0x7f0b0243

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->A:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->b()V

    const v0, 0x7f0b001d

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->x:Landroid/view/ViewStub;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method
