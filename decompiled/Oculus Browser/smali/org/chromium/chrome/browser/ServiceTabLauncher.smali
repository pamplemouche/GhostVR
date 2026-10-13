.class public Lorg/chromium/chrome/browser/ServiceTabLauncher;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(IZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/util/List;)V
    .locals 24

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v2, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 2
    iget-object v2, v2, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "scope"

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LwP0;

    .line 4
    iget-object v9, v7, LwP0;->a:Ljava/lang/String;

    const-string v10, "webapk-"

    .line 5
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v9, v7, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v10, ""

    invoke-interface {v9, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v6, :cond_0

    .line 8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    move-object v5, v7

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, LiJ0;

    invoke-direct {v2, v0}, LiJ0;-><init>(Z)V

    .line 10
    sget-object v6, LzT;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "TrustedWebActivity"

    .line 11
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    move-object v9, v4

    goto/16 :goto_4

    .line 12
    :cond_3
    new-instance v0, Lh20;

    invoke-direct {v0, v1}, Lh20;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v7, v0, Lh20;->a:Landroid/net/Uri;

    .line 14
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v9, "https"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v0}, Lh20;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, LSi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 18
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v10, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 20
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 21
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v0, v4

    move-object v7, v0

    :goto_3
    if-nez v7, :cond_9

    goto :goto_1

    .line 22
    :cond_9
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 23
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    .line 24
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x14000000

    .line 25
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_4
    if-eqz v9, :cond_a

    .line 27
    invoke-virtual {v6, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_a
    if-eqz v5, :cond_e

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 29
    invoke-virtual {v5}, LwP0;->b()J

    move-result-wide v9

    sub-long/2addr v6, v9

    const-wide/32 v9, 0x337f9800

    const/4 v0, 0x1

    cmp-long v11, v6, v9

    if-gez v11, :cond_b

    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_c

    goto/16 :goto_7

    .line 30
    :cond_c
    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "version"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_d

    move-object v2, v4

    goto :goto_6

    .line 31
    :cond_d
    iget-object v9, v5, LwP0;->a:Ljava/lang/String;

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "url"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    .line 32
    invoke-interface {v2, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "name"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "short_name"

    .line 33
    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "icon"

    .line 34
    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "display_mode"

    const/4 v7, 0x3

    .line 35
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "orientation"

    .line 36
    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-wide v6, 0x80000000L

    const-string v8, "theme_color"

    .line 37
    invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v8, "background_color"

    .line 38
    invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "is_icon_generated"

    .line 39
    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    iget-object v2, v5, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v5, "is_icon_adaptive"

    .line 40
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 41
    invoke-static/range {v9 .. v23}, Lorg/chromium/chrome/browser/ShortcutHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJZZ)Landroid/content/Intent;

    move-result-object v2

    :goto_6
    const-string v3, "org.chromium.chrome.browser.webapp_url"

    .line 42
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.chromium.chrome.browser.webapp_source"

    const/4 v3, 0x5

    .line 43
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "org.chromium.chrome.browser.webapk_force_navigation"

    .line 44
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10080000

    .line 45
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    invoke-static {v2, v4}, LqZ;->b(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :cond_e
    :goto_7
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, v1, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, p6

    .line 48
    iput-object v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->i:Lorg/chromium/content_public/common/ResourceRequestBody;

    move-object/from16 v1, p5

    .line 49
    iput-object v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    .line 50
    new-instance v1, Lh11;

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v1, v3, v4}, Lh11;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 52
    new-instance v1, LhJ0;

    .line 53
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v0, v3}, LhJ0;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Ljava/lang/Integer;)V

    const/4 v0, 0x2

    const/4 v3, -0x1

    .line 54
    invoke-virtual {v2, v1, v0, v3}, LiJ0;->a(LhJ0;II)V

    :goto_8
    return-void
.end method

.method public static a(ILjava/lang/String;Z)Z
    .locals 7

    .line 55
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 56
    instance-of v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 57
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 58
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v4, 0x7f010021

    .line 59
    invoke-static {v0, v4, v2}, Lo2;->a(Landroid/content/Context;II)Lo2;

    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lo2;->a()Landroid/os/Bundle;

    move-result-object v4

    const v5, 0x7f010022

    .line 61
    invoke-static {v0, v2, v5}, Lo2;->a(Landroid/content/Context;II)Lo2;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lo2;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    .line 63
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.SESSION"

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    .line 66
    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 67
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "org.chromium.chrome.browser.ServiceTabLauncher.LAUNCH_REQUEST_ID"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    .line 74
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.android.browser.application_id"

    .line 77
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {v1}, Lu60;->a(Landroid/content/Intent;)V

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    invoke-static {v0, v1, v4}, LR3;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return v3
.end method

.method public static launchTab(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;)V
    .locals 13

    move v0, p0

    move-object v3, p2

    const/4 v1, 0x5

    move/from16 v2, p3

    if-ne v2, v1, :cond_2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, LVv0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lyv0;->a(Ljava/net/URI;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v5, p1

    .line 3
    invoke-static {p0, p2, p1}, Lorg/chromium/chrome/browser/ServiceTabLauncher;->a(ILjava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v1, :cond_1

    .line 4
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LMZ;

    invoke-direct {v2, p0}, LMZ;-><init>(I)V

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :cond_1
    return-void

    :cond_2
    move v5, p1

    .line 6
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "BrowserServices.ServiceTabResolveInfoQuery"

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 8
    :try_start_1
    invoke-static {v1, p2}, LHf1;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    new-instance v4, LbV;

    invoke-direct {v4, v2}, LbV;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 11
    invoke-virtual {v4, v8, v9}, LdV;->a(J)V

    .line 12
    invoke-static {v1, v10}, LHf1;->a(Landroid/content/Context;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move-object v11, v1

    if-eqz v11, :cond_4

    .line 14
    new-instance v12, LNZ;

    move-object v1, v12

    move-object v2, v11

    move-object v3, p2

    move v4, p0

    move v5, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, LNZ;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/util/List;)V

    .line 15
    invoke-static {v11, v12}, LYO0;->a(Ljava/lang/String;Lvf1;)V

    goto :goto_2

    :cond_4
    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v10

    .line 16
    invoke-static/range {v1 .. v8}, Lorg/chromium/chrome/browser/ServiceTabLauncher;->a(IZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/util/List;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 17
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 18
    :try_start_3
    new-instance v0, LbV;

    invoke-direct {v0, v2}, LbV;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 20
    invoke-virtual {v0, v4, v5}, LdV;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 21
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 22
    :goto_3
    throw v3
.end method
