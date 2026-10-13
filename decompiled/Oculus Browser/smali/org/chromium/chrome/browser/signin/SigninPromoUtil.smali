.class public Lorg/chromium/chrome/browser/signin/SigninPromoUtil;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static openSigninActivityForPromo(Lorg/chromium/ui/base/WindowAndroid;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1}, LPE0;->b(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method
