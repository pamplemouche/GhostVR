.class public Ljj0;
.super Lw9;
.source "PG"


# instance fields
.field public final G0:Landroid/os/Handler;

.field public final H0:LXi0;

.field public I0:LYi0;

.field public J0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lw9;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljj0;->G0:Landroid/os/Handler;

    .line 3
    new-instance v0, LXi0;

    invoke-direct {v0}, LXi0;-><init>()V

    iput-object v0, p0, Ljj0;->H0:LXi0;

    .line 4
    iget-object v0, p0, Ljj0;->G0:Landroid/os/Handler;

    new-instance v1, Lgj0;

    invoke-direct {v1, p0}, Lgj0;-><init>(Ljj0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(LYi0;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lw9;-><init>()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljj0;->G0:Landroid/os/Handler;

    .line 7
    new-instance v0, LXi0;

    invoke-direct {v0}, LXi0;-><init>()V

    iput-object v0, p0, Ljj0;->H0:LXi0;

    .line 8
    iput-object p1, p0, Ljj0;->I0:LYi0;

    return-void
.end method

.method public static synthetic a(Ljj0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqb;

    if-eqz p1, :cond_0

    .line 6
    iget-boolean p2, p1, Lqb;->g:Z

    if-eqz p2, :cond_0

    .line 7
    invoke-static {p1}, Luj0;->a(Lqb;)Luj0;

    move-result-object p1

    .line 8
    iget-object p2, p0, Ljj0;->I0:LYi0;

    .line 9
    iget-object p3, p2, LYi0;->d:Lpj0;

    .line 10
    iget-object p2, p2, LYi0;->a:Ljava/lang/String;

    .line 11
    invoke-interface {p3, p2, p1}, Lpj0;->a(Ljava/lang/String;Luj0;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Ljj0;->J0:Z

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 14
    throw p0
.end method


# virtual methods
.method public M()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljj0;->H0:LXi0;

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
    invoke-super {p0}, Ls2;->N()V

    .line 2
    iget-object v0, p0, Ljj0;->H0:LXi0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi0;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)Lv9;
    .locals 1

    .line 1
    new-instance p2, Lij0;

    .line 2
    iget v0, p0, Ls2;->v0:I

    .line 3
    invoke-direct {p2, p0, p1, v0}, Lij0;-><init>(Ljj0;Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    .line 3
    :cond_0
    iget-boolean p1, p0, Ljj0;->J0:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ljj0;->I0:LYi0;

    .line 4
    iget-object p1, p1, LYi0;->d:Lpj0;

    .line 5
    invoke-interface {p1}, Lpj0;->a()V

    :cond_1
    return-void
.end method
