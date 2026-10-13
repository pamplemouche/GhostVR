.class public Lpa;
.super LNc;
.source "PG"

# interfaces
.implements Lod;


# instance fields
.field public A:LMc;

.field public B:Ljava/lang/ref/WeakReference;

.field public final synthetic C:Lqa;

.field public final y:Landroid/content/Context;

.field public final z:Lqd;


# direct methods
.method public constructor <init>(Lqa;Landroid/content/Context;LMc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpa;->C:Lqa;

    invoke-direct {p0}, LNc;-><init>()V

    .line 2
    iput-object p2, p0, Lpa;->y:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lpa;->A:LMc;

    .line 4
    new-instance p1, Lqd;

    invoke-direct {p1, p2}, Lqd;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 5
    iput p2, p1, Lqd;->H:I

    .line 6
    iput-object p1, p0, Lpa;->z:Lqd;

    .line 7
    iput-object p0, p1, Lqd;->A:Lod;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 6
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v1, v0, Lqa;->i:Lpa;

    if-eq v1, p0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-boolean v1, v0, Lqa;->q:Z

    iget-boolean v0, v0, Lqa;->r:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-nez v2, :cond_3

    .line 8
    iget-object v0, p0, Lpa;->C:Lqa;

    iput-object p0, v0, Lqa;->j:LNc;

    .line 9
    iget-object v1, p0, Lpa;->A:LMc;

    iput-object v1, v0, Lqa;->k:LMc;

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lpa;->A:LMc;

    invoke-interface {v0, p0}, LMc;->a(LNc;)V

    :goto_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lpa;->A:LMc;

    .line 12
    iget-object v1, p0, Lpa;->C:Lqa;

    invoke-virtual {v1, v3}, Lqa;->c(Z)V

    .line 13
    iget-object v1, p0, Lpa;->C:Lqa;

    iget-object v1, v1, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 14
    iget-object v2, v1, Landroid/support/v7/widget/ActionBarContextView;->G:Landroid/view/View;

    if-nez v2, :cond_4

    .line 15
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    .line 16
    :cond_4
    iget-object v1, p0, Lpa;->C:Lqa;

    iget-object v1, v1, Lqa;->e:LZe;

    check-cast v1, LXh;

    .line 17
    iget-object v1, v1, LXh;->a:Landroid/support/v7/widget/Toolbar;

    const/16 v2, 0x20

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 19
    iget-object v1, p0, Lpa;->C:Lqa;

    iget-object v2, v1, Lqa;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Lqa;->w:Z

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Z)V

    .line 20
    iget-object v1, p0, Lpa;->C:Lqa;

    iput-object v0, v1, Lqa;->i:Lpa;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 28
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->F:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/view/View;)V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpa;->B:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 24
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->F:Ljava/lang/CharSequence;

    .line 25
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public a(Lqd;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lpa;->A:LMc;

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lpa;->g()V

    .line 34
    iget-object p1, p0, Lpa;->C:Lqa;

    iget-object p1, p1, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 35
    iget-object p1, p1, LPd;->z:Lee;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Lee;->f()Z

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, LNc;->x:Z

    .line 2
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 3
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarContextView;->N:Z

    if-eq p1, v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    :cond_0
    iput-boolean p1, v0, Landroid/support/v7/widget/ActionBarContextView;->N:Z

    return-void
.end method

.method public a(Lqd;Landroid/view/MenuItem;)Z
    .locals 0

    .line 30
    iget-object p1, p0, Lpa;->A:LMc;

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1, p0, p2}, LMc;->a(LNc;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, Lpa;->B:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 6
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->E:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iput-object p1, v0, Landroid/support/v7/widget/ActionBarContextView;->E:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lpa;->z:Lqd;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, LVc;

    iget-object v1, p0, Lpa;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, LVc;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->F:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->E:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->i:Lpa;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lpa;->z:Lqd;

    invoke-virtual {v0}, Lqd;->i()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lpa;->A:LMc;

    iget-object v1, p0, Lpa;->z:Lqd;

    invoke-interface {v0, p0, v1}, LMc;->b(LNc;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lpa;->z:Lqd;

    invoke-virtual {v0}, Lqd;->h()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lpa;->z:Lqd;

    invoke-virtual {v1}, Lqd;->h()V

    throw v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lpa;->C:Lqa;

    iget-object v0, v0, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    .line 2
    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->N:Z

    return v0
.end method
