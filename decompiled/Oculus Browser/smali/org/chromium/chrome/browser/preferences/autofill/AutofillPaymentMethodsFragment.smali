.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;
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

.method public static synthetic a(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;Landroid/support/v7/preference/Preference;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;->a(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/16 v0, 0xa

    .line 11
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
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;->O()V

    return-void
.end method

.method public final O()V
    .locals 8

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

    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, v0, v3}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f130175

    .line 10
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->d(I)V

    const v0, 0x7f130176

    .line 11
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    const/16 v0, 0xa

    .line 12
    invoke-static {v0}, LJ/N;->MsOpWxJh(I)Z

    move-result v4

    .line 13
    invoke-virtual {v1, v4}, LKc;->f(Z)V

    .line 14
    sget-object v4, LSy0;->w:Llc;

    .line 15
    iput-object v4, v1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 16
    new-instance v4, LTy0;

    invoke-direct {v4, p0}, LTy0;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;)V

    .line 17
    iput-object v4, v1, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    .line 18
    invoke-static {v4, v1}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 19
    iget-object v4, p0, Lrc;->u0:LDc;

    .line 20
    iget-object v4, v4, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 21
    invoke-virtual {v4, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 22
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 23
    iget-wide v4, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 24
    invoke-static {v4, v5, v1}, LJ/N;->MQERVwyl(JLjava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v1, v4}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 27
    new-instance v5, Landroid/support/v7/preference/Preference;

    .line 28
    iget-object v6, p0, Lrc;->u0:LDc;

    .line 29
    iget-object v6, v6, LDc;->a:Landroid/content/Context;

    .line 30
    invoke-direct {v5, v6, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iget-object v6, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->h:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v6

    .line 35
    iget v7, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->l:I

    .line 36
    invoke-static {v6, v7}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 37
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    const-class v6, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 40
    iput-object v6, v5, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    goto :goto_1

    .line 41
    :cond_0
    const-class v6, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 42
    iput-object v6, v5, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    const v6, 0x7f0e0038

    .line 43
    iput v6, v5, Landroid/support/v7/preference/Preference;->c0:I

    .line 44
    :goto_1
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v6

    .line 45
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v4

    const-string v7, "guid"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v4, p0, Lrc;->u0:LDc;

    .line 47
    iget-object v4, v4, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 48
    invoke-virtual {v4, v5}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v0}, LJ/N;->MsOpWxJh(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Landroid/support/v7/preference/Preference;

    .line 51
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 52
    iget-object v1, v1, LDc;->a:Landroid/content/Context;

    .line 53
    invoke-direct {v0, v1, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0802a8

    invoke-static {v1, v4}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06014b

    .line 57
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 58
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 59
    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f13016c

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 62
    const-class v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 63
    iput-object v1, v0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 65
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    invoke-virtual {v1, v0}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    const-string v0, "AndroidPaymentApps"

    .line 67
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "ServiceWorkerPaymentApps"

    if-nez v1, :cond_3

    .line 68
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 69
    :cond_3
    new-instance v1, Landroid/support/v7/preference/Preference;

    .line 70
    iget-object v5, p0, Lrc;->u0:LDc;

    .line 71
    iget-object v5, v5, LDc;->a:Landroid/content/Context;

    .line 72
    invoke-direct {v1, v5, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v3, 0x7f130499

    .line 73
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 74
    const-class v3, Lorg/chromium/chrome/browser/preferences/autofill/AndroidPaymentAppsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 75
    iput-object v3, v1, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 76
    iput-boolean v2, v1, Landroid/support/v7/preference/Preference;->a0:Z

    .line 77
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->o()V

    const-string v3, "payment_apps"

    .line 78
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 80
    iget-object v3, v3, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 81
    invoke-virtual {v3, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 82
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    .line 83
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v5, "org.chromium.intent.action.PAY"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v0, v3}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    :goto_2
    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;->a(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_3

    .line 87
    :cond_5
    new-instance v0, LUy0;

    invoke-direct {v0, p0, v1}, LUy0;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;Landroid/support/v7/preference/Preference;)V

    .line 88
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 89
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LGv0;

    invoke-direct {v2, v0}, LGv0;-><init>(Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$HasServiceWorkerPaymentAppsCallback;)V

    const-wide/16 v3, 0x0

    .line 90
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 91
    :cond_6
    invoke-static {v0}, LJ/N;->MCqa2KNs(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void

    .line 92
    :cond_8
    throw v3
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lz2;->c0:Z

    .line 17
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-wide v0, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 20
    invoke-static {v0, v1, p1}, LJ/N;->Melg71WL(JLjava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 21
    throw p1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130181

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 4
    iget-object p2, p1, LDc;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p1, p2}, LDc;->a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 6
    iget-boolean p2, p1, Lvc;->l0:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p1, Landroid/support/v7/preference/PreferenceScreen;->r0:Z

    .line 8
    invoke-virtual {p0, p1}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/support/v7/preference/Preference;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->c(Z)V

    goto :goto_0

    :cond_0
    const p2, 0x7f13049d

    .line 14
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->c(I)V

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->c(Z)V

    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lrc;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;->O()V

    return-void
.end method
