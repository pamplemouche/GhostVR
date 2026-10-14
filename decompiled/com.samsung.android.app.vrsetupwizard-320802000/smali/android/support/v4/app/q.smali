.class Landroid/support/v4/app/q;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v4/app/p;


# direct methods
.method constructor <init>(Landroid/support/v4/app/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/q;->a:Landroid/support/v4/app/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/q;->a:Landroid/support/v4/app/p;

    invoke-virtual {p1}, Landroid/support/v4/app/p;->b()V

    iget-object p1, p0, Landroid/support/v4/app/q;->a:Landroid/support/v4/app/p;

    iget-object p1, p1, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/u;

    invoke-virtual {p1}, Landroid/support/v4/app/u;->n()Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/q;->a:Landroid/support/v4/app/p;

    iget-boolean p1, p1, Landroid/support/v4/app/p;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v4/app/q;->a:Landroid/support/v4/app/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/p;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method
