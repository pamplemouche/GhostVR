.class public final synthetic Lnh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnh0;

    invoke-direct {v0}, Lnh0;-><init>()V

    sput-object v0, Lnh0;->w:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    sget-object v0, Lay0;->a:Lcy0;

    .line 2
    iget-object v1, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "webapk_uninstalled_packages"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->a()V

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "WebApk.Uninstall.Browser"

    const/4 v7, 0x1

    .line 7
    invoke-static {v6, v7}, LfV;->a(Ljava/lang/String;Z)V

    .line 8
    invoke-static {v2}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v6, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 10
    invoke-virtual {v6, v2}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->a(Ljava/lang/String;)LwP0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v6, v2, LwP0;->b:Landroid/content/SharedPreferences;

    const-wide/16 v7, 0x0

    const-string v9, "webapk_uninstall_timestamp"

    invoke-interface {v6, v9, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-nez v6, :cond_2

    move-wide v9, v4

    .line 12
    :cond_2
    iget-object v6, v2, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v11, "webapk_manifest_url"

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 13
    iget-object v6, v2, LwP0;->b:Landroid/content/SharedPreferences;

    const/4 v11, 0x0

    const-string v12, "webapk_version_code"

    invoke-interface {v6, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 14
    iget-object v6, v2, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v12, "launch_count"

    invoke-interface {v6, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 15
    iget-object v2, v2, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "webapk_install_timestamp"

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v17, v9, v6

    .line 16
    invoke-static/range {v13 .. v18}, LJ/N;->MSohKQE6(Ljava/lang/String;IIIJ)V

    goto :goto_0

    .line 17
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 18
    iget-object v0, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method
