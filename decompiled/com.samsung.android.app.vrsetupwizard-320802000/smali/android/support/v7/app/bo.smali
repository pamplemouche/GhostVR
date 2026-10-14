.class public Landroid/support/v7/app/bo;
.super Landroid/support/v7/view/b;

# interfaces
.implements Landroid/support/v7/view/menu/q;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bk;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v7/view/menu/p;

.field private d:Landroid/support/v7/view/c;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/bk;Landroid/content/Context;Landroid/support/v7/view/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    invoke-direct {p0}, Landroid/support/v7/view/b;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/bo;->b:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    new-instance p1, Landroid/support/v7/view/menu/p;

    invoke-direct {p1, p2}, Landroid/support/v7/view/menu/p;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/p;->a(I)Landroid/support/v7/view/menu/p;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    iget-object p1, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/q;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/support/v7/view/i;

    iget-object v1, p0, Landroid/support/v7/app/bo;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/bo;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/bo;->d()V

    iget-object p1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->a()Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/bo;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/view/b;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/bo;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->h:Landroid/support/v7/app/bo;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-boolean v0, v0, Landroid/support/v7/app/bk;->l:Z

    iget-object v1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-boolean v1, v1, Landroid/support/v7/app/bk;->m:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/bk;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iput-object p0, v0, Landroid/support/v7/app/bk;->i:Landroid/support/v7/view/b;

    iget-object v1, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    iput-object v1, v0, Landroid/support/v7/app/bk;->j:Landroid/support/v7/view/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    invoke-interface {v0, p0}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    iget-object v1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/bk;->j(Z)V

    iget-object v1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v1, v1, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    iget-object v1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v1, v1, Landroid/support/v7/app/bk;->d:Landroid/support/v7/widget/bu;

    invoke-interface {v1}, Landroid/support/v7/widget/bu;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v1, v1, Landroid/support/v7/app/bk;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-boolean v2, v2, Landroid/support/v7/app/bk;->o:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iput-object v0, v1, Landroid/support/v7/app/bk;->h:Landroid/support/v7/app/bo;

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->h:Landroid/support/v7/app/bo;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->g()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    iget-object v1, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/c;->b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->h()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/p;->h()V

    throw v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->g()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/bo;->d:Landroid/support/v7/view/c;

    iget-object v1, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/p;->h()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/bo;->c:Landroid/support/v7/view/menu/p;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/p;->h()V

    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->a:Landroid/support/v7/app/bk;

    iget-object v0, v0, Landroid/support/v7/app/bk;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/bo;->e:Ljava/lang/ref/WeakReference;

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
