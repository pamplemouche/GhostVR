.class public abstract LTY;
.super Lorg/chromium/chrome/browser/ChromeActivity;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, LTY;

    .line 2
    new-instance v0, LVU;

    const-string v1, "Android.MainActivity.ExplicitMainViewIntentDispatched.OnCreate"

    invoke-direct {v0, v1}, LVU;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, LVU;

    const-string v1, "Android.MainActivity.ExplicitMainViewIntentDispatched.OnNewIntent"

    invoke-direct {v0, v1}, LVU;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, LaV;

    const-string v1, "Android.MainActivity.UndispatchedExplicitMainViewIntentSource"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.chrome.Main"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    const-class p1, LTY;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    return-void
.end method
