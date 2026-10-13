.class public Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"

# interfaces
.implements LuF0;
.implements LJE0;
.implements LmV0;
.implements LoG0;
.implements LFU0;


# instance fields
.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:LGF0;

.field public final m0:LKE0;

.field public n0:I

.field public o0:Ljava/lang/Runnable;

.field public p0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->i0:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070337

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 4
    new-instance v0, LKE0;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p1, p2, v1}, LKE0;-><init>(Landroid/content/Context;ILIE0;)V

    .line 6
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->m0:LKE0;

    .line 7
    new-instance p1, LtB0;

    invoke-direct {p1, p0}, LtB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;)V

    .line 8
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->B:Lmc;

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->n0:I

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    .line 1
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0e0022

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->e(I)V

    .line 4
    iput v4, p0, Landroid/support/v7/preference/Preference;->b0:I

    const v0, 0x7f13058c

    .line 5
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->d(I)V

    const v0, 0x7f13058d

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 7
    iput-object v3, p0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    const v0, 0x7f0800ce

    .line 8
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(I)V

    .line 9
    iput v2, p0, Landroid/support/v7/preference/Preference;->c0:I

    .line 10
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->f(Z)V

    .line 11
    iput-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    .line 12
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->j0:Z

    return-void

    .line 13
    :cond_0
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x3

    .line 14
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->e(I)V

    .line 15
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->m0:LKE0;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, LKE0;->a(Ljava/util/List;)V

    .line 16
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->m0:LKE0;

    invoke-virtual {v5, v0}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object v5

    .line 17
    iput v4, p0, Landroid/support/v7/preference/Preference;->b0:I

    .line 18
    invoke-virtual {v5}, LGE0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 20
    const-class v0, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 22
    iget-object v0, v5, LGE0;->b:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iput v2, p0, Landroid/support/v7/preference/Preference;->c0:I

    .line 25
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->f(Z)V

    .line 26
    iput-object v3, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    .line 27
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->j0:Z

    return-void

    .line 28
    :cond_1
    sget-object v0, Lay0;->a:Lcy0;

    const-string v3, "settings_personalized_signin_promo_dismissed"

    .line 29
    invoke-virtual {v0, v3, v2}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->i0:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->y()V

    return-void

    .line 33
    :cond_3
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/16 v3, 0x14

    const-string v4, "signin_promo_impressions_count_settings"

    .line 34
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->y()V

    return-void

    .line 36
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->x()V

    return-void

    .line 37
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->x()V

    return-void
.end method

.method public a()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    return-void
.end method

.method public a(LGc;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    .line 2
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->k0:Z

    invoke-static {v0, v1}, LGO0;->a(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b03f9

    .line 4
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->m0:LKE0;

    new-instance v2, LuB0;

    invoke-direct {v2, p0}, LuB0;-><init>(Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;)V

    .line 6
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/components/signin/AccountManagerFacade;->e()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v4, :cond_1

    .line 8
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, LKE0;->a(Ljava/util/List;)V

    .line 10
    invoke-virtual {v1, v3}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v6

    .line 11
    :goto_0
    iget-object v3, v0, LGF0;->b:LFk0;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3, v6}, LFk0;->a(LEk0;)V

    .line 13
    iput-object v6, v0, LGF0;->b:LFk0;

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 15
    iput-object v1, v0, LGF0;->a:LGE0;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, LGF0;->q:Z

    .line 17
    new-instance v4, LFk0;

    invoke-direct {v4, p1}, LFk0;-><init>(Landroid/view/View;)V

    iput-object v4, v0, LGF0;->b:LFk0;

    .line 18
    iget-object v6, v0, LGF0;->c:LMk0;

    invoke-virtual {v4, v6}, LFk0;->a(LEk0;)V

    .line 19
    iget-object v4, v0, LGF0;->a:LGE0;

    const/16 v6, 0x8

    if-nez v4, :cond_3

    .line 20
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->w:Landroid/widget/ImageView;

    const v4, 0x7f0800b9

    .line 21
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0702a4

    .line 22
    invoke-virtual {v0, v3, p1, v1}, LGF0;->a(Landroid/content/Context;Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;I)V

    .line 23
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->y:Landroid/widget/TextView;

    .line 24
    iget v4, v0, LGF0;->p:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 25
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->z:Lorg/chromium/ui/widget/ButtonCompat;

    const v4, 0x7f13058c

    .line 26
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 27
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->z:Lorg/chromium/ui/widget/ButtonCompat;

    .line 28
    new-instance v4, LCF0;

    invoke-direct {v4, v0, v3}, LCF0;-><init>(LGF0;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->A:Landroid/widget/Button;

    .line 30
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 31
    :cond_3
    iget-object v4, v4, LGE0;->b:Landroid/graphics/drawable/Drawable;

    .line 32
    iget-object v6, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->w:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f0702a3

    .line 34
    invoke-virtual {v0, v3, p1, v4}, LGF0;->a(Landroid/content/Context;Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;I)V

    .line 35
    iget-object v4, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->y:Landroid/widget/TextView;

    .line 36
    iget v6, v0, LGF0;->o:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f130597

    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    iget-object v6, v0, LGF0;->a:LGE0;

    .line 38
    iget-object v7, v6, LGE0;->d:Ljava/lang/String;

    if-eqz v7, :cond_4

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {v6}, LGE0;->a()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v1, v5

    .line 40
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v4, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->z:Lorg/chromium/ui/widget/ButtonCompat;

    .line 42
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->z:Lorg/chromium/ui/widget/ButtonCompat;

    .line 44
    new-instance v4, LDF0;

    invoke-direct {v4, v0, v3}, LDF0;-><init>(LGF0;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->A:Landroid/widget/Button;

    const v4, 0x7f130596

    .line 46
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 47
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->A:Landroid/widget/Button;

    .line 48
    new-instance v4, LEF0;

    invoke-direct {v4, v0, v3}, LEF0;-><init>(LGF0;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->A:Landroid/widget/Button;

    .line 50
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    :goto_2
    iget-object v1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->x:Landroid/widget/ImageButton;

    .line 52
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 53
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->x:Landroid/widget/ImageButton;

    .line 54
    new-instance v1, LBF0;

    invoke-direct {v1, v0, v2}, LBF0;-><init>(LGF0;LFF0;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->n0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->n0:I

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->o0:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->k0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->k0:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    return-void
.end method

.method public w()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/components/signin/AccountManagerFacade;->a(LFU0;)V

    .line 2
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->g:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->m0:LKE0;

    invoke-virtual {v0, p0}, LKE0;->a(LJE0;)V

    .line 5
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, LFc0;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "first_run_signin_complete"

    .line 9
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->j:Z

    .line 11
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->i()V

    .line 13
    :cond_3
    :goto_0
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0, p0}, LnV0;->a(LmV0;)V

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    :cond_4
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->p0:Z

    .line 17
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    return-void
.end method

.method public final x()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->e(I)V

    const v1, 0x7f0e0022

    .line 2
    iput v1, p0, Landroid/support/v7/preference/Preference;->b0:I

    const v1, 0x7f13058c

    .line 3
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->d(I)V

    const v1, 0x7f130594

    .line 4
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->c(I)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const v3, 0x7f080258

    .line 7
    invoke-static {v2, v3}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Landroid/support/v7/preference/Preference;->c0:I

    .line 9
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->f(Z)V

    .line 10
    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    .line 11
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->j0:Z

    if-nez v1, :cond_0

    const-string v1, "Signin_Impression_FromSettings"

    .line 12
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 13
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->j0:Z

    return-void
.end method

.method public final y()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->e(I)V

    const v0, 0x7f0e0163

    .line 2
    iput v0, p0, Landroid/support/v7/preference/Preference;->b0:I

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/support/v7/preference/Preference;->c0:I

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->f(Z)V

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, LGF0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LGF0;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->l0:LGF0;

    .line 11
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->j0:Z

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/components/signin/AccountManagerFacade;->b(LFU0;)V

    .line 2
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->g:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->m0:LKE0;

    invoke-virtual {v0, p0}, LKE0;->b(LJE0;)V

    .line 5
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v0

    invoke-virtual {v0, p0}, LnV0;->b(LmV0;)V

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b(LoG0;)V

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->p0:Z

    return-void
.end method
