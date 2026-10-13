.class public Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements LsA0;
.implements Lmc;


# instance fields
.field public E0:Z

.field public F0:Z

.field public G0:Landroid/view/MenuItem;

.field public H0:Landroid/view/MenuItem;

.field public I0:Ljava/lang/String;

.field public J0:Landroid/support/v7/preference/Preference;

.field public K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

.field public L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

.field public M0:Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

.field public N0:LjA0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    .line 2
    new-instance v0, LjA0;

    invoke-direct {v0}, LjA0;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->N0:LjA0;

    return-void
.end method

.method public static final synthetic S()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LJ/N;->MMvWomUj(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static final synthetic T()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LJ/N;->MQueAFkM(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0, p0}, LJ/N;->Mk$Rrr$g(Ljava/lang/Object;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {v0, p0}, LJ/N;->Mg0LYPkD(Ljava/lang/Object;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public H()V
    .locals 1

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    sget-object v0, LvA0;->a:LwA0;

    .line 3
    invoke-virtual {v0, p0}, LwA0;->b(LsA0;)V

    return-void
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, LxA0;->a:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 3
    sput v0, LxA0;->b:I

    return-void
.end method

.method public L()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->N0:LjA0;

    .line 3
    iget v2, v1, LjA0;->a:I

    if-ne v2, v0, :cond_2

    .line 4
    invoke-static {v0}, LxA0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v1, LjA0;->f:Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

    if-nez v0, :cond_2

    invoke-virtual {v1}, LjA0;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v1, LjA0;->f:Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ls2;->g(Z)V

    .line 8
    :cond_1
    iput v2, v1, LjA0;->a:I

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->Q()V

    return-void
.end method

.method public final O()V
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    .line 2
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 3
    iget-object v1, v1, LDc;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/TextMessagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->M0:Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    const v1, 0x7f13054b

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->M0:Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    const-string v1, "saved_passwords_no_text"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->M0:Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->M0:Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->k0:Ljava/lang/Boolean;

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->M0:Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    .line 11
    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->l0:Ljava/lang/Boolean;

    .line 12
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 13
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 14
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->M0:Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public final P()V
    .locals 8

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->E0:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 4
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "manage_account_link"

    .line 5
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->J0:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 8
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 9
    invoke-virtual {v1, v0}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    return-void

    .line 10
    :cond_3
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 11
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060093

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 13
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const v2, 0x7f1303a8

    .line 14
    invoke-virtual {p0, v2}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [LWe1;

    const/4 v4, 0x0

    new-instance v5, LWe1;

    const-string v6, "<link>"

    const-string v7, "</link>"

    invoke-direct {v5, v6, v7, v0}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v0

    .line 15
    new-instance v2, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 16
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 17
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    .line 18
    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->J0:Landroid/support/v7/preference/Preference;

    .line 19
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->J0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->J0:Landroid/support/v7/preference/Preference;

    .line 22
    iput-object p0, v0, Landroid/support/v7/preference/Preference;->B:Lmc;

    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 24
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 25
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 26
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->J0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public Q()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->E0:Z

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->F0:Z

    .line 3
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 4
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 5
    invoke-virtual {v1}, Lvc;->y()V

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 8
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 9
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    .line 10
    invoke-direct {v1, v3, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const-string v3, "save_passwords_switch"

    .line 11
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const v3, 0x7f1304fb

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 13
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const v1, 0x7f130600

    invoke-virtual {v0, v1}, LKc;->f(I)V

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    const v1, 0x7f1305ff

    invoke-virtual {v0, v1}, LKc;->e(I)V

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    sget-object v1, LzA0;->w:Llc;

    .line 17
    iput-object v1, v0, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 18
    sget-object v1, LAA0;->a:Lqy0;

    .line 19
    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 20
    invoke-static {v1, v0}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 21
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 23
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 24
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v1, v3}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v0}, LqU;->close()V

    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->K0:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    .line 27
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 28
    invoke-static {v1}, LJ/N;->M9MYHnP_(Ljava/lang/Object;)Z

    move-result v1

    .line 29
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 31
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 32
    iget-object v1, v1, LDc;->a:Landroid/content/Context;

    .line 33
    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    const-string v1, "autosignin_switch"

    .line 34
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    const v1, 0x7f130491

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    const v1, 0x7f130490

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    sget-object v1, LBA0;->w:Llc;

    .line 39
    iput-object v1, v0, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 40
    sget-object v1, LCA0;->a:Lqy0;

    .line 41
    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->o0:Lqy0;

    .line 42
    invoke-static {v1, v0}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 43
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 44
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 45
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->L0:Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 47
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {v1}, LJ/N;->MWDJfi2P(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    invoke-virtual {v0, v1}, LKc;->f(Z)V

    goto :goto_1

    .line 50
    :cond_0
    throw v2

    .line 51
    :cond_1
    throw v2

    :catchall_0
    move-exception v1

    .line 52
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 53
    :try_start_2
    invoke-virtual {v0}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 54
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 55
    :goto_0
    throw v2

    .line 56
    :cond_2
    :goto_1
    sget-object v0, LvA0;->a:LwA0;

    if-eqz v0, :cond_3

    .line 57
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 58
    iget-object v0, v0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 59
    invoke-interface {v0}, LtA0;->a()V

    return-void

    .line 60
    :cond_3
    throw v2
.end method

.method public final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "saved_passwords_no_text"

    .line 3
    invoke-virtual {v0, v1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 5
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 6
    invoke-virtual {v1, v0}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 7
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->p()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 11

    const-string v0, "saved_passwords"

    .line 74
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->e(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->R()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 76
    :goto_0
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->E0:Z

    if-eqz v3, :cond_2

    .line 77
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->F0:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->O()V

    :cond_1
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->P()V

    .line 79
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 80
    new-instance v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 81
    iget-object v5, p0, Lrc;->u0:LDc;

    .line 82
    iget-object v5, v5, LDc;->a:Landroid/content/Context;

    .line 83
    invoke-direct {v3, v5, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    const v0, 0x7f1304fc

    .line 85
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->d(I)V

    const/4 v0, 0x3

    .line 86
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 87
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 88
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 89
    invoke-virtual {v0, v3}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 90
    :cond_3
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 91
    iget-object v3, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_8

    .line 92
    sget-object v5, LvA0;->a:LwA0;

    if-eqz v5, :cond_7

    .line 93
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 94
    iget-object v5, v5, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 95
    invoke-interface {v5, v0}, LtA0;->b(I)Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;

    move-result-object v5

    .line 96
    iget-object v6, v5, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;->a:Ljava/lang/String;

    .line 97
    iget-object v7, v5, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;->b:Ljava/lang/String;

    .line 98
    iget-object v5, v5, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;->c:Ljava/lang/String;

    .line 99
    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    if-nez v8, :cond_4

    goto :goto_3

    .line 100
    :cond_4
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_6

    goto :goto_5

    .line 103
    :cond_6
    new-instance v8, Landroid/support/v7/preference/Preference;

    .line 104
    iget-object v9, p0, Lrc;->u0:LDc;

    .line 105
    iget-object v9, v9, LDc;->a:Landroid/content/Context;

    .line 106
    invoke-direct {v8, v9, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 108
    iput-object p0, v8, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 109
    invoke-virtual {v8, v7}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v8}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "name"

    .line 111
    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "url"

    .line 112
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "password"

    .line 113
    invoke-virtual {v9, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "id"

    .line 114
    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v3, v8}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_7
    throw v4

    .line 117
    :cond_8
    invoke-virtual {v3}, Lvc;->w()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->E0:Z

    if-eqz v1, :cond_c

    if-nez p1, :cond_a

    .line 118
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->O()V

    .line 119
    :cond_a
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    if-nez p1, :cond_b

    .line 120
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 121
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 122
    invoke-virtual {p1, v3}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 123
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->p()V

    goto :goto_6

    .line 124
    :cond_b
    iget-object p1, p0, Lz2;->e0:Landroid/view/View;

    const v0, 0x7f130126

    .line 125
    invoke-virtual {p0, v0}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->N0:LjA0;

    new-instance v0, LDA0;

    invoke-direct {v0, p0}, LDA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V

    .line 2
    iput-object v0, p2, LjA0;->g:LiA0;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "saved-state-export-state"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, LjA0;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p2}, LjA0;->c()V

    :cond_1
    const-string v0, "saved-state-export-file-uri"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p2, LjA0;->b:Landroid/net/Uri;

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, LjA0;->b:Landroid/net/Uri;

    :cond_3
    :goto_0
    const-string v0, "saved-state-entries-count"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, LjA0;->c:Ljava/lang/Integer;

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    const v0, 0x7f1304fc

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 14
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 15
    iget-object v0, p2, LDc;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {p2, v0}, LDc;->a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p0, p2}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 17
    sget-object p2, LvA0;->a:LwA0;

    .line 18
    invoke-virtual {p2, p0}, LwA0;->a(LsA0;)V

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p0, p2}, Lz2;->c(Z)V

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string p2, "saved-state-search-query"

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 3

    const v0, 0x7f0b01b9

    .line 35
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->E0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->N0:LjA0;

    .line 36
    iget v0, v0, LjA0;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 25
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0009

    .line 26
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b01b9

    .line 27
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 28
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const p2, 0x7f0b026b

    .line 29
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->H0:Landroid/view/MenuItem;

    .line 30
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p2, 0x7f0b026d

    .line 31
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->G0:Landroid/view/MenuItem;

    .line 32
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->H0:Landroid/view/MenuItem;

    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    new-instance v1, LyA0;

    invoke-direct {v1, p0}, LyA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V

    .line 34
    invoke-static {p1, p2, v0, v1}, LIy0;->a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;LHy0;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lrc;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 7

    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b01b9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 39
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->N0:LjA0;

    .line 40
    iput v4, p1, LjA0;->a:I

    .line 41
    iput-object v3, p1, LjA0;->c:Ljava/lang/Integer;

    .line 42
    sget-object v0, LvA0;->a:LwA0;

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 44
    iget-object v0, v0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/passwords"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v3, LbA0;

    invoke-direct {v3, p1}, LbA0;-><init>(LjA0;)V

    new-instance v5, LcA0;

    invoke-direct {v5, p1}, LcA0;-><init>(LjA0;)V

    .line 49
    invoke-interface {v0, v1, v3, v5}, LtA0;->a(Ljava/lang/String;Lorg/chromium/base/IntStringCallback;Lorg/chromium/base/Callback;)V

    .line 50
    iget-object v0, p1, LjA0;->g:LiA0;

    .line 51
    check-cast v0, LDA0;

    invoke-virtual {v0}, LDA0;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-static {v0}, LxA0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p1, LjA0;->g:LiA0;

    check-cast v0, LDA0;

    invoke-virtual {v0}, LDA0;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130488

    invoke-static {v0, v1, v4}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object v0

    .line 54
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    iput v2, p1, LjA0;->a:I

    goto :goto_0

    :cond_0
    const v0, 0x7f1303a0

    .line 56
    iget-object v1, p1, LjA0;->g:LiA0;

    .line 57
    check-cast v1, LDA0;

    .line 58
    iget-object v1, v1, LDA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    .line 59
    iget-object v1, v1, Lz2;->e0:Landroid/view/View;

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 61
    iget-object p1, p1, LjA0;->g:LiA0;

    .line 62
    check-cast p1, LDA0;

    .line 63
    iget-object p1, p1, LDA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    .line 64
    iget-object p1, p1, Lz2;->N:LY2;

    .line 65
    invoke-static {v0, v1, p1, v4}, LxA0;->a(IILH2;I)V

    :goto_0
    return v4

    .line 66
    :cond_1
    throw v3

    .line 67
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->H0:Landroid/view/MenuItem;

    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v6

    invoke-static {p1, v1, v5, v6}, LIy0;->a(Landroid/view/MenuItem;Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iput-object v3, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->G0:Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 70
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->Q()V

    return v4

    :cond_3
    const p1, 0x7f0b026d

    if-ne v0, p1, :cond_4

    .line 71
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f130335

    .line 72
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    .line 73
    invoke-virtual {p1, v0, v1, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    return v4

    :cond_4
    return v2
.end method

.method public b(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "exceptions"

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->e(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->R()V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_0
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->F0:Z

    if-eqz v2, :cond_3

    .line 5
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->E0:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->O()V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->P()V

    .line 7
    new-instance v2, Landroid/support/v7/preference/PreferenceCategory;

    .line 8
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 9
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    const/4 v4, 0x0

    .line 10
    invoke-direct {v2, v3, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    const v0, 0x7f13055e

    .line 12
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->d(I)V

    const/4 v0, 0x4

    .line 13
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 14
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 15
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 16
    invoke-virtual {v0, v2}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    if-ge v1, p1, :cond_5

    .line 17
    sget-object v0, LvA0;->a:LwA0;

    if-eqz v0, :cond_4

    .line 18
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 19
    iget-object v0, v0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 20
    invoke-interface {v0, v1}, LtA0;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v3, Landroid/support/v7/preference/Preference;

    .line 22
    iget-object v5, p0, Lrc;->u0:LDc;

    .line 23
    iget-object v5, v5, LDc;->a:Landroid/content/Context;

    .line 24
    invoke-direct {v3, v5, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 26
    iput-object p0, v3, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 27
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    .line 28
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    .line 29
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v2, v3}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 31
    :cond_4
    throw v4

    :cond_5
    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->J0:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    invoke-static {}, LJ/N;->MR6b2jDJ()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v2, "found_via_search_args"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const-class v2, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 10
    invoke-static {p1, v2, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_1
    return v1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lrc;->d(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->N0:LjA0;

    .line 3
    iget v1, v0, LjA0;->a:I

    const-string v2, "saved-state-export-state"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, v0, LjA0;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "saved-state-entries-count"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    :cond_0
    iget-object v0, v0, LjA0;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved-state-export-file-uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "saved-state-search-query"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 3
    invoke-virtual {v0, p1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lvc;->y()V

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
