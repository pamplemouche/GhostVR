.class Landroid/support/v7/app/ar;
.super Landroid/support/v4/view/cs;


# instance fields
.field final synthetic a:Landroid/support/v7/app/aq;


# direct methods
.method constructor <init>(Landroid/support/v7/app/aq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    invoke-direct {p0}, Landroid/support/v4/view/cs;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/be;->n(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/cn;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/cn;->a(Landroid/support/v4/view/cr;)Landroid/support/v4/view/cn;

    iget-object p1, p0, Landroid/support/v7/app/ar;->a:Landroid/support/v7/app/aq;

    iget-object p1, p1, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/cn;

    return-void
.end method
