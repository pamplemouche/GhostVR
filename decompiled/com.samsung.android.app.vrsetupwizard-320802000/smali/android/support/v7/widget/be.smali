.class Landroid/support/v7/widget/be;
.super Landroid/support/v7/widget/cn;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bg;

.field final synthetic b:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/bg;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/AppCompatSpinner;

    iput-object p3, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bg;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/cn;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/al;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bg;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/bg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/bg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->d()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
