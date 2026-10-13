.class public Lorg/chromium/chrome/browser/signin/SigninUtils;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    :cond_0
    invoke-static {p0, v0}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static a(Lorg/chromium/ui/base/WindowAndroid;Landroid/content/Intent;)Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LYU0;->c:LYU0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, LYU0;

    invoke-direct {v0}, LYU0;-><init>()V

    sput-object v0, LYU0;->c:LYU0;

    .line 4
    :cond_0
    sget-object v0, LYU0;->c:LYU0;

    .line 5
    new-instance v1, LKF0;

    invoke-direct {v1, v0}, LKF0;-><init>(LYU0;)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    iget p0, v0, LYU0;->a:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, v0, LYU0;->a:I

    if-ne p0, p1, :cond_1

    .line 8
    iget-object p0, v0, LYU0;->b:LMU0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, LMU0;->a(Ljava/lang/Object;)V

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static openAccountManagementScreen(Lorg/chromium/ui/base/WindowAndroid;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v0, "MobileIdentityConsistency"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SYNC_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/signin/SigninUtils;->a(Lorg/chromium/ui/base/WindowAndroid;Landroid/content/Intent;)Z

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    const/16 p2, 0x8

    .line 7
    invoke-static {p2, p1}, LJ/N;->MAoV8w8M(II)V

    .line 8
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object p1

    new-instance p2, LJF0;

    invoke-direct {p2, p0}, LJF0;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {p1, p2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Lorg/chromium/base/Callback;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 10
    invoke-virtual {v0, p2, p0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/base/Callback;)V

    :goto_1
    return-void

    .line 11
    :cond_3
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;->h(I)V

    return-void
.end method
