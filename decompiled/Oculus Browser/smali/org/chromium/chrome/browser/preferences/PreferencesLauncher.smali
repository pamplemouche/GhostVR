.class public Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v1, Lyy0;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    const/high16 p0, 0x10000000

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    .line 8
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "show_fragment"

    .line 9
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "show_fragment_args"

    .line 10
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 3

    const-string v0, "PasswordManager.ManagePasswordsReferrer"

    const/16 v1, 0x8

    .line 11
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "PasswordManager.ManagePasswordsReferrerSignedInAndSyncing"

    .line 13
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-static {p1}, LJ/N;->MQueAFkM(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    throw v2

    .line 18
    :cond_1
    throw v2

    .line 19
    :cond_2
    :goto_0
    const-class p1, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    .line 20
    invoke-static {p0, p1, v2}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static a()Z
    .locals 4

    .line 21
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, LKU0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static showAutofillCreditCardSettings(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    const-string v0, "AutofillCreditCardsViewed"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 2
    const-class v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;

    .line 3
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public static showAutofillProfileSettings(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    const-string v0, "AutofillAddressesViewed"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 2
    const-class v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfilesFragment;

    .line 3
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public static showPasswordSettings(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/app/Activity;I)V

    return-void
.end method
