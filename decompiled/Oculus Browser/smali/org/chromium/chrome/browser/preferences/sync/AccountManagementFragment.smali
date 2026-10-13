.class public Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;
.super Lrc;
.source "PG"

# interfaces
.implements LNE0;
.implements LxF0;
.implements LJE0;


# instance fields
.field public E0:I

.field public F0:Lorg/chromium/chrome/browser/profiles/Profile;

.field public G0:Ljava/lang/String;

.field public H0:LKE0;

.field public I0:LnG0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    return-void
.end method

.method public static g(Z)V
    .locals 2

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "auto_signed_in_school_account"

    .line 2
    invoke-static {v0, v1, p0}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static h(I)V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ShowGAIAServiceType"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 5
    const-class v1, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    .line 6
    invoke-static {p0, v1, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 1

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->I0:LnG0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, LnG0;->a()V

    :cond_0
    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->H0:LKE0;

    invoke-virtual {v0, p0}, LKE0;->b(LJE0;)V

    return-void
.end method

.method public L()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->H0:LKE0;

    invoke-virtual {v0, p0}, LKE0;->a(LJE0;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->H0:LKE0;

    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/components/signin/AccountManagerFacade;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LKE0;->a(Ljava/util/List;)V

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->O()V

    return-void
.end method

.method public O()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 3
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lvc;->y()V

    .line 5
    :cond_1
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->G0:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const v0, 0x7f170002

    .line 7
    invoke-virtual {p0, v0}, Lrc;->g(I)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->H0:LKE0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->G0:Ljava/lang/String;

    invoke-virtual {v0, v1}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, LGE0;->a()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "sign_out"

    .line 11
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->F0:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/profiles/Profile;->d()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 14
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 15
    invoke-virtual {v1, v0}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 16
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 17
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "sign_out_divider"

    .line 18
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_3
    const v1, 0x7f13058e

    .line 19
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 20
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v3, "auto_signed_in_school_account"

    .line 21
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 23
    new-instance v1, LhB0;

    invoke-direct {v1, p0}, LhB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;)V

    .line 24
    iput-object v1, v0, Landroid/support/v7/preference/Preference;->B:Lmc;

    :goto_0
    const-string v0, "parent_accounts"

    .line 25
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "child_content"

    .line 26
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 27
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->F0:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/profiles/Profile;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 28
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 29
    invoke-static {v3}, LJ/N;->Msm$lWni(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v3}, LJ/N;->McfIv5sy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v6, :cond_4

    const v6, 0x7f130131

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v7

    aput-object v5, v9, v2

    .line 32
    invoke-virtual {p0, v6, v9}, Lz2;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 33
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const v5, 0x7f13012d

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v7

    .line 34
    invoke-virtual {p0, v5, v2}, Lz2;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const v2, 0x7f13012c

    .line 35
    invoke-virtual {p0, v2}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {v3}, LJ/N;->MIIuq3j4(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v8, :cond_6

    const v0, 0x7f130129

    goto :goto_2

    .line 38
    :cond_6
    invoke-static {v3}, LJ/N;->M33e8svO(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f13012a

    goto :goto_2

    :cond_7
    const v0, 0x7f130128

    .line 39
    :goto_2
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 40
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080125

    .line 41
    invoke-static {v0, v2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060079

    .line 44
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 45
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 48
    throw v0

    .line 49
    :cond_9
    iget-object v2, p0, Lrc;->u0:LDc;

    .line 50
    iget-object v2, v2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "parental_settings"

    .line 51
    invoke-virtual {p0, v3}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 52
    invoke-virtual {v2, v0}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 53
    invoke-virtual {v2, v1}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    const-string v0, "child_content_divider"

    .line 54
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 55
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->P()V

    return-void
.end method

.method public final P()V
    .locals 8

    const-string v0, "accounts_category"

    .line 1
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lvc;->y()V

    .line 3
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/components/signin/AccountManagerFacade;->e()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x7f0e0022

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 6
    new-instance v5, Landroid/support/v7/preference/Preference;

    .line 7
    iget-object v6, p0, Lrc;->u0:LDc;

    .line 8
    iget-object v6, v6, LDc;->a:Landroid/content/Context;

    const/4 v7, 0x0

    .line 9
    invoke-direct {v5, v6, v7}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput v4, v5, Landroid/support/v7/preference/Preference;->b0:I

    .line 11
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->H0:LKE0;

    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object v4

    .line 13
    iget-object v4, v4, LGE0;->b:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance v4, LiB0;

    invoke-direct {v4, p0, v3}, LiB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;Landroid/accounts/Account;)V

    .line 16
    iput-object v4, v5, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 17
    invoke-virtual {v0, v5}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->F0:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/profiles/Profile;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;

    .line 20
    iget-object v2, p0, Lrc;->u0:LDc;

    .line 21
    iget-object v2, v2, LDc;->a:Landroid/content/Context;

    .line 22
    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;)V

    .line 23
    iput v4, v1, Landroid/support/v7/preference/Preference;->b0:I

    .line 24
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    const v3, 0x7f0800f7

    invoke-static {v2, v3}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f130127

    .line 26
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 27
    new-instance v2, LjB0;

    invoke-direct {v2, p0}, LjB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;)V

    .line 28
    iput-object v2, v1, Landroid/support/v7/preference/Preference;->B:Lmc;

    .line 29
    new-instance v2, LkB0;

    invoke-direct {v2, p0}, LkB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;)V

    .line 30
    iput-object v2, v1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->j0:Lqy0;

    .line 31
    invoke-static {v2, v1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 32
    invoke-virtual {v0, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lz2;->c0:Z

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v0, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 25
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->d()LnG0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->I0:LnG0;

    .line 3
    :cond_0
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 4
    iget p2, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    const-string v0, "ShowGAIAServiceType"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    .line 5
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->F0:Lorg/chromium/chrome/browser/profiles/Profile;

    const/4 p1, 0x0

    .line 6
    iget p2, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    .line 7
    invoke-static {p1, p2}, LJ/N;->MAoV8w8M(II)V

    .line 8
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070337

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p2, 0x0

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->F0:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0800f4

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 11
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 13
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 14
    new-instance v3, LIE0;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v3, p2, v4, v2}, LIE0;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V

    move-object p2, v3

    .line 15
    :cond_2
    new-instance v0, LKE0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, LKE0;-><init>(Landroid/content/Context;ILIE0;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->H0:LKE0;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->P()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 17
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment$ClearDataProgressDialog;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment$ClearDataProgressDialog;-><init>()V

    .line 19
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, LmB0;

    invoke-direct {v3, p0, v0}, LmB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;Ls2;)V

    invoke-virtual {v1, v2, v3, p1}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(ILyF0;Z)V

    const/4 p1, 0x6

    .line 20
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    .line 21
    invoke-static {p1, v0}, LJ/N;->MAoV8w8M(II)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->O()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x7

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->E0:I

    .line 2
    invoke-static {p1, v0}, LJ/N;->MAoV8w8M(II)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->O()V

    return-void
.end method
