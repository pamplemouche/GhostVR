.class public Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;


# instance fields
.field public a:Lorg/chromium/base/Callback;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->M2kzbCDY(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    return-void
.end method

.method public static createDataUseItemAndAddToList(Ljava/util/List;Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    new-instance v6, Liz0;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Liz0;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c:Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 12
    invoke-static {v0, v1, p0}, LJ/N;->MF6dNZ7w(JLjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "BANDWIDTH_REDUCTION_FIRST_ENABLED_TIME"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    :cond_0
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "BANDWIDTH_REDUCTION_PROXY_ENABLED"

    .line 8
    invoke-static {v0, v1, p1}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 9
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 10
    invoke-static {v0, v1, p0, p1}, LJ/N;->MkmavAwt(JLjava/lang/Object;Z)V

    return-void
.end method

.method public b()J
    .locals 4

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "BANDWIDTH_REDUCTION_FIRST_ENABLED_TIME"

    const-wide/16 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M9eQkbEA(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MO7d50bX(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onQueryDataUsageComplete(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->a:Lorg/chromium/base/Callback;

    return-void
.end method
