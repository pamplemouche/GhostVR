.class public abstract Lze0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, LBg0;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v0, 0x0

    const-string v1, "chrome-native://history/"

    .line 4
    invoke-direct {p0, v1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 7
    const-class v1, Lve0;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "org.chromium.chrome.browser.parent_component"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    const-string v1, "org.chromium.chrome.browser.incognito_mode"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
