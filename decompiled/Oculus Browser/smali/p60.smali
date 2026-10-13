.class public abstract Lp60;
.super Lorg/chromium/chrome/browser/ChromeActivity;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp60;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, LCi;

    invoke-direct {v0}, LCi;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, LCi;->a(Z)LCi;

    .line 3
    instance-of v2, p0, LOY;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, p0

    check-cast v2, LOY;

    .line 5
    iget-object v2, v2, LOY;->J:LIl0;

    .line 6
    invoke-interface {v2}, LIl0;->b()Z

    move-result v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, LFl0;->a()LIl0;

    move-result-object v2

    invoke-interface {v2}, LIl0;->b()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    const/4 v1, 0x2

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, LCi;->a(I)LCi;

    .line 9
    invoke-virtual {v0}, LCi;->a()LDi;

    move-result-object v0

    .line 10
    iget-object v1, v0, LDi;->a:Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11
    iget-object p1, v0, LDi;->a:Landroid/content/Intent;

    invoke-static {p0, p1}, LtZ;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "org.chromium.chrome.browser.customtabs.EXTRA_UI_TYPE"

    const/4 v1, 0x3

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    :cond_2
    invoke-static {p1}, LqZ;->a(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
