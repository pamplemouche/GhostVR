.class public Luz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:Lvz0;


# direct methods
.method public constructor <init>(Lvz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luz0;->w:Lvz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 2
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-wide v1, 0x7fffffffffffffffL

    const-string v3, "data_reduction_site_breakdown_allowed_date"

    .line 3
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 4
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 9
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 10
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "displayed_data_reduction_snackbar_promo_saved_bytes"

    const-wide/16 v4, 0x0

    .line 11
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "BANDWIDTH_REDUCTION_FIRST_ENABLED_TIME"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    iget-wide v2, v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 18
    invoke-static {v2, v3, v0, v1}, LJ/N;->MqCEYHgN(JLjava/lang/Object;I)V

    .line 19
    iget-object v0, p0, Luz0;->w:Lvz0;

    iget-object v0, v0, Lvz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->a(J)V

    .line 20
    iget-object p1, p0, Luz0;->w:Lvz0;

    iget-object p1, p1, Lvz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    .line 21
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->w()V

    .line 22
    iget-object p1, p0, Luz0;->w:Lvz0;

    iget-object p1, p1, Lvz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    .line 23
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->o()V

    const/16 p1, 0x14

    .line 24
    invoke-static {p1}, LO60;->a(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 25
    throw p1

    :cond_2
    :goto_0
    return-void
.end method
