.class public Ld9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMc;


# instance fields
.field public a:LMc;

.field public final synthetic b:Lk9;


# direct methods
.method public constructor <init>(Lk9;LMc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld9;->b:Lk9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ld9;->a:LMc;

    return-void
.end method


# virtual methods
.method public a(LNc;)V
    .locals 2

    .line 3
    iget-object v0, p0, Ld9;->a:LMc;

    invoke-interface {v0, p1}, LMc;->a(LNc;)V

    .line 4
    iget-object p1, p0, Ld9;->b:Lk9;

    iget-object v0, p1, Lk9;->K:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lk9;->y:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld9;->b:Lk9;

    iget-object v0, v0, Lk9;->L:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object p1, p0, Ld9;->b:Lk9;

    iget-object v0, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lk9;->e()V

    .line 8
    iget-object p1, p0, Ld9;->b:Lk9;

    iget-object v0, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LR7;->a(F)LR7;

    iput-object v0, p1, Lk9;->M:LR7;

    .line 9
    iget-object p1, p0, Ld9;->b:Lk9;

    iget-object p1, p1, Lk9;->M:LR7;

    new-instance v0, Lc9;

    invoke-direct {v0, p0}, Lc9;-><init>(Ld9;)V

    .line 10
    iget-object v1, p1, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p1, v1, v0}, LR7;->a(Landroid/view/View;LS7;)V

    .line 12
    :cond_1
    iget-object p1, p0, Ld9;->b:Lk9;

    iget-object v0, p1, Lk9;->B:LR8;

    if-eqz v0, :cond_2

    .line 13
    iget-object p1, p1, Lk9;->I:LNc;

    invoke-interface {v0, p1}, LR8;->a(LNc;)V

    .line 14
    :cond_2
    iget-object p1, p0, Ld9;->b:Lk9;

    const/4 v0, 0x0

    iput-object v0, p1, Lk9;->I:LNc;

    return-void
.end method

.method public a(LNc;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld9;->a:LMc;

    invoke-interface {v0, p1, p2}, LMc;->a(LNc;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(LNc;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Ld9;->a:LMc;

    invoke-interface {v0, p1, p2}, LMc;->a(LNc;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(LNc;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld9;->a:LMc;

    invoke-interface {v0, p1, p2}, LMc;->b(LNc;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
