.class public Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;
.super Ls2;
.source "PG"


# instance fields
.field public D0:Landroid/content/DialogInterface$OnClickListener;

.field public E0:LaA0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;

    return-void
.end method

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
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e014e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0337

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;->E0:LaA0;

    iget-object v1, v1, LaA0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0336

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;->E0:LaA0;

    iget-object v1, v1, LaA0;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    new-instance v0, LO8;

    .line 9
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v2, 0x7f140246

    invoke-direct {v0, v1, v2}, LO8;-><init>(Landroid/content/Context;I)V

    .line 10
    iget-object v1, v0, LO8;->a:LK8;

    iput-object p1, v1, LK8;->u:Landroid/view/View;

    const/4 p1, 0x0

    .line 11
    iput p1, v1, LK8;->t:I

    .line 12
    iput-boolean p1, v1, LK8;->v:Z

    const p1, 0x7f130546

    .line 13
    invoke-virtual {v0, p1}, LO8;->b(I)LO8;

    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;->E0:LaA0;

    iget p1, p1, LaA0;->a:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;->D0:Landroid/content/DialogInterface$OnClickListener;

    .line 14
    invoke-virtual {v0, p1, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const p1, 0x7f130207

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;->D0:Landroid/content/DialogInterface$OnClickListener;

    .line 15
    invoke-virtual {v0, p1, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 16
    invoke-virtual {v0}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method
