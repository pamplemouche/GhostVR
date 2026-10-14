.class Landroid/support/design/widget/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/t;


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/k;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/design/widget/k;->a:Landroid/support/design/widget/g;

    invoke-virtual {p1}, Landroid/support/design/widget/g;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/support/design/widget/g;->a:Landroid/os/Handler;

    new-instance v0, Landroid/support/design/widget/l;

    invoke-direct {v0, p0}, Landroid/support/design/widget/l;-><init>(Landroid/support/design/widget/k;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
