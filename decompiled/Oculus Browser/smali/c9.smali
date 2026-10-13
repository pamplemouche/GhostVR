.class public Lc9;
.super LT7;
.source "PG"


# instance fields
.field public final synthetic a:Ld9;


# direct methods
.method public constructor <init>(Ld9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc9;->a:Ld9;

    invoke-direct {p0}, LT7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc9;->a:Ld9;

    iget-object p1, p1, Ld9;->b:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, LPd;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lc9;->a:Ld9;

    iget-object p1, p1, Ld9;->b:Lk9;

    iget-object v0, p1, Lk9;->K:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lc9;->a:Ld9;

    iget-object p1, p1, Ld9;->b:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, LA7;->x(Landroid/view/View;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lc9;->a:Ld9;

    iget-object p1, p1, Ld9;->b:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget-object p1, p0, Lc9;->a:Ld9;

    iget-object p1, p1, Ld9;->b:Lk9;

    iget-object p1, p1, Lk9;->M:LR7;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LR7;->a(LS7;)LR7;

    .line 8
    iget-object p1, p0, Lc9;->a:Ld9;

    iget-object p1, p1, Ld9;->b:Lk9;

    iput-object v0, p1, Lk9;->M:LR7;

    return-void
.end method
