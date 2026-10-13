.class public abstract LBP0;
.super Landroid/app/Activity;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LBP0;

    return-void
.end method

.method public static a(Landroid/content/Intent;)LhP0;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-class v1, LcP0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-class v1, LbP0;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, LBP0;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "android.intent.extra.STREAM"

    const-string v1, "org.chromium.chrome.browser.webapk_package_name"

    .line 5
    invoke-static {p0, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "org.chromium.chrome.browser.webapk_force_navigation"

    const/4 v4, 0x1

    .line 7
    invoke-static {p0, v1, v4}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "org.chromium.webapk.selected_share_target_activity_class_name"

    .line 8
    invoke-static {p0, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 10
    new-instance v1, LfP0;

    invoke-direct {v1}, LfP0;-><init>()V

    const-string v5, "android.intent.extra.SUBJECT"

    .line 11
    invoke-static {p0, v5}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "android.intent.extra.TEXT"

    .line 12
    invoke-static {p0, v5}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParcelableArrayListExtra failed on intent "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "IntentUtils"

    invoke-static {v8, v5, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    iput-object v2, v1, LfP0;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 16
    invoke-static {p0, v0}, LCO0;->b(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, LfP0;->a:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v8, v1

    goto :goto_1

    :cond_3
    move-object v8, v2

    :goto_1
    const-string v0, "org.chromium.chrome.browser.webapp_url"

    .line 19
    invoke-static {p0, v0}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.chromium.chrome.browser.webapp_source"

    .line 20
    invoke-static {p0, v1, v4}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 21
    invoke-static {p0}, LqZ;->b(Landroid/content/Intent;)I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_5

    const/16 v1, 0xe

    const/16 v5, 0xe

    goto :goto_2

    :cond_5
    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    if-eqz v8, :cond_6

    .line 22
    iget-object v2, v8, LfP0;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/16 v1, 0xf

    const/16 v5, 0xf

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    const-string v1, "org.chromium.chrome.browser.webapk.splash_provided_by_webapk"

    .line 24
    invoke-static {p0, v1, v4}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v7

    move-object v4, v0

    .line 25
    invoke-static/range {v3 .. v9}, LjP0;->a(Ljava/lang/String;Ljava/lang/String;IZZLfP0;Ljava/lang/String;)LjP0;

    move-result-object v2

    .line 26
    :goto_3
    invoke-static {v2}, LhP0;->a(LY10;)LhP0;

    move-result-object p0

    return-object p0
.end method
