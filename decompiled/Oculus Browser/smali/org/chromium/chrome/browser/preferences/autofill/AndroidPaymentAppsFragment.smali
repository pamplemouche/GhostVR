.class public Lorg/chromium/chrome/browser/preferences/autofill/AndroidPaymentAppsFragment;
.super Lrc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/preferences/autofill/AndroidPaymentAppsFragment;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    new-instance v2, LNy0;

    .line 12
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 13
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    .line 14
    invoke-direct {v2, v3}, LNy0;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 18
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 19
    invoke-virtual {v1, v2}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 21
    new-instance v2, LNy0;

    .line 22
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 23
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    .line 24
    invoke-direct {v2, v3}, LNy0;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 26
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 27
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 28
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_2

    .line 29
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {v1, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p2, v1

    .line 30
    :goto_2
    invoke-virtual {v2, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 32
    iget-object p2, p2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 33
    invoke-virtual {p2, v2}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 34
    :cond_3
    new-instance p1, Lorg/chromium/chrome/browser/preferences/TextMessagePreference;

    .line 35
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 36
    iget-object p2, p2, LDc;->a:Landroid/content/Context;

    .line 37
    invoke-direct {p1, p2, v0}, Lorg/chromium/chrome/browser/preferences/TextMessagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f13049a

    .line 38
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->l0:Ljava/lang/Boolean;

    .line 40
    iget-object p0, p0, Lrc;->u0:LDc;

    .line 41
    iget-object p0, p0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 42
    invoke-virtual {p0, p1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    :goto_3
    return-void

    .line 43
    :cond_4
    throw v0
.end method


# virtual methods
.method public L()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 3
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 4
    invoke-virtual {v1}, Lvc;->y()V

    .line 5
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 6
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 7
    iput-boolean v0, v1, Lvc;->j0:Z

    .line 8
    new-instance v0, LOy0;

    invoke-direct {v0, p0}, LOy0;-><init>(Lorg/chromium/chrome/browser/preferences/autofill/AndroidPaymentAppsFragment;)V

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v1, "ServiceWorkerPaymentApps"

    .line 10
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LHv0;

    invoke-direct {v2, v0}, LHv0;-><init>(Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$GetServiceWorkerPaymentAppsInfoCallback;)V

    const-wide/16 v3, 0x0

    .line 12
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, LJ/N;->MFeChwbo(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130499

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 2
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 3
    iget-object p2, p1, LDc;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, p2}, LDc;->a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lrc;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    return-void
.end method
