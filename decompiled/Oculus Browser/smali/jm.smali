.class public abstract Ljm;
.super Lkm;
.source "PG"


# direct methods
.method public static a(ILandroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Ldm;->d:Ldm;

    .line 2
    invoke-static {p1, p0}, Lkm;->c(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x9

    if-ne p0, v1, :cond_0

    const-string v1, "com.android.vending"

    .line 3
    invoke-static {p1, v1}, Lkm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0, p1, p0}, Ldm;->b(Landroid/content/Context;I)V

    return-void

    .line 5
    :cond_2
    :goto_1
    new-instance p0, Lcm;

    invoke-direct {p0, v0, p1}, Lcm;-><init>(Ldm;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
