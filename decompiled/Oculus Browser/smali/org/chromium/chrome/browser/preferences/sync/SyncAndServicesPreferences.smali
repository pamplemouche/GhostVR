.class public Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements LJG0;
.implements Llc;
.implements LoG0;


# instance fields
.field public final E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field public final F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

.field public final G0:LeB0;

.field public final H0:Lqy0;

.field public I0:Z

.field public J0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

.field public K0:Landroid/support/v7/preference/Preference;

.field public L0:Landroid/support/v7/preference/PreferenceCategory;

.field public M0:Landroid/support/v7/preference/Preference;

.field public N0:Landroid/support/v7/preference/Preference;

.field public O0:Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

.field public P0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public Q0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public R0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public S0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public U0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public V0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public W0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public X0:Landroid/support/v7/preference/Preference;

.field public Y0:LnG0;

.field public Z0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    .line 4
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->G0:LeB0;

    .line 5
    new-instance v0, LCB0;

    invoke-direct {v0, p0}, LCB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    .line 6
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Z0:I

    return-void
.end method

.method public static final synthetic a(Landroid/accounts/Account;)V
    .locals 2

    .line 23
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(Landroid/accounts/Account;LvF0;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "Signin_Signin_CancelAdvancedSyncSettings"

    .line 109
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 110
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(I)V

    .line 111
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 112
    throw p0
.end method

.method public static g(Z)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SyncAndServicesPreferences.isFromSigninScreen"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public H()V
    .locals 1

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Y0:LnG0;

    invoke-virtual {v0}, LnG0;->a()V

    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P()V

    return-void
.end method

.method public M()V
    .locals 3

    .line 1
    invoke-super {p0}, Lrc;->M()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->J0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->w()V

    .line 4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->I0:Z

    if-eqz v0, :cond_1

    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->I0:Z

    .line 6
    iget-object v0, p0, Lz2;->e0:Landroid/view/View;

    const v1, 0x7f0b0071

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lz2;->e0:Landroid/view/View;

    const v2, 0x7f0b0070

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    check-cast v0, LQ8;

    invoke-virtual {v0}, LQ8;->G()LB8;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    check-cast v0, Lqa;

    .line 14
    iget-object v0, v0, Lqa;->e:LZe;

    check-cast v0, LXh;

    .line 15
    iput-object v1, v0, LXh;->k:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v0}, LXh;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    invoke-super {p0}, Lrc;->N()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->J0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->z()V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b(LoG0;)V

    return-void
.end method

.method public final O()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/16 v2, 0xe

    .line 2
    invoke-static {v0, v2}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v0

    .line 3
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->U0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 4
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->U0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v5, :cond_0

    .line 5
    invoke-static {v5}, LJ/N;->M17WwXVX(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-virtual {v2, v5}, LKc;->f(Z)V

    .line 7
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-nez v2, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, LJ/N;->M5Pp$aim()Z

    move-result v2

    .line 9
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    const/16 v6, 0x10

    if-eqz v5, :cond_7

    .line 10
    invoke-static {v5, v6}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 11
    :goto_1
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 12
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7, v3}, LKc;->f(Z)V

    if-eqz v0, :cond_6

    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const v1, 0x7f130492

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    return-void

    .line 14
    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 15
    :cond_7
    throw v1

    .line 16
    :cond_8
    throw v1
.end method

.method public final P()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lz2;->N:LY2;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "enter_password"

    .line 4
    invoke-virtual {v0, v2}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v0

    check-cast v0, Ls2;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Ls2;->g(Z)V

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->c()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 8
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->K0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 10
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 11
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_7

    .line 13
    :cond_3
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 14
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 15
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->K0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v4}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 16
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 17
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 18
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 19
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->N0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->M0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0, v1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->O0:Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    invoke-virtual {v0, v1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_7

    .line 24
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->N0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v4}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0, v4}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->O0:Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    invoke-virtual {v0, v4}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 27
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    .line 28
    iget-boolean v0, v0, LnV0;->g:Z

    const-string v4, "SyncManualStartAndroid"

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/16 v8, 0x80

    const/4 v9, 0x2

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    .line 29
    :cond_5
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    .line 30
    iget-boolean v0, v0, LnV0;->f:Z

    if-nez v0, :cond_6

    goto :goto_1

    .line 31
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v0

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    .line 32
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 33
    iget-wide v10, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 34
    invoke-static {v10, v11, v0}, LJ/N;->M3XV0Up2(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_3

    .line 35
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 36
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 37
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 38
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_3

    .line 39
    :cond_a
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Q()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_3

    :cond_b
    :goto_1
    const/4 v0, -0x1

    goto :goto_3

    :cond_c
    :goto_2
    const/16 v0, 0x80

    .line 41
    :goto_3
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Z0:I

    if-ne v0, v6, :cond_d

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->M0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v5}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6

    .line 43
    :cond_d
    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->M0:Landroid/support/v7/preference/Preference;

    if-eq v0, v5, :cond_e

    const v0, 0x7f1305cd

    .line 44
    invoke-virtual {p0, v0}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_e
    const v0, 0x7f1305ee

    .line 45
    invoke-virtual {p0, v0}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_4
    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->M0:Landroid/support/v7/preference/Preference;

    iget v6, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Z0:I

    if-eqz v6, :cond_14

    if-eq v6, v2, :cond_13

    if-eq v6, v9, :cond_12

    if-eq v6, v7, :cond_11

    if-eq v6, v5, :cond_10

    if-eq v6, v8, :cond_f

    move-object v5, v3

    goto :goto_5

    :cond_f
    const v5, 0x7f130344

    .line 48
    invoke-virtual {p0, v5}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_10
    const v5, 0x7f130347

    .line 49
    invoke-virtual {p0, v5}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_11
    const v5, 0x7f130342

    new-array v6, v2, [Ljava/lang/Object;

    .line 50
    sget-object v7, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 51
    iget-object v7, v7, Lorg/chromium/base/BuildInfo;->a:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 52
    invoke-virtual {p0, v5, v6}, Lz2;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_12
    const v5, 0x7f130345

    .line 53
    invoke-virtual {p0, v5}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_13
    const v5, 0x7f130346

    .line 54
    invoke-virtual {p0, v5}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_14
    const v5, 0x7f130341

    .line 55
    invoke-virtual {p0, v5}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v5

    .line 56
    :goto_5
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->M0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v5}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 58
    :goto_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v5

    .line 59
    iget-boolean v5, v5, LnV0;->f:Z

    .line 60
    invoke-virtual {v0, v5}, LKc;->f(Z)V

    .line 61
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 62
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Q()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 64
    :cond_15
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 65
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/profiles/Profile;->d()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 66
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 67
    :goto_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Q0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v1, :cond_1a

    .line 68
    invoke-static {v1}, LJ/N;->MzcTHCWW(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->R0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v1, :cond_19

    .line 71
    invoke-static {v1}, LJ/N;->MizX$tfn(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->S0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v1, :cond_18

    .line 74
    invoke-static {v1}, LJ/N;->MNxRtBl2(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 76
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->O()V

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->V0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->G0:LeB0;

    .line 78
    invoke-virtual {v1}, LeB0;->a()Z

    move-result v1

    .line 79
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->W0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 81
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    .line 82
    invoke-static {v1}, LJ/N;->MuDQUpcO(Ljava/lang/Object;)Z

    move-result v1

    .line 83
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->X0:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_17

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 86
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->X0:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_16

    const v0, 0x7f130600

    goto :goto_8

    :cond_16
    const v0, 0x7f1305ff

    :goto_8
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    :cond_17
    return-void

    .line 87
    :cond_18
    throw v3

    .line 88
    :cond_19
    throw v3

    .line 89
    :cond_1a
    throw v3
.end method

.method public final Q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->I0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 16
    invoke-super {p0, p1, p2, p3}, Lrc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 17
    iget-boolean p3, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->I0:Z

    if-eqz p3, :cond_0

    const p3, 0x7f0e01ac

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b009d

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/widget/ButtonCompat;

    .line 20
    new-instance p3, LxB0;

    invoke-direct {p3, p0}, LxB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b00e1

    .line 21
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/widget/ButtonCompat;

    .line 22
    new-instance p3, LyB0;

    invoke-direct {p3, p0}, LyB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string p2, "SyncAndServicesPreferences.isFromSigninScreen"

    const/4 v0, 0x0

    .line 25
    invoke-static {p1, p2, v0}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->I0:Z

    .line 26
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->G0:LeB0;

    invoke-virtual {p1}, LeB0;->b()V

    .line 27
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130502

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    .line 29
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->I0:Z

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    check-cast p1, LQ8;

    invoke-virtual {p1}, LQ8;->G()LB8;

    move-result-object p1

    const p2, 0x7f130503

    .line 31
    check-cast p1, Lqa;

    .line 32
    iget-object p1, p1, Lqa;->e:LZe;

    check-cast p1, LXh;

    invoke-virtual {p1, p2}, LXh;->b(I)V

    const-string p1, "Signin_Signin_ShowAdvancedSyncSettings"

    .line 33
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f170019

    .line 34
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    const-string p1, "IdentityDisc"

    .line 35
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 37
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string p2, "user_category"

    .line 38
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    const-string p1, "sign_in"

    .line 39
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->J0:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    .line 40
    iget-boolean p2, p1, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->i0:Z

    if-nez p2, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->i0:Z

    .line 42
    iget-boolean p2, p1, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->p0:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    :cond_3
    :goto_0
    const-string p1, "manage_your_google_account"

    .line 43
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->K0:Landroid/support/v7/preference/Preference;

    .line 44
    new-instance p2, LvB0;

    invoke-direct {p2, p0}, LvB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    .line 45
    new-instance v0, LFB0;

    invoke-direct {v0, p0, p2}, LFB0;-><init>(Lrc;Ljava/lang/Runnable;)V

    .line 46
    iput-object v0, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    const-string p1, "sync_category"

    .line 47
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->L0:Landroid/support/v7/preference/PreferenceCategory;

    const-string p1, "sync_error_card"

    .line 48
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->M0:Landroid/support/v7/preference/Preference;

    .line 49
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    const v0, 0x7f080220

    const v1, 0x7f060088

    .line 50
    invoke-static {p2, v0, v1}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->M0:Landroid/support/v7/preference/Preference;

    new-instance p2, LwB0;

    invoke-direct {p2, p0}, LwB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    .line 52
    new-instance v0, LFB0;

    invoke-direct {v0, p0, p2}, LFB0;-><init>(Lrc;Ljava/lang/Runnable;)V

    .line 53
    iput-object v0, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    const-string p1, "sync_disabled_by_administrator"

    .line 54
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->N0:Landroid/support/v7/preference/Preference;

    const p2, 0x7f0800ce

    .line 55
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(I)V

    const-string p1, "sync_requested"

    .line 56
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 57
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p1, "manage_sync"

    .line 58
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->O0:Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    const-string p1, "search_suggestions"

    .line 59
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Q0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 60
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 61
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    .line 62
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 63
    invoke-static {p2, p1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const-string p1, "navigation_error"

    .line 64
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->R0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 65
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 66
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    .line 67
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 68
    invoke-static {p2, p1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const-string p1, "safe_browsing"

    .line 69
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->S0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 70
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 71
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    .line 72
    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 73
    invoke-static {p2, p1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const-string p1, "services_category"

    .line 74
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    const-string p2, "password_leak_detection"

    .line 75
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const-string p2, "PasswordLeakDetection"

    .line 76
    invoke-static {p2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 77
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 78
    iput-object p0, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 79
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    .line 80
    iput-object v1, p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 81
    invoke-static {v1, p2}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    goto :goto_1

    .line 82
    :cond_4
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 83
    invoke-virtual {p1, p2}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 84
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->p()V

    .line 85
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->T0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    :goto_1
    const-string p2, "safe_browsing_scout_reporting"

    .line 86
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->U0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 87
    iput-object p0, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 88
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    .line 89
    iput-object v1, p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 90
    invoke-static {v1, p2}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const-string p2, "usage_and_crash_reports"

    .line 91
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->V0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 92
    iput-object p0, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 93
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    .line 94
    iput-object v1, p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 95
    invoke-static {v1, p2}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const-string p2, "url_keyed_anonymized_data"

    .line 96
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->W0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 97
    iput-object p0, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 98
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->H0:Lqy0;

    .line 99
    iput-object v1, p2, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 100
    invoke-static {v1, p2}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    const-string p2, "contextual_search"

    .line 101
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->X0:Landroid/support/v7/preference/Preference;

    .line 102
    invoke-static {}, LP40;->a()Z

    move-result p2

    if-nez p2, :cond_5

    .line 103
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->X0:Landroid/support/v7/preference/Preference;

    .line 104
    invoke-virtual {p1, p2}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 105
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->p()V

    .line 106
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->X0:Landroid/support/v7/preference/Preference;

    .line 107
    :cond_5
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->d()LnG0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Y0:LnG0;

    .line 108
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P()V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const p2, 0x7f1303bf

    const/4 v0, 0x0

    const v1, 0x7f0b026d

    .line 2
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080160

    .line 3
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 113
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "sync_requested"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 115
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 116
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object p2

    .line 117
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->j()Z

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 118
    iget-wide v3, p2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 119
    invoke-static {v3, v4, p2}, LJ/N;->M2FbdG0l(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    const/4 v0, 0x6

    const-string v3, "Sync.StopSource"

    .line 120
    invoke-static {v3, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 121
    iget-wide v3, p2, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 122
    invoke-static {v3, v4, p2}, LJ/N;->Myc5Nx1y(JLjava/lang/Object;)V

    :goto_0
    const-string p1, "SyncManualStartAndroid"

    .line 123
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->Q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    const/4 p2, 0x2

    .line 126
    iget-wide v3, p1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 127
    invoke-static {v3, v4, p1, p2}, LJ/N;->MlP9oGhJ(JLjava/lang/Object;I)V

    .line 128
    :cond_2
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, LzB0;

    invoke-direct {p2, p0}, LzB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    .line 129
    invoke-static {p1, p2, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "search_suggestions"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 131
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_4

    .line 132
    invoke-static {p1, p2}, LJ/N;->MIFQbp0F(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    :cond_4
    throw v3

    :cond_5
    const-string v0, "safe_browsing"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_6

    .line 135
    invoke-static {p1, p2}, LJ/N;->ML12iPU4(Ljava/lang/Object;Z)V

    .line 136
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, LAB0;

    invoke-direct {p2, p0}, LAB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V

    .line 137
    invoke-static {p1, p2, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 138
    :cond_6
    throw v3

    :cond_7
    const-string v0, "password_leak_detection"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    const/16 v0, 0x10

    check-cast p2, Ljava/lang/Boolean;

    .line 141
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_8

    .line 142
    invoke-static {p1, v0, p2}, LJ/N;->MtxNNFos(Ljava/lang/Object;IZ)V

    goto :goto_1

    :cond_8
    throw v3

    :cond_9
    const-string v0, "safe_browsing_scout_reporting"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_a

    .line 145
    invoke-static {p1, p2}, LJ/N;->M8jrLaKk(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_a
    throw v3

    :cond_b
    const-string v0, "navigation_error"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->F0:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_c

    .line 148
    invoke-static {p1, p2}, LJ/N;->MZqoFKTa(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_c
    throw v3

    :cond_d
    const-string v0, "usage_and_crash_reports"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a(Z)V

    goto :goto_1

    :cond_e
    const-string v0, "url_keyed_anonymized_data"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 152
    check-cast p2, Ljava/lang/Boolean;

    .line 153
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 154
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p2

    .line 155
    invoke-static {p2, p1}, LJ/N;->MKI924$P(Ljava/lang/Object;Z)V

    :cond_f
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->I0:Z

    if-nez p1, :cond_0

    return v3

    :cond_0
    const-string p1, "Signin_Signin_BackOnAdvancedSyncSettings"

    .line 6
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences$CancelSyncDialog;-><init>()V

    .line 8
    invoke-virtual {p1, p0, v3}, Lz2;->a(Lz2;I)V

    .line 9
    iget-object v0, p0, Lz2;->N:LY2;

    const-string v1, "cancel_sync_dialog"

    .line 10
    invoke-virtual {p1, v0, v1}, Ls2;->a(LH2;Ljava/lang/String;)V

    return v2

    .line 11
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b026d

    if-ne p1, v0, :cond_2

    .line 12
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f13033b

    .line 13
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    .line 15
    invoke-virtual {p1, v0, v1, v3, v4}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    return v2

    :cond_2
    return v3
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 4
    iget-wide v2, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 5
    invoke-static {v2, v3, v0, p1}, LJ/N;->MlUAisy7(JLjava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P()V

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->P()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
