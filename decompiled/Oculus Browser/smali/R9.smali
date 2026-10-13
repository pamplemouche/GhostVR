.class public LR9;
.super Ls2;
.source "PG"


# instance fields
.field public D0:Landroid/app/Dialog;

.field public E0:Lbb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ls2;->h(Z)V

    return-void
.end method


# virtual methods
.method public N()V
    .locals 2

    .line 1
    invoke-super {p0}, Ls2;->N()V

    .line 2
    iget-object v0, p0, LR9;->D0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, LQ9;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQ9;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)LQ9;
    .locals 0

    .line 1
    new-instance p2, LQ9;

    invoke-direct {p2, p1}, LQ9;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LR9;->a(Landroid/content/Context;Landroid/os/Bundle;)LQ9;

    move-result-object p1

    iput-object p1, p0, LR9;->D0:Landroid/app/Dialog;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lz2;->c0:Z

    .line 2
    iget-object p1, p0, LR9;->D0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, LQ9;

    invoke-virtual {p1}, LQ9;->h()V

    :cond_0
    return-void
.end method
