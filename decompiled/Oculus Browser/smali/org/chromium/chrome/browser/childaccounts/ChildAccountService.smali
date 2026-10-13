.class public Lorg/chromium/chrome/browser/childaccounts/ChildAccountService;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static reauthenticateChildAccount(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, LZ01;->a:LFW;

    new-instance p1, LG20;

    invoke-direct {p1, p2, p3}, LG20;-><init>(J)V

    const-wide/16 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacade;->c(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    .line 6
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    new-instance v1, LH20;

    invoke-direct {v1, p2, p3}, LH20;-><init>(J)V

    invoke-virtual {v0, p1, p0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/base/Callback;)V

    return-void
.end method
