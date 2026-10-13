.class public Lnj0;
.super LR9;
.source "PG"


# instance fields
.field public final F0:Landroid/os/Handler;

.field public final G0:LXi0;

.field public H0:LYi0;

.field public I0:Lcb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LR9;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnj0;->F0:Landroid/os/Handler;

    .line 3
    new-instance v0, LXi0;

    invoke-direct {v0}, LXi0;-><init>()V

    iput-object v0, p0, Lnj0;->G0:LXi0;

    .line 4
    iget-object v0, p0, Lnj0;->F0:Landroid/os/Handler;

    new-instance v1, Lmj0;

    invoke-direct {v1, p0}, Lmj0;-><init>(Lnj0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(LYi0;Lcb;)V
    .locals 1

    .line 5
    invoke-direct {p0}, LR9;-><init>()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnj0;->F0:Landroid/os/Handler;

    .line 7
    new-instance v0, LXi0;

    invoke-direct {v0}, LXi0;-><init>()V

    iput-object v0, p0, Lnj0;->G0:LXi0;

    .line 8
    iput-object p1, p0, Lnj0;->H0:LYi0;

    .line 9
    iput-object p2, p0, Lnj0;->I0:Lcb;

    return-void
.end method


# virtual methods
.method public M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnj0;->G0:LXi0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi0;->b(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0}, Ls2;->M()V

    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    invoke-super {p0}, LR9;->N()V

    .line 2
    iget-object v0, p0, Lnj0;->G0:LXi0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi0;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)LQ9;
    .locals 0

    .line 1
    new-instance p2, LQ9;

    invoke-direct {p2, p1}, LQ9;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lnj0;->H0:LYi0;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p1, LYi0;->d:Lpj0;

    .line 5
    invoke-interface {p1}, Lpj0;->a()V

    .line 6
    iget-object p1, p0, Lnj0;->H0:LYi0;

    .line 7
    iget-object p1, p1, LYi0;->c:Lrb;

    .line 8
    iget-object v0, p0, Lnj0;->I0:Lcb;

    invoke-virtual {p1, v0}, Lrb;->b(Lcb;)V

    .line 9
    iget-object p1, p0, Lnj0;->H0:LYi0;

    const/4 v0, 0x0

    iput-object v0, p1, LYi0;->e:Ls2;

    return-void
.end method
