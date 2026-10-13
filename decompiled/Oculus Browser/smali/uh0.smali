.class public Luh0;
.super LkW;
.source "PG"


# instance fields
.field public a:J

.field public final synthetic b:LHh0;


# direct methods
.method public constructor <init>(LHh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luh0;->b:LHh0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    const-string v0, "ChromeBrowserInitializer.onDeferredStartup.doInBackground"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Luh0;->a:J

    .line 3
    sget-object v2, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 4
    invoke-static {}, LX10;->a()V

    .line 5
    invoke-static {}, LrP0;->a()V

    .line 6
    iget-object v2, p0, Luh0;->b:LHh0;

    .line 7
    invoke-virtual {v2}, LHh0;->d()V

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->a()V

    .line 9
    invoke-static {}, LPk0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    sget-object p1, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p1, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->c:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    const-string v5, "last_cleanup"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide v6, 0x90321000L

    cmp-long v4, v2, v6

    if-gez v4, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v2, p1, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LwP0;

    .line 9
    invoke-virtual {v4}, LwP0;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "webapk-"

    .line 11
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    sget-object v3, Lay0;->a:Lcy0;

    .line 13
    iget-object v3, v3, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    const-string v9, "webapk_uninstalled_packages"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 14
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 15
    :cond_2
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 16
    invoke-static {v3, v6}, LYT;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v7, v3

    :goto_1
    if-nez v7, :cond_4

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v4}, LwP0;->b()J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide v8, 0x1d4a2b400L

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v4}, LwP0;->a()V

    .line 19
    iget-object v3, v4, LwP0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 21
    :cond_5
    iget-object v2, p1, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 22
    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p1, p1, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->b:Ljava/util/HashMap;

    .line 23
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v1, "webapp_set"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Luh0;->a:J

    sub-long/2addr v0, v2

    const-string p1, "UMA.Debug.EnableCrashUpload.DeferredStartUpAsyncTaskDuration"

    .line 26
    invoke-static {p1, v0, v1}, LfV;->a(Ljava/lang/String;J)V

    return-void
.end method
