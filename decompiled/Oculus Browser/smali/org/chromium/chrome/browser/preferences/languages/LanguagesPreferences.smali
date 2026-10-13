.class public Lorg/chromium/chrome/browser/preferences/languages/LanguagesPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements LGz0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static final synthetic O()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LJ/N;->ME9Avrn1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public J()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, LTz0;->d:LTz0;

    return-void
.end method

.method public a()V
    .locals 3

    .line 24
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const-class v1, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v0, v1}, Lz2;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lz2;->l()LD2;

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "AddLanguageFragment.NewLanguage"

    .line 17
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object p2

    .line 19
    iget-object p3, p2, LTz0;->a:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz p3, :cond_0

    .line 20
    invoke-static {p3, p1, v0}, LJ/N;->M4p7$HwP(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {p2}, LTz0;->a()V

    const/4 p1, 0x2

    .line 22
    invoke-static {p1}, LTz0;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1304f8

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f17000f

    .line 2
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    const-string p1, "preferred_languages"

    .line 3
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;

    .line 4
    iput-object p0, p1, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->l0:LGz0;

    const-string p1, "translate_switch"

    .line 5
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    invoke-static {p2}, LJ/N;->MhbpPVJE(Ljava/lang/Object;)Z

    move-result p2

    .line 8
    invoke-virtual {p1, p2}, LKc;->f(Z)V

    .line 9
    new-instance p2, LVz0;

    invoke-direct {p2, p0}, LVz0;-><init>(Lorg/chromium/chrome/browser/preferences/languages/LanguagesPreferences;)V

    .line 10
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 11
    sget-object p2, LUz0;->a:Lqy0;

    .line 12
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 13
    invoke-static {p2, p1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const/4 p1, 0x0

    const-string p2, "LanguageSettings.PageImpression"

    const/4 v0, 0x2

    .line 14
    invoke-static {p2, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
