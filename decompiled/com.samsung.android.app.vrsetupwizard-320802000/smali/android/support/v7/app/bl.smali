.class Landroid/support/v7/app/bl;
.super Landroid/support/v4/view/cs;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bk;


# direct methods
.method constructor <init>(Landroid/support/v7/app/bk;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    invoke-direct {p0}, Landroid/support/v4/view/cs;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-boolean p1, p1, Landroid/support/v7/app/bk;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/bk;->n:Landroid/support/v7/view/l;

    invoke-virtual {p1}, Landroid/support/v7/app/bk;->h()V

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/app/bl;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Landroid/support/v4/view/be;->n(Landroid/view/View;)V

    :cond_1
    return-void
.end method
