.class public abstract LAd1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lorg/chromium/base/Callback;

.field public b:Lle1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LAd1;Lle1;Lorg/chromium/base/Callback;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_2

    .line 1
    move-object p1, p0

    check-cast p1, Lbl0;

    .line 2
    iget-object p2, p1, Lbl0;->e:Loe1;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Loe1;->a()V

    .line 4
    iput-object v0, p1, Lbl0;->e:Loe1;

    .line 5
    :cond_0
    iget-object p2, p1, Lbl0;->d:Landroid/app/Dialog;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 7
    iput-object v0, p1, Lbl0;->d:Landroid/app/Dialog;

    .line 8
    :cond_1
    iput-object v0, p0, LAd1;->b:Lle1;

    .line 9
    iput-object v0, p0, LAd1;->a:Lorg/chromium/base/Callback;

    goto/16 :goto_2

    .line 10
    :cond_2
    iput-object p1, p0, LAd1;->b:Lle1;

    .line 11
    iput-object p2, p0, LAd1;->a:Lorg/chromium/base/Callback;

    .line 12
    check-cast p0, Lbl0;

    .line 13
    iget-object p2, p0, Lbl0;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, LA7;->t(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    sget-object p2, LEd1;->p:Lce1;

    invoke-virtual {p1, p2}, Lle1;->a(Lce1;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f14024d

    goto :goto_0

    :cond_4
    const p2, 0x7f14024e

    .line 16
    :goto_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lbl0;->c:Landroid/app/Activity;

    invoke-direct {v1, v2, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lbl0;->d:Landroid/app/Dialog;

    .line 17
    new-instance p2, LYk0;

    invoke-direct {p2, p0}, LYk0;-><init>(Lbl0;)V

    invoke-virtual {v1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 18
    iget-object p2, p0, Lbl0;->d:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 19
    iget-object p2, p0, Lbl0;->d:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0109

    .line 20
    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;

    .line 21
    new-instance v1, Lal0;

    invoke-direct {v1, p0, v0}, Lal0;-><init>(Lbl0;LZk0;)V

    .line 22
    invoke-static {p1, p2, v1}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    move-result-object v0

    iput-object v0, p0, Lbl0;->e:Loe1;

    .line 23
    iget-object v0, p0, Lbl0;->d:Landroid/app/Dialog;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 24
    iget-object p0, p0, Lbl0;->d:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 25
    sget-object p0, LEd1;->b:Lfe1;

    invoke-virtual {p1, p0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_5

    .line 26
    sget-object p0, LEd1;->c:Lke1;

    invoke-virtual {p1, p0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 27
    :cond_5
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    :goto_1
    const/16 p1, 0x9

    .line 28
    iget-object p2, p0, LAd1;->a:Lorg/chromium/base/Callback;

    if-nez p2, :cond_7

    goto :goto_2

    .line 29
    :cond_7
    iput-object v0, p0, LAd1;->a:Lorg/chromium/base/Callback;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 31
    :cond_8
    throw v0
.end method
