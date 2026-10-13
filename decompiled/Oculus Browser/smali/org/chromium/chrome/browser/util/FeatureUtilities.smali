.class public Lorg/chromium/chrome/browser/util/FeatureUtilities;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/util/Map;

.field public static b:Ljava/lang/Boolean;

.field public static c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lay0;->a:Lcy0;

    .line 7
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    .line 8
    iget-object v0, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 9
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 10
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lay0;->a:Lcy0;

    .line 12
    invoke-virtual {v0, p0, p1}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 13
    sget-object p1, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static a(Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 3
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->b:Ljava/lang/Boolean;

    .line 5
    :cond_1
    sget-object p0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, LJ/N;->M1VOJ8q5(Z)V

    return-void
.end method

.method public static b()Z
    .locals 3

    const-string v0, "bottom_toolbar_enabled"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Chrome.Flags.DuetTabstripIntegrationEnabled"

    .line 6
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->j()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, LJ/N;->MpbvUTVJ(Z)V

    return-void
.end method

.method public static c()Z
    .locals 1

    const-string v0, "DownloadProgressInfoBar"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "grid_tab_switcher_enabled"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "night_mode_default_to_light"

    .line 2
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "service_manager_for_background_prefetch"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "interest_feed_content_suggestions"

    .line 2
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getReachedCodeProfilerTrialGroup()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lay0;->a:Lcy0;

    const-string v1, "reached_code_profiler_group"

    const-string v2, ""

    .line 3
    invoke-virtual {v0, v1, v2}, Lcy0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 2

    const-string v0, "service_manager_for_download_resumption"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    const-string v0, "start_surface_enabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDownloadAutoResumptionEnabledInNative()Z
    .locals 2

    const-string v0, "download_auto_resumption_in_native"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 2

    const-string v0, "tab_group_android_enabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 3

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "disable-tab-merging"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
