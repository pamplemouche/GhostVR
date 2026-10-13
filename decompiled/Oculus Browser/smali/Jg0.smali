.class public final synthetic LJg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LJg0;

    invoke-direct {v0}, LJg0;-><init>()V

    sput-object v0, LJg0;->w:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 3
    iget-boolean v2, v0, LHh0;->b:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result v2

    .line 6
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    const-string v4, "BANDWIDTH_REDUCTION_PROXY_ENABLED"

    .line 7
    invoke-static {v3, v4, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-string v3, "data_reduction_site_breakdown_allowed_date"

    .line 9
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    add-long/2addr v4, v6

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 12
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 13
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v6

    .line 14
    :goto_0
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    :goto_1
    invoke-static {}, LHY;->a()LHY;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 17
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 18
    iget-boolean v3, v2, LHY;->c:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    iput-boolean v4, v2, LHY;->c:Z

    .line 20
    new-instance v3, LGY;

    invoke-direct {v3, v2}, LGY;-><init>(LHY;)V

    .line 21
    sget-object v2, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v2, v3}, LWT;->a(Ljava/lang/Object;)Z

    .line 22
    :goto_2
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    const-string v3, "com.google.android.apps.chrome.ChromeMobileApplication.BOOT_TIMESTAMP"

    .line 23
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    sub-long v5, v7, v5

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    cmp-long v2, v5, v9

    if-lez v2, :cond_4

    .line 26
    invoke-static {}, LJ/N;->M4n4n4_y()V

    .line 27
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 28
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 29
    invoke-interface {v2, v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    :cond_4
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 32
    sput-object v1, Lorg/chromium/chrome/browser/banners/AppBannerManager;->y:LJ10;

    .line 33
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 34
    sget-object v2, LWg0;->B:LWg0;

    if-eqz v2, :cond_5

    goto :goto_3

    .line 35
    :cond_5
    new-instance v2, LWg0;

    invoke-direct {v2}, LWg0;-><init>()V

    sput-object v2, LWg0;->B:LWg0;

    .line 36
    sget-object v3, Lorg/chromium/chrome/browser/ApplicationLifetime;->a:LWT;

    invoke-virtual {v3, v2}, LWT;->a(Ljava/lang/Object;)Z

    .line 37
    :goto_3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 38
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string v5, "PrefMigrationVersion"

    .line 39
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    goto :goto_4

    :cond_6
    if-le v3, v6, :cond_7

    const-string v7, "PrefServiceBridge"

    const-string v8, "Saved preferences version is newer than supported.  Attempting to run an older version of Chrome without clearing data is unsupported and the results may be unpredictable."

    .line 40
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-ge v3, v4, :cond_8

    .line 41
    invoke-static {v2}, LJ/N;->MEA_iR2i(Ljava/lang/Object;)V

    .line 42
    :cond_8
    invoke-static {v1, v5, v6}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    :goto_4
    const-string v1, "NewPhotoPicker"

    .line 43
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 44
    new-instance v1, Lvh0;

    invoke-direct {v1, v0}, Lvh0;-><init>(LHh0;)V

    .line 45
    sput-object v1, Lwc1;->c:Lvc1;

    .line 46
    :cond_9
    new-instance v1, Lwh0;

    invoke-direct {v1, v0}, Lwh0;-><init>(LHh0;)V

    .line 47
    sput-object v1, Lwc1;->d:Luc1;

    .line 48
    invoke-static {}, LrD0;->b()V

    .line 49
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 50
    sget-object v1, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;->b:Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;

    if-nez v1, :cond_a

    .line 51
    new-instance v1, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;-><init>()V

    sput-object v1, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;->b:Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;

    .line 52
    :cond_a
    sget-object v1, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;->b:Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;

    .line 53
    new-instance v2, LV30;

    invoke-direct {v2}, LV30;-><init>()V

    .line 54
    iget-object v1, v1, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;->a:LWT;

    invoke-virtual {v1, v2}, LWT;->a(Ljava/lang/Object;)Z

    .line 55
    iput-boolean v4, v0, LHh0;->b:Z

    :goto_5
    return-void

    .line 56
    :cond_b
    throw v1

    .line 57
    :cond_c
    throw v1

    .line 58
    :cond_d
    throw v1

    .line 59
    :cond_e
    throw v1
.end method
