.class public LOE0;
.super Ls2;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public D0:Z

.field public E0:Landroid/widget/CheckBox;

.field public F0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LOE0;->F0:I

    return-void
.end method


# virtual methods
.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 1
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, LOE0;->F0:I

    const-string v1, "ShowGAIAServiceType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, LOE0;->F0:I

    .line 3
    :cond_0
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/signin/SigninManager;->d()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1301d4

    const v1, 0x7f130260

    const/4 v2, 0x0

    const v3, 0x7f140245

    if-eqz p1, :cond_1

    .line 4
    new-instance v4, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v5

    invoke-direct {v4, v5, v3}, LO8;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1305a5

    .line 5
    invoke-virtual {v4, v3}, LO8;->b(I)LO8;

    .line 6
    invoke-virtual {v4, v1, p0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 7
    invoke-virtual {v4, v0, p0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const p1, 0x7f1305a4

    .line 8
    invoke-virtual {p0, p1, v0}, Lz2;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, v4, LO8;->a:LK8;

    iput-object p1, v0, LK8;->h:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v4}, LO8;->a()LP8;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    new-instance p1, LO8;

    .line 12
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    invoke-direct {p1, v4, v3}, LO8;-><init>(Landroid/content/Context;I)V

    .line 13
    iget-object v3, p1, LO8;->a:LK8;

    iget-object v3, v3, LK8;->a:Landroid/content/Context;

    .line 14
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e019f

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0380

    .line 16
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, LOE0;->E0:Landroid/widget/CheckBox;

    const v4, 0x102000b

    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1305a6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f1305a7

    .line 18
    invoke-virtual {p1, v4}, LO8;->b(I)LO8;

    .line 19
    iget-object v4, p1, LO8;->a:LK8;

    iput-object v3, v4, LK8;->u:Landroid/view/View;

    .line 20
    iput v2, v4, LK8;->t:I

    .line 21
    iput-boolean v2, v4, LK8;->v:Z

    .line 22
    invoke-virtual {p1, v1, p0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 23
    invoke-virtual {p1, v0, p0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 24
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x6

    .line 1
    iget p2, p0, LOE0;->F0:I

    .line 2
    invoke-static {p1, p2}, LJ/N;->MAoV8w8M(II)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LOE0;->D0:Z

    .line 4
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/signin/SigninManager;->d()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, LOE0;->E0:Landroid/widget/CheckBox;

    .line 6
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const-string v0, "Signin.UserRequestedWipeDataOnSignout"

    .line 7
    invoke-static {v0, p2}, LfV;->a(Ljava/lang/String;Z)V

    .line 8
    :cond_0
    iget-object p2, p0, Lz2;->D:Lz2;

    .line 9
    check-cast p2, LNE0;

    .line 10
    iget-object v0, p0, LOE0;->E0:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, LNE0;->a(Z)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    :cond_0
    const/4 p1, 0x7

    .line 3
    iget v0, p0, LOE0;->F0:I

    .line 4
    invoke-static {p1, v0}, LJ/N;->MAoV8w8M(II)V

    .line 5
    iget-object p1, p0, Lz2;->D:Lz2;

    .line 6
    check-cast p1, LNE0;

    .line 7
    iget-boolean v0, p0, LOE0;->D0:Z

    invoke-interface {p1, v0}, LNE0;->b(Z)V

    return-void
.end method
