.class Landroid/support/v7/widget/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/df;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/df;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    iget-object v0, v0, Landroid/support/v7/widget/df;->c:Landroid/support/v7/widget/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    iget-object v0, v0, Landroid/support/v7/widget/df;->c:Landroid/support/v7/widget/ci;

    invoke-static {v0}, Landroid/support/v4/view/be;->x(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    iget-object v0, v0, Landroid/support/v7/widget/df;->c:Landroid/support/v7/widget/ci;

    invoke-virtual {v0}, Landroid/support/v7/widget/ci;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    iget-object v1, v1, Landroid/support/v7/widget/df;->c:Landroid/support/v7/widget/ci;

    invoke-virtual {v1}, Landroid/support/v7/widget/ci;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    iget-object v0, v0, Landroid/support/v7/widget/df;->c:Landroid/support/v7/widget/ci;

    invoke-virtual {v0}, Landroid/support/v7/widget/ci;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    iget v1, v1, Landroid/support/v7/widget/df;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    iget-object v0, v0, Landroid/support/v7/widget/df;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/dm;->a:Landroid/support/v7/widget/df;

    invoke-virtual {v0}, Landroid/support/v7/widget/df;->d()V

    :cond_0
    return-void
.end method
