.class public abstract Ls2;
.super Lz2;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public A0:Z

.field public B0:Z

.field public C0:Z

.field public u0:I

.field public v0:I

.field public w0:Z

.field public x0:Z

.field public y0:I

.field public z0:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls2;->u0:I

    .line 3
    iput v0, p0, Ls2;->v0:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ls2;->w0:Z

    .line 5
    iput-boolean v0, p0, Ls2;->x0:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Ls2;->y0:I

    return-void
.end method


# virtual methods
.method public I()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v1, p0, Ls2;->z0:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Ls2;->A0:Z

    .line 4
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public J()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-boolean v1, p0, Ls2;->C0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ls2;->B0:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Ls2;->B0:Z

    :cond_0
    return-void
.end method

.method public M()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Ls2;->A0:Z

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public a(Ld3;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ls2;->B0:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Ls2;->C0:Z

    .line 10
    move-object v2, p1

    check-cast v2, Lq2;

    .line 11
    invoke-virtual {v2, v0, p0, p2, v1}, Lq2;->a(ILz2;Ljava/lang/String;I)V

    .line 12
    iput-boolean v0, p0, Ls2;->A0:Z

    .line 13
    invoke-virtual {p1}, Ld3;->a()I

    move-result p1

    iput p1, p0, Ls2;->y0:I

    return p1
.end method

.method public a(LH2;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ls2;->B0:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Ls2;->C0:Z

    .line 3
    check-cast p1, LY2;

    if-eqz p1, :cond_0

    .line 4
    new-instance v2, Lq2;

    invoke-direct {v2, p1}, Lq2;-><init>(LY2;)V

    .line 5
    invoke-virtual {v2, v0, p0, p2, v1}, Lq2;->a(ILz2;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v2}, Ld3;->a()I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lz2;->a(Landroid/content/Context;)V

    .line 15
    iget-boolean p1, p0, Ls2;->C0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Ls2;->B0:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 18
    iget-boolean v0, p0, Ls2;->x0:Z

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 21
    iget-object v1, p0, Ls2;->z0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v1, p0, Ls2;->z0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 25
    :cond_3
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    iget-boolean v1, p0, Ls2;->w0:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 26
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 27
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 29
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lz2;->U:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ls2;->x0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 3
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ls2;->u0:I

    const-string v0, "android:theme"

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ls2;->v0:I

    const-string v0, "android:cancelable"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ls2;->w0:Z

    .line 6
    iget-boolean v0, p0, Ls2;->x0:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ls2;->x0:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ls2;->y0:I

    :cond_1
    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ls2;->x0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lz2;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ls2;->h(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Ls2;->z0:Landroid/app/Dialog;

    const-string v0, "layout_inflater"

    if-eqz p1, :cond_3

    .line 4
    iget v1, p0, Ls2;->u0:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6
    :cond_2
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 7
    :goto_0
    iget-object p1, p0, Ls2;->z0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    .line 8
    :cond_3
    iget-object p1, p0, Lz2;->O:LG2;

    .line 9
    iget-object p1, p1, LG2;->b:Landroid/content/Context;

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget v0, p0, Ls2;->u0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    :cond_1
    iget v0, p0, Ls2;->v0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Ls2;->w0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Ls2;->x0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    :cond_4
    iget v0, p0, Ls2;->y0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public g(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ls2;->B0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls2;->B0:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Ls2;->C0:Z

    .line 4
    iget-object v2, p0, Ls2;->z0:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 6
    :cond_1
    iput-boolean v0, p0, Ls2;->A0:Z

    .line 7
    iget v2, p0, Ls2;->y0:I

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    .line 8
    iget-object p1, p0, Lz2;->N:LY2;

    if-eqz p1, :cond_3

    if-ltz v2, :cond_2

    .line 9
    new-instance v4, LW2;

    invoke-direct {v4, p1, v3, v2, v0}, LW2;-><init>(LY2;Ljava/lang/String;II)V

    invoke-virtual {p1, v4, v1}, LY2;->a(LV2;Z)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Ls2;->y0:I

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    invoke-static {v0, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    throw v3

    .line 13
    :cond_4
    iget-object v0, p0, Lz2;->N:LY2;

    if-eqz v0, :cond_6

    .line 14
    new-instance v1, Lq2;

    invoke-direct {v1, v0}, Lq2;-><init>(LY2;)V

    .line 15
    new-instance v0, Lp2;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Lp2;-><init>(ILz2;)V

    invoke-virtual {v1, v0}, Lq2;->a(Lp2;)V

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {v1}, Ld3;->b()I

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v1}, Ld3;->a()I

    :goto_0
    return-void

    .line 18
    :cond_6
    throw v3
.end method

.method public abstract h(Landroid/os/Bundle;)Landroid/app/Dialog;
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Ls2;->w0:Z

    .line 2
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    :cond_0
    return-void
.end method
