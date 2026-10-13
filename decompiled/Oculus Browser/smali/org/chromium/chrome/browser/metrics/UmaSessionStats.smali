.class public Lorg/chromium/chrome/browser/metrics/UmaSessionStats;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static f:J


# instance fields
.field public a:LpI0;

.field public b:LDI0;

.field public final c:Landroid/content/Context;

.field public d:Landroid/content/ComponentCallbacks;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    .line 1
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object v0

    .line 2
    iget-object v1, v0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "metrics_reporting"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    invoke-virtual {v0}, LeB0;->c()V

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, LkG0;->a()LkG0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-static {p0}, LJ/N;->Mh1r7OJ$(Z)V

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->b()V

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    .line 9
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 4

    .line 1
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LeB0;->c()V

    .line 3
    iget-object v1, v0, LeB0;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, LeB0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "force-dump-upload"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 9
    :cond_2
    invoke-static {v2}, LJ/N;->Mq3Hvtdc(Z)V

    return-void
.end method

.method public static hasVisibleActivity()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    return v0
.end method
