.class public LeB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LTT0;


# static fields
.field public static c:LeB0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LeB0;->a:Landroid/content/Context;

    .line 3
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 4
    iput-object p1, p0, LeB0;->b:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "physical_web"

    .line 6
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "physical_web_sharing"

    .line 7
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.HasDeferredMetrics"

    .line 8
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.OptIn.DeclineButtonPressed"

    .line 9
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.OptIn.EnableButtonPressed"

    .line 10
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.Prefs.FeatureDisabled"

    .line 11
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.Prefs.FeatureEnabled"

    .line 12
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.Prefs.LocationDenied"

    .line 13
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.Prefs.LocationGranted"

    .line 14
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.ResolveTime.Background"

    .line 15
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.ResolveTime.Foreground"

    .line 16
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.ResolveTime.Refresh"

    .line 17
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.UrlSelected"

    .line 18
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.TotalUrls.OnInitialDisplay"

    .line 19
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.TotalUrls.OnRefresh"

    .line 20
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.ActivityReferral"

    .line 21
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PhysicalWeb.State"

    .line 22
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static d()LeB0;
    .locals 2

    .line 1
    sget-object v0, LeB0;->c:LeB0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LeB0;

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, LeB0;-><init>(Landroid/content/Context;)V

    sput-object v0, LeB0;->c:LeB0;

    .line 5
    :cond_0
    sget-object v0, LeB0;->c:LeB0;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, LeB0;->b:Landroid/content/SharedPreferences;

    const-string v1, "metrics_reporting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 11

    const-string v0, "network_predictions"

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget-object v4, p0, LeB0;->b:Landroid/content/SharedPreferences;

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, LJ/N;->MnUCV91e(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    :cond_0
    throw v5

    :cond_1
    const-string v6, "prefetch_bandwidth_no_cellular"

    const-string v7, "prefetch_bandwidth"

    if-nez v4, :cond_2

    .line 4
    iget-object v4, p0, LeB0;->b:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, LeB0;->b:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 7
    :cond_2
    sget-object v4, LGA0;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 8
    iget-object v8, p0, LeB0;->b:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {v8, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    iget-object v9, p0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v9, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 11
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v9, v2, :cond_9

    .line 12
    :cond_3
    iget-object v4, p0, LeB0;->a:Landroid/content/Context;

    const-string v10, "connectivity"

    .line 13
    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 14
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    .line 15
    iget-object v4, p0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_2
    const/4 v9, 0x3

    if-ge v4, v9, :cond_6

    .line 16
    sget-object v9, LGA0;->a:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    .line 17
    :cond_7
    iget-object v3, p0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v9

    :cond_8
    :goto_4
    if-eqz v1, :cond_e

    .line 18
    invoke-static {v1, v2}, LJ/N;->M1nOFIU9(Ljava/lang/Object;Z)V

    .line 19
    :cond_9
    iget-object v1, p0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 20
    iget-object v2, p0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 21
    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    :cond_a
    iget-object v2, p0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 23
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    :cond_b
    iget-object v2, p0, LeB0;->b:Landroid/content/SharedPreferences;

    const-string v3, "allow_prefetch"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 25
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    :cond_c
    iget-object v2, p0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 27
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    :cond_d
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 29
    :cond_e
    throw v5
.end method

.method public c()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->e:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, LeB0;->a()Z

    move-result v1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, v1}, LJ/N;->Mkrt4XPG(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method
