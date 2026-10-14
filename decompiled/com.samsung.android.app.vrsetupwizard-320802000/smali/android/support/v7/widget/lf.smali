.class Landroid/support/v7/widget/lf;
.super Landroid/support/v4/view/cs;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/ld;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ld;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/lf;->b:Landroid/support/v7/widget/ld;

    iput p2, p0, Landroid/support/v7/widget/lf;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/cs;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/lf;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/lf;->b:Landroid/support/v7/widget/ld;

    iget-object p1, p1, Landroid/support/v7/widget/ld;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Landroid/support/v7/widget/lf;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/lf;->b:Landroid/support/v7/widget/ld;

    iget-object p1, p1, Landroid/support/v7/widget/ld;->a:Landroid/support/v7/widget/Toolbar;

    iget v0, p0, Landroid/support/v7/widget/lf;->a:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/lf;->c:Z

    return-void
.end method
