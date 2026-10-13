.class public LvL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LsQ0;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:LtQ0;

.field public final d:Landroid/support/v7/widget/RecyclerView;

.field public final e:Landroid/widget/LinearLayout;

.field public f:Lorg/chromium/base/Callback;

.field public final g:LuQ0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LtQ0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LuL0;

    invoke-direct {v0, p0}, LuL0;-><init>(LvL0;)V

    iput-object v0, p0, LvL0;->g:LuQ0;

    .line 3
    iput-object p1, p0, LvL0;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, LvL0;->c:LtQ0;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f0e01cf

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, LvL0;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0b03e5

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, LvL0;->d:Landroid/support/v7/widget/RecyclerView;

    .line 7
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 10
    iget-object p1, p0, LvL0;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, LvL0;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LvL0;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x7f130615

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f130612

    return v0
.end method

.method public i()F
    .locals 4

    .line 1
    iget-object v0, p0, LvL0;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v1, p0, LvL0;->d:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, LBg;->a()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, LvL0;->d:Landroid/support/v7/widget/RecyclerView;

    .line 5
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 6
    invoke-virtual {v1, v2}, LBg;->b(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const v1, 0x7f070333

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "TouchToFillAndroid"

    const-string v3, "show_confirmation_button"

    .line 7
    invoke-static {v2, v3, v1}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f070335

    goto :goto_0

    :cond_1
    const v1, 0x7f070334

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, LvL0;->c:LtQ0;

    .line 9
    iget-object v1, v1, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 10
    iget v1, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    float-to-int v1, v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, LvL0;->c:LtQ0;

    .line 12
    iget-object v1, v1, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 13
    iget v1, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public j()I
    .locals 1

    const v0, 0x7f130613

    return v0
.end method

.method public k()I
    .locals 1

    const v0, 0x7f130614

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
