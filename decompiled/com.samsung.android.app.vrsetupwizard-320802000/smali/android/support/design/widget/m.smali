.class Landroid/support/design/widget/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/u;


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/g;

    iget-object p1, p1, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/v;->setOnLayoutChangeListener(Landroid/support/design/widget/u;)V

    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/g;

    invoke-virtual {p1}, Landroid/support/design/widget/g;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/g;

    invoke-virtual {p1}, Landroid/support/design/widget/g;->c()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/g;

    invoke-virtual {p1}, Landroid/support/design/widget/g;->d()V

    :goto_0
    return-void
.end method
