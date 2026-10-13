.class public abstract Ldj;
.super Loj;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "accountName must be provided"

    .line 2
    invoke-static {p2, v0}, Lxp;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lxp;->c(Ljava/lang/String;)V

    const v0, 0x802c80

    invoke-static {p0, v0}, Loj;->a(Landroid/content/Context;I)V

    new-instance v0, Lrj;

    invoke-direct {v0, p2, p1}, Lrj;-><init>(Ljava/lang/String;I)V

    sget-object p1, Loj;->d:Landroid/content/ComponentName;

    invoke-static {p0, p1, v0}, Loj;->a(Landroid/content/Context;Landroid/content/ComponentName;Lsj;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 1
    invoke-static {v0}, Lxp;->c(Ljava/lang/String;)V

    const v0, 0x802c80

    invoke-static {p0, v0}, Loj;->a(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "clientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Loj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Loj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lqj;

    invoke-direct {v1, p1, v0}, Lqj;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Loj;->d:Landroid/content/ComponentName;

    invoke-static {p0, p1, v1}, Loj;->a(Landroid/content/Context;Landroid/content/ComponentName;Lsj;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "handle_notification"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "User intervention required. Notification has been pushed."

    const-string v1, "Error when getting token"

    const-string v2, "GoogleAuthUtil"

    .line 5
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Loj;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p1

    invoke-static {p0}, Lkm;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lej; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfj; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object p0, p1, Lcom/google/android/gms/auth/TokenData;->x:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p0}, Lkm;->a(Landroid/content/Context;)V

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lgj;

    invoke-direct {p0, v0}, Lgj;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p1

    .line 8
    iget p2, p1, Lej;->w:I

    .line 9
    invoke-static {p2, p0}, Ljm;->a(ILandroid/content/Context;)V

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lgj;

    invoke-direct {p0, v0}, Lgj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "accountName must be provided"

    .line 1
    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lxp;->c(Ljava/lang/String;)V

    const v0, 0x802c80

    invoke-static {p0, v0}, Loj;->a(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Loj;->a(Landroid/accounts/Account;)V

    const-string p1, "^^_account_id_^^"

    invoke-static {p0, v1, p1, v0}, Loj;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->x:Ljava/lang/String;

    return-object p0
.end method
