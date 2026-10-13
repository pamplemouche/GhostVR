.class public LQc;
.super LNc;
.source "PG"

# interfaces
.implements Lod;


# instance fields
.field public A:LMc;

.field public B:Ljava/lang/ref/WeakReference;

.field public C:Z

.field public D:Lqd;

.field public y:Landroid/content/Context;

.field public z:Landroid/support/v7/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;LMc;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, LNc;-><init>()V

    .line 2
    iput-object p1, p0, LQc;->y:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 4
    iput-object p3, p0, LQc;->A:LMc;

    .line 5
    new-instance p1, Lqd;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lqd;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 6
    iput p2, p1, Lqd;->H:I

    .line 7
    iput-object p1, p0, LQc;->D:Lqd;

    .line 8
    iput-object p0, p1, Lqd;->A:Lod;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 10
    iget-boolean v0, p0, LQc;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, LQc;->C:Z

    .line 12
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 13
    iget-object v0, p0, LQc;->A:LMc;

    invoke-interface {v0, p0}, LMc;->a(LNc;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget-object v0, p0, LQc;->y:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 6
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->F:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 8
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, LQc;->B:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->F:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public a(Lqd;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, LQc;->g()V

    .line 21
    iget-object p1, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 22
    iget-object p1, p1, LPd;->z:Lee;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lee;->f()Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 14
    iput-boolean p1, p0, LNc;->x:Z

    .line 15
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 16
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarContextView;->N:Z

    if-eq p1, v1, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 18
    :cond_0
    iput-boolean p1, v0, Landroid/support/v7/widget/ActionBarContextView;->N:Z

    return-void
.end method

.method public a(Lqd;Landroid/view/MenuItem;)Z
    .locals 0

    .line 19
    iget-object p1, p0, LQc;->A:LMc;

    invoke-interface {p1, p0, p2}, LMc;->a(LNc;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, LQc;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 4
    iget-object v0, p0, LQc;->y:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 6
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->E:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->E:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, LQc;->D:Lqd;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, LVc;

    iget-object v1, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LVc;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->F:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->E:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, LQc;->A:LMc;

    iget-object v1, p0, LQc;->D:Lqd;

    invoke-interface {v0, p0, v1}, LMc;->b(LNc;Landroid/view/Menu;)Z

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQc;->z:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->N:Z

    return v0
.end method
