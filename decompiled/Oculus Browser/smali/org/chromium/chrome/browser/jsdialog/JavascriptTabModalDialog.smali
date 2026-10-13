.class public Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;
.super LVh0;
.source "PG"


# instance fields
.field public F:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    const v5, 0x7f130443

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, LVh0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static createAlertDialog(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createConfirmDialog(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;

    const/4 v1, 0x0

    const v2, 0x7f1301d4

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createPromptDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;

    const v1, 0x7f1301d4

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, LVh0;->C:LBd1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, LVh0;->D:Lle1;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, LBd1;->a(Lle1;I)V

    :goto_0
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;->F:J

    return-void
.end method

.method private getUserInput()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LVh0;->E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showDialog(Lorg/chromium/ui/base/WindowAndroid;J)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-static {p2, p3, p0, v0}, LJ/N;->M79Biztn(JLjava/lang/Object;Z)V

    return-void

    .line 3
    :cond_0
    iput-wide p2, p0, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;->F:J

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    const v1, 0x7f0e00e3

    invoke-virtual {p2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    iput-object p2, p0, LVh0;->E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    .line 5
    iget-object v1, p0, LVh0;->A:Ljava/lang/String;

    if-eqz p2, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p3, p2, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->w:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    .line 8
    iget-object p3, p2, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->w:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p2, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->w:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->selectAll()V

    .line 10
    :cond_2
    :goto_0
    iget-object p2, p0, LVh0;->E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    iget-boolean p3, p0, LVh0;->B:Z

    .line 11
    iget-object p2, p2, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->x:Landroid/widget/CheckBox;

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 13
    new-instance p3, LXd1;

    sget-object v1, LEd1;->q:[LUd1;

    invoke-direct {p3, v1}, LXd1;-><init>([LUd1;)V

    sget-object v1, LEd1;->a:Lfe1;

    .line 14
    invoke-virtual {p3, v1, p0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->c:Lke1;

    iget-object v2, p0, LVh0;->w:Ljava/lang/String;

    .line 15
    invoke-virtual {p3, v1, v2}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->e:Lke1;

    iget-object v2, p0, LVh0;->x:Ljava/lang/String;

    .line 16
    invoke-virtual {p3, v1, v2}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->f:Lke1;

    iget-object v2, p0, LVh0;->E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    .line 17
    invoke-virtual {p3, v1, v2}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->g:Lke1;

    iget v2, p0, LVh0;->y:I

    .line 18
    invoke-virtual {p3, v1, p2, v2}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->j:Lke1;

    iget v2, p0, LVh0;->z:I

    .line 19
    invoke-virtual {p3, v1, p2, v2}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object p2, LEd1;->o:Lhe1;

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p3, p2, v1}, LXd1;->a(Lce1;Z)LXd1;

    .line 21
    invoke-virtual {p3}, LXd1;->a()Lle1;

    move-result-object p2

    iput-object p2, p0, LVh0;->D:Lle1;

    .line 22
    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    iput-object p1, p0, LVh0;->C:LBd1;

    .line 23
    iget-object p2, p0, LVh0;->D:Lle1;

    .line 24
    invoke-virtual {p1, p2, v1, v0}, LBd1;->a(Lle1;IZ)V

    return-void

    .line 25
    :cond_4
    throw p3
.end method
