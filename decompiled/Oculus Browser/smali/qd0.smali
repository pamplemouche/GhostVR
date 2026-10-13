.class public Lqd0;
.super LCd0;
.source "PG"


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Lpd0;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, LCd0;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    new-instance p1, Lpd0;

    iget-object v0, p0, LCd0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lpd0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lqd0;->c:Lpd0;

    .line 3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance p1, Lod0;

    invoke-direct {p1, p0}, Lod0;-><init>(Lqd0;)V

    iput-object p1, p0, Lqd0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lqd0;->c:Lpd0;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LCd0;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lqd0;->c:Lpd0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 3
    iget-object v0, p0, Lqd0;->c:Lpd0;

    iget-object v1, p0, LCd0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 4
    iget-object v0, v0, Lpd0;->w:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, LCd0;->a:Landroid/view/ViewGroup;

    iget-object p2, p0, Lqd0;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lqd0;->c:Lpd0;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, LCd0;->a:Landroid/view/ViewGroup;

    iget-object p2, p0, Lqd0;->c:Lpd0;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqd0;->c:Lpd0;

    .line 2
    iget-object v0, v0, Lpd0;->w:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3
    iget-object v0, p0, Lqd0;->c:Lpd0;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 4
    iget-object v0, p0, Lqd0;->c:Lpd0;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, LCd0;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lqd0;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lqd0;->b()V

    return-void
.end method
