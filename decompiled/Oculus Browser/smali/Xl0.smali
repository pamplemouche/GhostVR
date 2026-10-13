.class public abstract LXl0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(ZLjava/lang/String;)LPl0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;
    .locals 3

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "Failed to create context for package "

    invoke-static {p3, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5
    :cond_0
    :goto_0
    new-instance p2, Lbm0;

    invoke-direct {p2, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Lwm0;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lwm0;-><init>(Lam0;Landroid/content/res/Resources;)V

    if-eqz p0, :cond_1

    .line 8
    new-instance p0, LYl0;

    invoke-direct {p0, v0, p1, v1, p3}, LYl0;-><init>(Landroid/content/Context;Ljava/lang/String;Lwm0;Lcm0;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, LUl0;

    invoke-direct {p0, v0, p1, v1, p3}, LUl0;-><init>(Landroid/content/Context;Ljava/lang/String;Lwm0;Lcm0;)V

    :goto_1
    return-object p0
.end method
