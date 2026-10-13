.class public Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;
.super Ls2;
.source "PG"


# instance fields
.field public D0:LkA0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ls2;->b(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    :cond_0
    return-void
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, LO8;

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f140246

    invoke-direct {p1, v0, v1}, LO8;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;->D0:LkA0;

    const v1, 0x7f130544

    .line 3
    invoke-virtual {p1, v1, v0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;->D0:LkA0;

    const v1, 0x7f1301d4

    .line 4
    invoke-virtual {p1, v1, v0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 5
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, LP3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130573

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p1, LO8;->a:LK8;

    iput-object v0, v1, LK8;->h:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;->D0:LkA0;

    if-eqz p1, :cond_2

    check-cast p1, LfA0;

    .line 4
    iget-object v0, p1, LfA0;->w:LjA0;

    .line 5
    iget v1, v0, LjA0;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 6
    iput v1, v0, LjA0;->a:I

    .line 7
    :cond_1
    iget-object p1, p1, LfA0;->w:LjA0;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, LjA0;->f:Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

    .line 9
    iget-object v0, p1, LjA0;->e:LaA0;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, LjA0;->b()V

    :cond_2
    return-void
.end method
