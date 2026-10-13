.class public Lhc;
.super Lnc;
.source "PG"


# instance fields
.field public L0:I

.field public M0:[Ljava/lang/CharSequence;

.field public N0:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LO8;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhc;->M0:[Ljava/lang/CharSequence;

    iget v1, p0, Lhc;->L0:I

    new-instance v2, Lgc;

    invoke-direct {v2, p0}, Lgc;-><init>(Lhc;)V

    .line 2
    iget-object v3, p1, LO8;->a:LK8;

    iput-object v0, v3, LK8;->q:[Ljava/lang/CharSequence;

    .line 3
    iput-object v2, v3, LK8;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    iput v1, v3, LK8;->z:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, v3, LK8;->y:Z

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v0}, LO8;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lnc;->b(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lnc;->O()Lec;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    .line 3
    iget-object v0, p1, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Landroid/support/v7/preference/ListPreference;->q0:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhc;->L0:I

    .line 7
    iget-object v0, p1, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    .line 8
    iput-object v0, p0, Lhc;->M0:[Ljava/lang/CharSequence;

    .line 9
    iget-object p1, p1, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    .line 10
    iput-object p1, p0, Lhc;->N0:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lhc;->L0:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lhc;->M0:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lhc;->N0:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lnc;->d(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lhc;->L0:I

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lhc;->M0:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lhc;->N0:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->O()Lec;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lhc;->L0:I

    if-ltz p1, :cond_0

    .line 3
    iget-object v1, p0, Lhc;->N0:[Ljava/lang/CharSequence;

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
