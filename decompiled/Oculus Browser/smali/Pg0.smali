.class public final synthetic LPg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LUg0;


# direct methods
.method public constructor <init>(LUg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPg0;->w:LUg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LPg0;->w:LUg0;

    .line 1
    iget-boolean v1, v0, LUg0;->f:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LUg0;->f:Z

    .line 3
    new-instance v1, LiZ;

    invoke-direct {v1}, LiZ;-><init>()V

    invoke-static {v1}, Lorg/chromium/base/ContentUriUtils;->a(LxT;)V

    .line 4
    invoke-static {}, LTU;->a()V

    .line 5
    iget-object v1, v0, LUg0;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, LUg0;->c:Ljava/util/List;

    .line 8
    :cond_2
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "ServiceManagerFeatures"

    .line 9
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 11
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    const-string v0, "service_manager_for_download_resumption"

    const-string v1, "ServiceManagerForDownload"

    .line 13
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_manager_for_background_prefetch"

    const-string v1, "ServiceManagerForBackgroundPrefetch"

    .line 14
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
