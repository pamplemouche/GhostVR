.class public LwP0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:LvP0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LvP0;

    invoke-direct {v0}, LvP0;-><init>()V

    sput-object v0, LwP0;->c:LvP0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LwP0;->a:Ljava/lang/String;

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webapp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, LwP0;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 58
    invoke-virtual {p0}, LwP0;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v1, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v2, "pending_update_file_path"

    invoke-static {v1, v2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 60
    sget-object v1, LFW;->j:LFW;

    new-instance v2, LuP0;

    invoke-direct {v2, v0}, LuP0;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 61
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(LzP0;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, LwP0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-object v1, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v2, "url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, LzP0;->g()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v6, "scope"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, LzP0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    .line 8
    :cond_2
    iget-object v2, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v3, "version"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_a

    .line 9
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p1}, LzP0;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    check-cast p1, LhP0;

    .line 12
    invoke-virtual {p1}, LhP0;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webapk_package_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-virtual {p1}, LhP0;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webapk_manifest_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-virtual {p1}, LhP0;->k()I

    move-result v1

    const-string v2, "webapk_version_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-virtual {p1}, LhP0;->j()Ljava/lang/String;

    move-result-object p1

    .line 16
    :try_start_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 19
    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v1, 0x0

    :goto_1
    const-string p1, "webapk_install_timestamp"

    .line 20
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 21
    :cond_3
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object v1

    iget-object v1, v1, LxP0;->e:Ljava/lang/String;

    const-string v2, "name"

    .line 22
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-virtual {p1}, LzP0;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "short_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object v1

    iget-object v1, v1, LxP0;->d:LyP0;

    .line 25
    iget-object v2, v1, LyP0;->a:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 26
    iget-object v3, v1, LyP0;->b:Landroid/graphics/Bitmap;

    if-nez v3, :cond_6

    if-eqz v2, :cond_4

    .line 27
    invoke-static {v2}, Lorg/chromium/chrome/browser/ShortcutHelper;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 28
    :cond_4
    iget-object v2, v1, LyP0;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v2, v1, LyP0;->d:I

    if-eqz v2, :cond_5

    .line 29
    :try_start_1
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 31
    iget-object v4, v1, LyP0;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 32
    iget v4, v1, LyP0;->d:I

    .line 33
    invoke-static {v2, v4}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_5

    .line 34
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_5
    move-object v2, v3

    .line 35
    :goto_2
    iput-object v2, v1, LyP0;->b:Landroid/graphics/Bitmap;

    .line 36
    :cond_6
    iget-object v2, v1, LyP0;->b:Landroid/graphics/Bitmap;

    .line 37
    invoke-static {v2}, Lorg/chromium/chrome/browser/ShortcutHelper;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LyP0;->a:Ljava/lang/String;

    .line 38
    :cond_7
    iget-object v1, v1, LyP0;->a:Ljava/lang/String;

    const-string v2, "icon"

    .line 39
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-virtual {p1}, LzP0;->a()I

    move-result v1

    const-string v2, "display_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object v1

    iget v1, v1, LxP0;->h:I

    const-string v2, "orientation"

    .line 42
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object v1

    iget-object v1, v1, LxP0;->j:Ljava/lang/Integer;

    const-wide v2, 0x80000000L

    if-eqz v1, :cond_8

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    goto :goto_3

    :cond_8
    move-wide v6, v2

    :goto_3
    const-string v1, "theme_color"

    .line 45
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object v1

    iget-object v1, v1, LxP0;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    :cond_9
    const-string v1, "background_color"

    .line 48
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object v1

    iget-boolean v1, v1, LxP0;->l:Z

    const-string v2, "is_icon_generated"

    .line 50
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object v1

    iget-boolean v1, v1, LxP0;->m:Z

    const-string v2, "is_icon_adaptive"

    .line 52
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-virtual {p1}, LzP0;->b()LxP0;

    move-result-object p1

    iget p1, p1, LxP0;->i:I

    const-string v1, "source"

    .line 54
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_4
    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 56
    invoke-virtual {p0}, LwP0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v1, "should_force_update"

    invoke-static {v0, v1, p1}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_used"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v1, "pending_update_file_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v1, "webapk_package_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LwP0;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "org.chromium.webapk"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
