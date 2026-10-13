.class public abstract LHE0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()Lorg/chromium/components/signin/AccountTrackerService;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 3
    invoke-static {v0}, LJ/N;->Md_9R$a0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/AccountTrackerService;

    return-object v0
.end method

.method public static b()Lorg/chromium/chrome/browser/signin/SigninManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 3
    invoke-static {v0}, LJ/N;->My81bEUX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninManager;

    return-object v0
.end method
