.class public Lorg/chromium/chrome/browser/preferences/password/ProgressBarDialogFragment;
.super Ls2;
.source "PG"


# instance fields
.field public D0:Landroid/content/DialogInterface$OnClickListener;


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
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e014f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0339

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/MaterialProgressBar;

    .line 3
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/ui/widget/MaterialProgressBar;->A:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/ui/widget/MaterialProgressBar;->A:Z

    .line 5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ui/widget/MaterialProgressBar;->a()V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 7
    :goto_0
    new-instance v0, LO8;

    .line 8
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v2, 0x7f140246

    invoke-direct {v0, v1, v2}, LO8;-><init>(Landroid/content/Context;I)V

    .line 9
    iget-object v1, v0, LO8;->a:LK8;

    iput-object p1, v1, LK8;->u:Landroid/view/View;

    const/4 p1, 0x0

    .line 10
    iput p1, v1, LK8;->t:I

    .line 11
    iput-boolean p1, v1, LK8;->v:Z

    const p1, 0x7f1301d4

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/ProgressBarDialogFragment;->D0:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    invoke-virtual {v0, p1, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 14
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, LP3;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130574

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v1, v0, LO8;->a:LK8;

    iput-object p1, v1, LK8;->f:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v0}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method
