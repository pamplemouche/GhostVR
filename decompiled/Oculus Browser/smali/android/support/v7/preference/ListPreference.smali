.class public Landroid/support/v7/preference/ListPreference;
.super Lec;
.source "PG"


# instance fields
.field public o0:[Ljava/lang/CharSequence;

.field public p0:[Ljava/lang/CharSequence;

.field public q0:Ljava/lang/String;

.field public r0:Ljava/lang/String;

.field public s0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v0, 0x7f0400c5

    const v1, 0x1010091

    .line 1
    invoke-static {p1, v0, v1}, Lm4;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    sget-object v2, LeS;->i0:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 6
    :cond_0
    iput-object v3, p0, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 9
    :cond_1
    iput-object v3, p0, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    sget-object v2, LeS;->q0:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    const/4 v0, 0x7

    .line 12
    invoke-static {p1, p2, v0}, Lm4;->a(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/ListPreference;->r0:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Landroid/support/v7/preference/ListPreference$SavedState;

    .line 9
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 10
    iget-object p1, p1, Landroid/support/v7/preference/ListPreference$SavedState;->w:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/ListPreference;->f(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->r0:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/support/v7/preference/ListPreference;->r0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->r0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/ListPreference;->r0:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/ListPreference;->f(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 2
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->q0:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-boolean v2, p0, Landroid/support/v7/preference/ListPreference;->s0:Z

    if-nez v2, :cond_4

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/support/v7/preference/ListPreference;->q0:Ljava/lang/String;

    .line 4
    iput-boolean v1, p0, Landroid/support/v7/preference/ListPreference;->s0:Z

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->v()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2}, Landroid/support/v7/preference/Preference;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()V

    .line 8
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    invoke-virtual {v2}, LDc;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 9
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    .line 11
    iget-boolean p1, p1, LDc;->e:Z

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_4
    return-void
.end method

.method public l()Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->q0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/ListPreference;->e(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/support/v7/preference/ListPreference;->r0:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->F:Ljava/lang/CharSequence;

    return-object v0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    aput-object v0, v2, v3

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->t()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->P:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Landroid/support/v7/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/preference/ListPreference;->q0:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Landroid/support/v7/preference/ListPreference$SavedState;->w:Ljava/lang/String;

    return-object v1
.end method
