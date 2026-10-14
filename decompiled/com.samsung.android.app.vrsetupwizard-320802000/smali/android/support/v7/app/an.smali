.class Landroid/support/v7/app/an;
.super Landroid/support/v4/view/cs;


# instance fields
.field final synthetic a:Landroid/support/v7/app/am;


# direct methods
.method constructor <init>(Landroid/support/v7/app/am;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/am;

    invoke-direct {p0}, Landroid/support/v4/view/cs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/am;

    iget-object p1, p1, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/am;

    iget-object p1, p1, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/am;

    iget-object p1, p1, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/cn;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/cn;->a(Landroid/support/v4/view/cr;)Landroid/support/v4/view/cn;

    iget-object p1, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/am;

    iget-object p1, p1, Landroid/support/v7/app/am;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->q:Landroid/support/v4/view/cn;

    return-void
.end method
