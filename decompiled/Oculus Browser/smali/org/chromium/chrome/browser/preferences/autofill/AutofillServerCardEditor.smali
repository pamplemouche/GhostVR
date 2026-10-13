.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;
.super LPy0;
.source "PG"


# instance fields
.field public A0:Landroid/view/View;

.field public B0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LPy0;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->S()V

    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()I
    .locals 1

    const v0, 0x7f0e0036

    return v0
.end method

.method public R()Z
    .locals 4

    .line 1
    iget-object v0, p0, LPy0;->y0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LPy0;->y0:Landroid/widget/Spinner;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    iget-object v1, p0, LPy0;->y0:Landroid/widget/Spinner;

    .line 4
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->m:Ljava/lang/String;

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    if-eqz v0, :cond_0

    .line 7
    iget-wide v2, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 8
    invoke-static {v2, v3, v0, v1}, LJ/N;->MmUEbunT(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, LNv0;->a()LNv0;

    move-result-object v0

    iget-object v1, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {v0, v1}, LNv0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->B0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->A0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->B0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 2
    invoke-super {p0, p1, p2, p3}, LPy0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object p2, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-object p1

    :cond_0
    const p2, 0x7f0b0494

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 6
    iget-object p3, p3, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b0449

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 9
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    .line 10
    invoke-virtual {p3, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b017c

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lez0;

    invoke-direct {p3, p0}, Lez0;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0244

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->A0:Landroid/view/View;

    const p2, 0x7f0b00cb

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->B0:Landroid/view/View;

    .line 14
    iget-object p2, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getIsCached()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 15
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->B0:Landroid/view/View;

    new-instance p3, Lfz0;

    invoke-direct {p3, p0}, Lfz0;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->S()V

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, LPy0;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public g(Z)I
    .locals 0

    const p1, 0x7f130173

    return p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, LPy0;->y0:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    iget p1, p0, LPy0;->z0:I

    if-eq p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Lz2;->e0:Landroid/view/View;

    const p2, 0x7f0b0096

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
