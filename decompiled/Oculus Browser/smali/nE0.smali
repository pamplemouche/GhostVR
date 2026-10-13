.class public LnE0;
.super Ls2;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public D0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

.field public E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

.field public F0:LmE0;

.field public G0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LnE0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Ls2;->g(Z)V

    .line 2
    :cond_0
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "lastAccountName"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v2, "newAccountName"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e005c

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0453

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    const v5, 0x7f1305d5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v0

    invoke-virtual {v4, v5, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b0451

    .line 10
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    iput-object p1, p0, LnE0;->D0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    const p1, 0x7f0b0454

    .line 11
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    iput-object p1, p0, LnE0;->E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 12
    iget-object p1, p0, LnE0;->D0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    const v4, 0x7f1305d7

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, LnE0;->E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v3, 0x7f1305db

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 14
    iget-object v1, p0, LnE0;->D0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    aput-object v1, p1, v0

    iget-object v1, p0, LnE0;->E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    aput-object v1, p1, v6

    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    iget-object v1, p0, LnE0;->D0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 17
    iput-object p1, v1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->A:Ljava/util/List;

    .line 18
    iget-object v1, p0, LnE0;->E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    .line 19
    iput-object p1, v1, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->A:Ljava/util/List;

    .line 20
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/signin/SigninManager;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, LnE0;->E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {p1, v6}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Z)V

    .line 22
    iget-object p1, p0, LnE0;->D0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    new-instance v1, LlE0;

    invoke-direct {v1, p0}, LlE0;-><init>(LnE0;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, LnE0;->D0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {p1, v6}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a(Z)V

    .line 24
    :goto_0
    new-instance p1, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v3, 0x7f140245

    invoke-direct {p1, v1, v3}, LO8;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f130260

    .line 25
    invoke-virtual {p1, v1, p0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v1, 0x7f1301d4

    .line 26
    invoke-virtual {p1, v1, p0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 27
    iget-object v1, p1, LO8;->a:LK8;

    iput-object v2, v1, LK8;->u:Landroid/view/View;

    .line 28
    iput v0, v1, LK8;->t:I

    .line 29
    iput-boolean v0, v1, LK8;->v:Z

    .line 30
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LnE0;->F0:LmE0;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 2
    iget-object p1, p0, LnE0;->E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Signin_ImportDataPrompt_DontImport"

    goto :goto_0

    :cond_1
    const-string p1, "Signin_ImportDataPrompt_ImportData"

    :goto_0
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, LnE0;->F0:LmE0;

    iget-object p2, p0, LnE0;->E0:Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ui/widget/RadioButtonWithDescription;->a()Z

    move-result p2

    invoke-interface {p1, p2}, LmE0;->a(Z)V

    goto :goto_1

    :cond_2
    const-string p1, "Signin_ImportDataPrompt_Cancel"

    .line 4
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, LnE0;->F0:LmE0;

    invoke-interface {p1}, LmE0;->a()V

    :goto_1
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, LnE0;->G0:Z

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

    .line 3
    :cond_0
    iget-object p1, p0, LnE0;->F0:LmE0;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, LnE0;->G0:Z

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, LmE0;->a()V

    :cond_1
    return-void
.end method
