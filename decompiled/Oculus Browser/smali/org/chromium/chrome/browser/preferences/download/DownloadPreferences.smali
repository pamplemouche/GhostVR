.class public Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public E0:Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;

.field public F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public G0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method


# virtual methods
.method public L()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->E0:Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;->w()V

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v1}, LJ/N;->MM60DRK2(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1, v0}, LKc;->f(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    throw v0

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->G0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz v0, :cond_4

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a()Lorg/chromium/chrome/browser/profiles/ProfileKey;

    move-result-object v1

    .line 11
    invoke-static {v1}, LJ/N;->MNfhveva(Ljava/lang/Object;)Z

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->O()V

    :cond_4
    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a()Lorg/chromium/chrome/browser/profiles/ProfileKey;

    move-result-object v0

    .line 2
    invoke-static {v0}, LJ/N;->MmFeqmtn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->G0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const-string v1, ""

    .line 4
    iput-object v1, v0, LKc;->i0:Ljava/lang/CharSequence;

    .line 5
    iget-boolean v1, v0, LKc;->k0:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->o()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a()Lorg/chromium/chrome/browser/profiles/ProfileKey;

    move-result-object v0

    .line 8
    invoke-static {v0}, LJ/N;->MNfhveva(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a()Lorg/chromium/chrome/browser/profiles/ProfileKey;

    move-result-object v0

    .line 10
    invoke-static {v0}, LJ/N;->M94kN9ol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->G0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const v1, 0x7f1302e2

    invoke-virtual {v0, v1}, LKc;->f(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->G0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const v1, 0x7f1302e3

    invoke-virtual {v0, v1}, LKc;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1303bb

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f17000c

    .line 2
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    const-string p1, "location_prompt_enabled"

    .line 3
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->F0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 4
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p1, "location_change"

    .line 5
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->E0:Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;

    .line 6
    invoke-static {}, LDn0;->a()Z

    move-result p1

    const-string p2, "prefetching_enabled"

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->G0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 8
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->O()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 11
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 12
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 13
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v1, "location_prompt_enabled"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 16
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    invoke-static {p1}, LJ/N;->MM60DRK2(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    invoke-static {p1, v1}, LJ/N;->MjS06q3K(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    throw p2

    .line 20
    :cond_1
    throw p2

    .line 21
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 22
    invoke-static {p1, v0}, LJ/N;->MjS06q3K(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_3
    throw p2

    .line 23
    :cond_4
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "prefetching_enabled"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 26
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a()Lorg/chromium/chrome/browser/profiles/ProfileKey;

    move-result-object p2

    .line 27
    invoke-static {p2, p1}, LJ/N;->MBd5XB3K(Ljava/lang/Object;Z)V

    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/download/DownloadPreferences;->O()V

    :cond_5
    :goto_0
    return v1
.end method

.method public b(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreference;

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreferenceDialog;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/download/DownloadLocationPreferenceDialog;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v2, "key"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lz2;->g(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p0, p1}, Lz2;->a(Lz2;I)V

    .line 9
    iget-object p1, p0, Lz2;->N:LY2;

    const-string v1, "DownloadLocationPreferenceDialog"

    .line 10
    invoke-virtual {v0, p1, v1}, Ls2;->a(LH2;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lrc;->b(Landroid/support/v7/preference/Preference;)V

    :goto_0
    return-void
.end method
