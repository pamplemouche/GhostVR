.class public Lorg/chromium/chrome/browser/preferences/MainPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements LkU0;
.implements LoG0;
.implements LxF0;


# instance fields
.field public final E0:Lqy0;

.field public final F0:Ljava/util/Map;

.field public G0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->F0:Ljava/util/Map;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lz2;->c(Z)V

    .line 4
    new-instance v0, Loy0;

    invoke-direct {v0, p0}, Loy0;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    .line 5
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->E0:Lqy0;

    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->G0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, v0, LGF0;->q:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, LGF0;->r:Z

    if-nez v1, :cond_1

    iget-object v1, v0, LGF0;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, LGF0;->a()I

    move-result v0

    .line 6
    invoke-static {v1, v0}, LfV;->b(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->O()V

    return-void
.end method

.method public M()V
    .locals 2

    .line 1
    invoke-super {p0}, Lrc;->M()V

    .line 2
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->G0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->w()V

    .line 6
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    :cond_1
    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    invoke-super {p0}, Lrc;->N()V

    .line 2
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->G0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->z()V

    .line 6
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b(LoG0;)V

    :cond_1
    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->g()Z

    move-result v0

    const-string v1, "sign_in"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->e(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->f(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->Q()V

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->P()V

    const-string v0, "homepage"

    .line 6
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->e(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 7
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object v1

    invoke-virtual {v1}, Lpt0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f130600

    goto :goto_1

    :cond_1
    const v1, 0x7f1305ff

    .line 8
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    const-string v0, "night_mode_available"

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ui_theme"

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->e(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->f(Ljava/lang/String;)V

    .line 12
    :goto_2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/DeveloperPreferences;->P()Z

    move-result v0

    const-string v1, "developer"

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->e(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->f(Ljava/lang/String;)V

    :goto_3
    const-string v0, "data_reduction"

    .line 15
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 16
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferenceFragment;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final P()V
    .locals 3

    .line 1
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result v0

    const-string v1, "search_engine"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/components/search_engines/TemplateUrlService;->a()Lorg/chromium/components/search_engines/TemplateUrl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lorg/chromium/components/search_engines/TemplateUrl;->d()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Q()V
    .locals 8

    const-string v0, "sync_and_services"

    .line 1
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    .line 3
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v2

    invoke-virtual {v2}, LKU0;->c()Z

    move-result v2

    const-string v3, "SyncManualStartAndroid"

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v2

    const v4, 0x7f060079

    const v5, 0x7f080221

    if-eqz v2, :cond_6

    .line 5
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v6

    invoke-virtual {v6}, LnV0;->a()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->i()Z

    move-result v6

    const v7, 0x7f080220

    if-eqz v6, :cond_2

    .line 7
    invoke-static {v1, v7, v4}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v4

    const v6, 0x7f060088

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->g()Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    invoke-static {v1, v7, v6}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->e()Z

    move-result v4

    if-nez v4, :cond_4

    .line 13
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v4

    if-nez v4, :cond_4

    .line 14
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    :cond_4
    invoke-static {v1, v7, v6}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_5
    const v2, 0x7f060076

    .line 16
    invoke-static {v1, v5, v2}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 17
    :cond_6
    :goto_0
    invoke-static {v1, v5, v4}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 18
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    .line 20
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v2

    invoke-virtual {v2}, LKU0;->c()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v1, ""

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v2

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 23
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v5

    .line 24
    iget-boolean v5, v5, LnV0;->g:Z

    if-nez v5, :cond_8

    const v1, 0x7f1305c5

    .line 25
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    const v5, 0x7f1305d8

    if-nez v2, :cond_9

    .line 26
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 27
    :cond_9
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->i()Z

    move-result v6

    if-eqz v6, :cond_a

    const v1, 0x7f1305d9

    .line 28
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 29
    :cond_a
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 30
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->g()Z

    move-result v3

    if-nez v3, :cond_b

    const v1, 0x7f1305ed

    .line 31
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 32
    :cond_b
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v3

    if-eqz v3, :cond_c

    .line 33
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v1

    invoke-static {v1}, LlG0;->a(I)I

    move-result v1

    .line 34
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 35
    :cond_c
    iget-wide v6, v2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 36
    invoke-static {v6, v7, v2}, LJ/N;->M3XV0Up2(JLjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v1, 0x7f1305d2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 37
    sget-object v5, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 38
    iget-object v5, v5, Lorg/chromium/base/BuildInfo;->a:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 39
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 40
    :cond_d
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    const v1, 0x7f1305d0

    .line 41
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 42
    :cond_e
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v3

    invoke-virtual {v3}, LKU0;->a()Ljava/lang/String;

    .line 43
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v3

    invoke-virtual {v3}, LnV0;->a()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 44
    iget-wide v5, v2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 45
    invoke-static {v5, v6, v2}, LJ/N;->M$BssAkU(JLjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const v1, 0x7f1305ef

    .line 46
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 47
    :cond_f
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v2

    if-eqz v2, :cond_10

    const v1, 0x7f1305de

    .line 48
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_10
    const v2, 0x7f1305c4

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 50
    :cond_11
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const p1, 0x7f170011

    .line 4
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 5
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 6
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 7
    invoke-virtual {p1}, Lvc;->w()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 8
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 9
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 10
    invoke-virtual {v0, p2}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->F0:Ljava/util/Map;

    .line 12
    iget-object v2, v0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 13
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->F0:Ljava/util/Map;

    const-string p2, "sign_in"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->G0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    .line 15
    new-instance p2, Lky0;

    invoke-direct {p2, p0}, Lky0;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    .line 16
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->o0:Ljava/lang/Runnable;

    const-string p1, "saved_passwords"

    .line 17
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 18
    new-instance p2, Lmy0;

    invoke-direct {p2, p0}, Lmy0;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    .line 19
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 20
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->F0:Ljava/util/Map;

    const-string p2, "search_engine"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 21
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->E0:Lqy0;

    .line 22
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->j0:Lqy0;

    .line 23
    invoke-static {p2, p1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 24
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->F0:Ljava/util/Map;

    const-string p2, "data_reduction"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 25
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->E0:Lqy0;

    .line 26
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->j0:Lqy0;

    .line 27
    invoke-static {p2, p1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    const-string v0, "notifications"

    if-lt p1, p2, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 30
    new-instance p2, Lly0;

    invoke-direct {p2, p0}, Lly0;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    .line 31
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    goto :goto_1

    .line 32
    :cond_1
    invoke-static {}, LDn0;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 33
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 34
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 35
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 36
    :cond_2
    :goto_1
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 37
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/components/search_engines/TemplateUrlService;->a(LkU0;)V

    .line 38
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrlService;->e()V

    :cond_3
    const-string p1, "DownloadsLocationChange"

    .line 39
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 40
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 41
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string p2, "downloads"

    .line 42
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    const-string p1, "AutofillAssistant"

    .line 43
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 44
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    const-string p2, "autofill_assistant_switch"

    .line 45
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 46
    :cond_5
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 47
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string p2, "autofill_assistant"

    .line 48
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lrc;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lny0;

    invoke-direct {v1, p0}, Lny0;-><init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/components/search_engines/TemplateUrlService;->b(LkU0;)V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->P()V

    return-void
.end method

.method public final e(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 2

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 3
    invoke-virtual {v0, p1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 5
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->F0:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences;->F0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->Q()V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 3
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 4
    invoke-virtual {v0, p1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 6
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 7
    invoke-virtual {v0, p1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 8
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->p()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->O()V

    return-void
.end method
