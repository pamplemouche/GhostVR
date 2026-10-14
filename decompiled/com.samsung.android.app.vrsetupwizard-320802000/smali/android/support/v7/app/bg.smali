.class Landroid/support/v7/app/bg;
.super Landroid/support/v7/view/n;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bb;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/bb;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/bg;->a:Landroid/support/v7/app/bb;

    invoke-direct {p0, p2}, Landroid/support/v7/view/n;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/bg;->a:Landroid/support/v7/app/bb;

    iget-object v0, v0, Landroid/support/v7/app/bb;->a:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/view/n;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/n;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroid/support/v7/app/bg;->a:Landroid/support/v7/app/bb;

    iget-boolean p2, p2, Landroid/support/v7/app/bb;->b:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/app/bg;->a:Landroid/support/v7/app/bb;

    iget-object p2, p2, Landroid/support/v7/app/bb;->a:Landroid/support/v7/widget/bu;

    invoke-interface {p2}, Landroid/support/v7/widget/bu;->m()V

    iget-object p2, p0, Landroid/support/v7/app/bg;->a:Landroid/support/v7/app/bb;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/support/v7/app/bb;->b:Z

    :cond_0
    return p1
.end method
