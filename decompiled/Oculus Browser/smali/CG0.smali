.class public LCG0;
.super Ls2;
.source "PG"


# instance fields
.field public D0:Landroid/widget/EditText;

.field public E0:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method

.method public static synthetic a(LCG0;)V
    .locals 3

    .line 1
    iget-object v0, p0, LCG0;->D0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, LCG0;->E0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, LCG0;->D0:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, LCG0;->E0:Landroid/widget/EditText;

    const v1, 0x7f1305e8

    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p0, p0, LCG0;->E0:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, LCG0;->E0:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, LCG0;->D0:Landroid/widget/EditText;

    const v1, 0x7f1305df

    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p0, p0, LCG0;->D0:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lz2;->D:Lz2;

    .line 12
    check-cast v1, LBG0;

    invoke-interface {v1, v0}, LBG0;->c(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Ls2;->z0:Landroid/app/Dialog;

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method


# virtual methods
.method public M()V
    .locals 2

    .line 1
    invoke-super {p0}, Ls2;->M()V

    .line 2
    iget-object v0, p0, Ls2;->z0:Landroid/app/Dialog;

    .line 3
    check-cast v0, LP8;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, LP8;->a(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, LAG0;

    invoke-direct {v1, p0}, LAG0;-><init>(LCG0;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 1
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    .line 2
    iget v1, p0, Ls2;->v0:I

    .line 3
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01ad

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b031b

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, LCG0;->D0:Landroid/widget/EditText;

    const v0, 0x7f0b00e3

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, LCG0;->E0:Landroid/widget/EditText;

    .line 8
    new-instance v2, LyG0;

    invoke-direct {v2, p0}, LyG0;-><init>(LCG0;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0b0131

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 11
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    const v3, 0x7f1305c9

    .line 12
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [LWe1;

    new-instance v5, LWe1;

    new-instance v6, LzG0;

    invoke-direct {v6, p0, v2}, LzG0;-><init>(LCG0;Landroid/app/Activity;)V

    const-string v2, "<learnmore>"

    const-string v7, "</learnmore>"

    invoke-direct {v5, v2, v7, v6}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v5, v4, v2

    .line 13
    invoke-static {v3, v4}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v0, LO8;

    .line 16
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    const v4, 0x7f140245

    invoke-direct {v0, v3, v4}, LO8;-><init>(Landroid/content/Context;I)V

    .line 17
    iget-object v3, v0, LO8;->a:LK8;

    iput-object p1, v3, LK8;->u:Landroid/view/View;

    .line 18
    iput v2, v3, LK8;->t:I

    .line 19
    iput-boolean v2, v3, LK8;->v:Z

    const p1, 0x7f1305e4

    .line 20
    invoke-virtual {v0, p1}, LO8;->b(I)LO8;

    const p1, 0x7f130542

    .line 21
    invoke-virtual {v0, p1, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const p1, 0x7f1301d4

    .line 22
    invoke-virtual {v0, p1, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 23
    invoke-virtual {v0}, LO8;->a()LP8;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lm9;->a()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 25
    iput-boolean v2, v0, Lk9;->N:Z

    return-object p1
.end method
