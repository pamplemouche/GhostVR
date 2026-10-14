.class public Landroid/support/v7/preference/f;
.super Landroid/support/v7/preference/r;


# instance fields
.field private ae:Landroid/widget/EditText;

.field private af:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/r;-><init>()V

    return-void
.end method

.method private ad()Landroid/support/v7/preference/EditTextPreference;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/f;->ac()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/support/v7/preference/f;
    .locals 3

    new-instance v0, Landroid/support/v7/preference/f;

    invoke-direct {v0}, Landroid/support/v7/preference/f;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/f;->g(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/r;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/preference/f;->ad()Landroid/support/v7/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/EditTextPreference;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/support/v7/preference/f;->af:Ljava/lang/CharSequence;

    return-void
.end method

.method protected ab()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/r;->b(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Landroid/support/v7/preference/f;->ae:Landroid/widget/EditText;

    iget-object p1, p0, Landroid/support/v7/preference/f;->ae:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/f;->af:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/r;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v7/preference/f;->af:Ljava/lang/CharSequence;

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/preference/f;->ae:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Landroid/support/v7/preference/f;->ad()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/EditTextPreference;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/preference/f;->ad()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/EditTextPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
