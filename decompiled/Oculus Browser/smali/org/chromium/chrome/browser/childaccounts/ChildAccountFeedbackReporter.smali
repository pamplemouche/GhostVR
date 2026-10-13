.class public final Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LTb0;


# direct methods
.method public static reportFeedbackWithWindow(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    sget-object p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->a:LTb0;

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    new-instance v0, LiY;

    invoke-direct {v0, p0}, LiY;-><init>(Lorg/chromium/chrome/browser/AppHooks;)V

    .line 6
    sput-object v0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->a:LTb0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    throw p0

    .line 8
    :cond_1
    :goto_0
    new-instance v0, LRb0;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, LE20;->a:Lorg/chromium/base/Callback;

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, LRb0;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;)V

    return-void
.end method
