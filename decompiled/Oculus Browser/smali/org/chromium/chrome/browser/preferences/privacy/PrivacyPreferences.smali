.class public Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public E0:Lqy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static final synthetic d(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const-string v1, "preload_pages"

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, LJ/N;->MZ2z4gNy(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->O()V

    return-void
.end method

.method public O()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const-string v1, "can_make_payment"

    .line 2
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, LZb;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x7

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, v3}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v3

    .line 4
    invoke-virtual {v1, v3}, LKc;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    throw v2

    :cond_1
    :goto_0
    const-string v1, "do_not_track"

    .line 6
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 7
    invoke-static {v0}, LJ/N;->Mn1GPSh2(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f130600

    goto :goto_1

    :cond_2
    const v3, 0x7f1305ff

    .line 8
    :goto_1
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    goto :goto_2

    .line 9
    :cond_3
    throw v2

    :cond_4
    :goto_2
    const-string v1, "usage_stats_reporting"

    .line 10
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 11
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xb

    if-eqz v0, :cond_5

    .line 12
    invoke-static {v0, v3}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    new-instance v0, LbB0;

    invoke-direct {v0, p0}, LbB0;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;)V

    .line 14
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->B:Lmc;

    goto :goto_3

    .line 15
    :cond_5
    throw v2

    .line 16
    :cond_6
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 17
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 18
    invoke-virtual {v0, v1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 19
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->p()V

    :cond_7
    :goto_3
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, LeB0;->b()V

    const p1, 0x7f170015

    .line 3
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 4
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1304fa

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    .line 7
    sget-object v0, LcB0;->a:Lqy0;

    .line 8
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->E0:Lqy0;

    const-string v0, "can_make_payment"

    .line 9
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 10
    iput-object p0, v0, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string v0, "preload_pages"

    .line 11
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    if-eqz p2, :cond_0

    .line 12
    invoke-static {p2}, LJ/N;->MLuVS6E8(Ljava/lang/Object;)Z

    move-result p2

    .line 13
    invoke-virtual {v0, p2}, LKc;->f(Z)V

    .line 14
    iput-object p0, v0, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 15
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->E0:Lqy0;

    .line 16
    iput-object p2, v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->o0:Lqy0;

    .line 17
    invoke-static {p2, v0}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const-string p2, "sync_and_services_link"

    .line 18
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    .line 19
    new-instance v0, LVe1;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, LaB0;

    invoke-direct {v2, p0}, LaB0;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;)V

    invoke-direct {v0, v1, v2}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    const v1, 0x7f13050a

    .line 20
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    new-array p1, p1, [LWe1;

    const/4 v2, 0x0

    new-instance v3, LWe1;

    const-string v4, "<link>"

    const-string v5, "</link>"

    invoke-direct {v3, v4, v5, v0}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, p1, v2

    invoke-static {v1, p1}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;->O()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 23
    throw p1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 24
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const p2, 0x7f1303bf

    const/4 v0, 0x0

    const v1, 0x7f0b026d

    .line 25
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f080160

    .line 27
    invoke-static {p2, v1, v0}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 32
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "can_make_payment"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    const/4 v0, 0x7

    check-cast p2, Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_0

    .line 36
    invoke-static {p1, v0, p2}, LJ/N;->MtxNNFos(Ljava/lang/Object;IZ)V

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    const-string v0, "preload_pages"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 38
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_2

    .line 39
    invoke-static {p1, p2}, LJ/N;->M1nOFIU9(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    throw v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b026d

    if-ne p1, v0, :cond_0

    .line 29
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f130336

    .line 30
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p1, v0, v1, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
