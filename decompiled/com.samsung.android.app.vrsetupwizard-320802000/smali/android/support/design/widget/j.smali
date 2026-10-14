.class Landroid/support/design/widget/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/br;


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/j;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/widget/j;->a:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/bj;->c(Landroid/support/design/widget/bl;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/widget/j;->a:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/bj;->d(Landroid/support/design/widget/bl;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/design/widget/j;->a:Landroid/support/design/widget/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/g;->a(I)V

    return-void
.end method
