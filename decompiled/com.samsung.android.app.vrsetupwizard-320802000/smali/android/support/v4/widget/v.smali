.class Landroid/support/v4/widget/v;
.super Landroid/support/v4/view/a/e;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/s;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/v;->a:Landroid/support/v4/widget/s;

    invoke-direct {p0}, Landroid/support/v4/view/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/view/a/b;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/v;->a:Landroid/support/v4/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/s;->a(I)Landroid/support/v4/view/a/b;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/a/b;->a(Landroid/support/v4/view/a/b;)Landroid/support/v4/view/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/v;->a:Landroid/support/v4/widget/s;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/s;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public b(I)Landroid/support/v4/view/a/b;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/v;->a:Landroid/support/v4/widget/s;

    invoke-static {p1}, Landroid/support/v4/widget/s;->a(Landroid/support/v4/widget/s;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/v;->a:Landroid/support/v4/widget/s;

    invoke-static {p1}, Landroid/support/v4/widget/s;->b(Landroid/support/v4/widget/s;)I

    move-result p1

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/v;->a(I)Landroid/support/v4/view/a/b;

    move-result-object p1

    return-object p1
.end method
