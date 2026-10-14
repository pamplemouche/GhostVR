.class Landroid/support/v7/widget/dj;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/df;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/df;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/dj;->a:Landroid/support/v7/widget/df;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/dj;->a:Landroid/support/v7/widget/df;

    invoke-virtual {v0}, Landroid/support/v7/widget/df;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dj;->a:Landroid/support/v7/widget/df;

    invoke-virtual {v0}, Landroid/support/v7/widget/df;->d()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/dj;->a:Landroid/support/v7/widget/df;

    invoke-virtual {v0}, Landroid/support/v7/widget/df;->e()V

    return-void
.end method
