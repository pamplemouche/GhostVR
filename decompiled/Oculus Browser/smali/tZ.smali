.class public abstract LtZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LpZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LcV;

    const-string v1, "Launch.IntentFlags"

    invoke-direct {v0, v1}, LcV;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    .line 1
    invoke-static {p1}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "android.intent.action.VIEW"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    const-class v2, Lp60;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    .line 6
    invoke-static {p1, v3, v2}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-static {}, LKY;->c()LR60;

    move-result-object v3

    check-cast v3, LY60;

    invoke-virtual {v3}, LY60;->g()Lp20;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 8
    instance-of v5, p0, Landroid/app/Activity;

    if-nez v5, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    .line 10
    iget-object v3, v3, Lp20;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo20;

    if-nez v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    throw v4

    .line 12
    :cond_2
    throw v4

    :cond_3
    :goto_0
    const-string v3, "org.chromium.chrome.browser.customtabs.EXTRA_UI_TYPE"

    .line 13
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 14
    const-class v2, LL60;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 17
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 18
    :cond_5
    invoke-static {}, LwT;->c()LwT;

    move-result-object p0

    const-string v0, "open-custom-tabs-in-new-task"

    invoke-virtual {p0, v0}, LwT;->c(Ljava/lang/String;)Z

    move-result p0

    const/high16 v0, 0x10000000

    if-eqz p0, :cond_6

    .line 19
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    or-int/2addr p0, v0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    :cond_6
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    const/high16 v0, 0x80000

    if-nez p0, :cond_7

    .line 21
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 22
    :cond_7
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const v2, -0x800001

    and-int/2addr p0, v2

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x8000000

    .line 23
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    :cond_8
    invoke-static {p1}, LqZ;->n(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "org.chromium.chrome.browser.customtabs.IS_OPENED_BY_CHROME"

    .line 26
    invoke-static {v1, p0}, LCO0;->f(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "org.chromium.chrome.browser.customtabs.EXTRA_IS_OPENED_BY_WEBAPK"

    .line 27
    invoke-static {v1, p0}, LCO0;->f(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_9
    return-object v1
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.support.customtabs.extra.user_opt_out"

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    invoke-static {p0}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method
