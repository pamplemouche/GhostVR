.class public La9;
.super LT7;
.source "PG"


# instance fields
.field public final synthetic a:Lk9;


# direct methods
.method public constructor <init>(Lk9;)V
    .locals 0

    .line 1
    iput-object p1, p0, La9;->a:Lk9;

    invoke-direct {p0}, LT7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, La9;->a:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, La9;->a:Lk9;

    iget-object p1, p1, Lk9;->M:LR7;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LR7;->a(LS7;)LR7;

    .line 3
    iget-object p1, p0, La9;->a:Lk9;

    iput-object v0, p1, Lk9;->M:LR7;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, La9;->a:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LPd;->setVisibility(I)V

    .line 2
    iget-object p1, p0, La9;->a:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 3
    iget-object p1, p0, La9;->a:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, La9;->a:Lk9;

    iget-object p1, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, LA7;->x(Landroid/view/View;)V

    :cond_0
    return-void
.end method
