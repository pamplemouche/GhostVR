.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;
.super Lrc;
.source "PG"

# interfaces
.implements Lt10;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/16 v0, 0x9

    .line 10
    invoke-static {v0, p0}, LJ/N;->Mc6ioGAQ(IZ)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public I()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-super {p0}, Lrc;->I()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;->O()V

    return-void
.end method

.method public final O()V
    .locals 6

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 3
    invoke-virtual {v0}, Lvc;->y()V

    .line 4
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 5
    iget-object v1, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lvc;->j0:Z

    .line 7
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 8
    iget-object v0, v0, LDc;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f130177

    .line 10
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->d(I)V

    const v0, 0x7f130178

    .line 11
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, LKc;->f(Z)V

    .line 13
    sget-object v0, Lcz0;->w:Llc;

    .line 14
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 15
    new-instance v0, Ldz0;

    invoke-direct {v0, p0}, Ldz0;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;)V

    .line 16
    iput-object v0, v1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 17
    invoke-static {v0, v1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 18
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 19
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 20
    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 21
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    iget-wide v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 23
    invoke-static {v3, v4, v0}, LJ/N;->M6XJvXko(JLjava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-wide v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 25
    invoke-static {v3, v4, v0}, LJ/N;->M4q3jK16(JLjava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v0, v1, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 28
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->c:Z

    if-eqz v3, :cond_0

    .line 29
    new-instance v3, Lbz0;

    .line 30
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    .line 31
    iget-object v5, p0, Lrc;->u0:LDc;

    .line 32
    iget-object v5, v5, LDc;->a:Landroid/content/Context;

    .line 33
    invoke-direct {v3, v4, v5}, Lbz0;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 34
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v4, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->o:Ljava/lang/String;

    .line 36
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v4, v3, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 38
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_0
    new-instance v3, Landroid/support/v7/preference/Preference;

    .line 40
    iget-object v4, p0, Lrc;->u0:LDc;

    .line 41
    iget-object v4, v4, LDc;->a:Landroid/content/Context;

    .line 42
    invoke-direct {v3, v4, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v4, 0x7f0e0038

    .line 43
    iput v4, v3, Landroid/support/v7/preference/Preference;->c0:I

    .line 44
    const-class v4, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerProfilePreferences;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 45
    iput-object v4, v3, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 46
    :goto_1
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v4

    .line 47
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    const-string v5, "guid"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, LqU;->e()LqU;

    move-result-object v1

    .line 49
    :try_start_0
    iget-object v4, p0, Lrc;->u0:LDc;

    .line 50
    iget-object v4, v4, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 51
    invoke-virtual {v4, v3}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;->a(Ljava/lang/Throwable;LqU;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 54
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;->a(Ljava/lang/Throwable;LqU;)V

    throw v2

    .line 55
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lbz0;

    .line 57
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    .line 58
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 59
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    .line 60
    invoke-direct {v0, v1, v3}, Lbz0;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0802a8

    invoke-static {v1, v3}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06014b

    .line 64
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 65
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 66
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f13016d

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(I)V

    const-string v1, "new_profile"

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 70
    invoke-static {}, LqU;->e()LqU;

    move-result-object v1

    .line 71
    :try_start_2
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 72
    iget-object v3, v3, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 73
    invoke-virtual {v3, v0}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;->a(Ljava/lang/Throwable;LqU;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 75
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v2

    .line 76
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;->a(Ljava/lang/Throwable;LqU;)V

    throw v2

    :cond_2
    :goto_2
    return-void

    .line 77
    :cond_3
    throw v2
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lz2;->c0:Z

    .line 15
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-wide v0, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 18
    invoke-static {v0, v1, p1}, LJ/N;->Melg71WL(JLjava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 19
    throw p1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130155

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 2
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 3
    iget-object p2, p1, LDc;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, p2}, LDc;->a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 5
    iget-boolean p2, p1, Lvc;->l0:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Landroid/support/v7/preference/PreferenceScreen;->r0:Z

    .line 7
    invoke-virtual {p0, p1}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;->O()V

    return-void
.end method
