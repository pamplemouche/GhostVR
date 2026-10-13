.class public Lorg/chromium/chrome/browser/ChromeVersionInfo;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static getGmsInfo()Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    sget v1, Ldm;->e:I

    int-to-long v1, v1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.google.android.gms"

    .line 4
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v4, v0

    goto :goto_0

    :catch_0
    const-wide/16 v4, 0x0

    .line 5
    :goto_0
    sget-object v0, Lja0;->a:Lja0;

    new-instance v6, Lma0;

    invoke-direct {v6}, Lma0;-><init>()V

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, LwT;->c()LwT;

    move-result-object v7

    const-string v8, "disable-first-party-google-play-services-for-testing"

    invoke-virtual {v7, v8}, LwT;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, v6}, Lja0;->a(Lna0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    :cond_1
    :goto_1
    invoke-static {}, Lja0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3p"

    goto :goto_2

    :cond_2
    const-string v0, "none"

    .line 11
    :goto_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v0, v7, v1

    const-string v0, "SDK=%s; Installed=%s; Access=%s"

    .line 13
    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 14
    throw v0
.end method
