.class public Landroid/support/v7/preference/h;
.super Landroid/support/v7/preference/r;


# instance fields
.field private ae:I

.field private af:[Ljava/lang/CharSequence;

.field private ag:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/r;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/preference/h;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/h;->ae:I

    return p1
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method private ad()Landroid/support/v7/preference/ListPreference;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/h;->ac()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/support/v7/preference/h;
    .locals 3

    new-instance v0, Landroid/support/v7/preference/h;

    invoke-direct {v0}, Landroid/support/v7/preference/h;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/h;->g(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/r;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/preference/h;->ad()Landroid/support/v7/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/h;->ae:I

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/h;->af:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/h;->ag:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/h;->ae:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-static {p1, v0}, Landroid/support/v7/preference/h;->a(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/h;->af:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-static {p1, v0}, Landroid/support/v7/preference/h;->a(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/h;->ag:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method protected a(Landroid/support/v7/app/s;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/r;->a(Landroid/support/v7/app/s;)V

    iget-object v0, p0, Landroid/support/v7/preference/h;->af:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v7/preference/h;->ae:I

    new-instance v2, Landroid/support/v7/preference/i;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/i;-><init>(Landroid/support/v7/preference/h;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/app/s;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/r;->e(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v7/preference/h;->ae:I

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v7/preference/h;->af:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-static {p1, v1, v0}, Landroid/support/v7/preference/h;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/preference/h;->ag:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entryValues"

    invoke-static {p1, v1, v0}, Landroid/support/v7/preference/h;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/preference/h;->ad()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/v7/preference/h;->ae:I

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/preference/h;->ag:[Ljava/lang/CharSequence;

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
