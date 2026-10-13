.class public abstract LrD0;
.super Landroid/appwidget/AppWidgetProvider;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static c:Ljava/lang/String;

.field public static d:LqD0;

.field public static e:LpD0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LrD0;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LrD0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LrD0;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()LpD0;
    .locals 3

    .line 29
    sget-object v0, LrD0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, LrD0;->e:LpD0;

    if-nez v1, :cond_0

    new-instance v1, LpD0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LpD0;-><init>(Landroid/content/Context;)V

    sput-object v1, LrD0;->e:LpD0;

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, LrD0;->e:LpD0;

    return-object v0

    :catchall_0
    move-exception v1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a([I)V
    .locals 15

    .line 1
    invoke-static {}, LrD0;->a()LpD0;

    move-result-object v0

    if-nez p0, :cond_0

    .line 2
    invoke-virtual {v0}, LpD0;->a()[I

    move-result-object p0

    .line 3
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-string v3, "org.chromium.chrome.browser.searchwidget.IS_VOICE_SEARCH_AVAILABLE"

    const/4 v4, 0x1

    .line 5
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "org.chromium.chrome.browser.searchwidget.SEARCH_ENGINE_SHORTNAME"

    .line 6
    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_5

    aget v7, p0, v6

    .line 8
    iget-object v8, v0, LpD0;->a:Landroid/content/Context;

    .line 9
    new-instance v9, Landroid/widget/RemoteViews;

    .line 10
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0e0191

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 11
    new-instance v10, Landroid/content/Intent;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "org.chromium.chrome.browser.searchwidget.START_TEXT_QUERY"

    invoke-direct {v10, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    const-class v11, LrD0;

    invoke-virtual {v10, v8, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    invoke-static {v10}, LqZ;->a(Landroid/content/Intent;)V

    const v11, 0x7f0b047f

    const/high16 v12, 0x8000000

    .line 14
    invoke-static {v8, v5, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 15
    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v10, 0x7f0b027a

    if-eqz v3, :cond_2

    .line 16
    new-instance v11, Landroid/content/Intent;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "org.chromium.chrome.browser.searchwidget.START_VOICE_QUERY"

    invoke-direct {v11, v14, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    const-class v13, LrD0;

    invoke-virtual {v11, v8, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    invoke-static {v11}, LqZ;->a(Landroid/content/Intent;)V

    .line 19
    invoke-static {v8, v5, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 20
    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 21
    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_2
    const/16 v11, 0x8

    .line 22
    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 23
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, LrD0;->c()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    const v10, 0x7f13055c

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v1, v11, v5

    .line 24
    invoke-virtual {v8, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    :goto_2
    const v10, 0x7f13055a

    .line 25
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const v10, 0x7f0b0494

    const-string v11, "setHint"

    .line 26
    invoke-virtual {v9, v10, v11, v8}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 27
    iget-object v8, v0, LpD0;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v8, v7, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 28
    :cond_6
    throw v1
.end method

.method public static b()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LrD0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LrD0;->d:LqD0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    new-instance v1, LqD0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LqD0;-><init>(LoD0;)V

    sput-object v1, LrD0;->d:LqD0;

    .line 5
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v1

    .line 6
    sget-object v3, LrD0;->d:LqD0;

    invoke-virtual {v1, v3}, Lorg/chromium/components/search_engines/TemplateUrlService;->a(LkU0;)V

    .line 7
    sget-object v3, LrD0;->d:LqD0;

    .line 8
    iget-object v4, v1, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v4, v3}, LWT;->a(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/chromium/components/search_engines/TemplateUrlService;->e()V

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, LrD0;->a()LpD0;

    move-result-object v0

    invoke-virtual {v0}, LpD0;->a()[I

    move-result-object v0

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v1

    if-eqz v0, :cond_2

    array-length v0, v0

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 13
    :cond_3
    throw v2

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static c()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1, v0}, LEc0;->a(Landroid/content/Intent;Z)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
