.class public Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;
.super LDq;
.source "PG"


# static fields
.field public static final C:LZB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RegistrationTaskService"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->C:LZB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LDq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LIq;)I
    .locals 6

    .line 1
    iget-object v0, p1, LIq;->a:Ljava/lang/String;

    const-string v1, "gcm_registration_task_service"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->C:LZB;

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    iget-object p1, p1, LIq;->a:Ljava/lang/String;

    aput-object p1, v3, v2

    .line 5
    check-cast v0, LgC;

    const-string p1, "Unknown task received with tag: %s"

    invoke-virtual {v0, p1, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string p1, "548642380543"

    .line 6
    :try_start_0
    invoke-static {p0}, LVq;->a(Landroid/content/Context;)LVq;

    move-result-object v0

    const-string v4, "GCM"

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v0, p1, v4, v5}, LVq;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 9
    :goto_0
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->C:LZB;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    check-cast v0, LgC;

    const-string p1, "Security exception when fetching token: %s"

    invoke-virtual {v0, p1, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 10
    :goto_1
    sget-object v4, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->C:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object v0, v1, v3

    check-cast v4, LgC;

    const-string p1, "Failed to get token for sender: %s. Exception : %s"

    invoke-virtual {v4, p1, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public final b(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, LrD;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, -0x1

    .line 6
    :goto_0
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "gcm_app_version"

    .line 7
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    sget-object p1, LrD;->a:LZB;

    new-array v0, v1, [Ljava/lang/Object;

    check-cast p1, LgC;

    const-string v2, "Failed writing shared preferences for: setAppVersion"

    invoke-virtual {p1, v2, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.ipc.invalidation.channel.sender.gcm_regid_change"

    const-string v2, ""

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {}, LrD;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 13
    new-instance v0, LhD;

    invoke-direct {v0, p0}, LhD;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v0, v0, LhD;->a:LgD;

    .line 15
    iget-object v0, v0, LgD;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 16
    sget-object p1, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->C:LZB;

    new-array v0, v1, [Ljava/lang/Object;

    check-cast p1, LgC;

    const-string v1, "GcmUpstreamSenderService class not found."

    invoke-virtual {p1, v1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 17
    :cond_2
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 18
    :cond_3
    const-class v0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_1
    const/4 v0, 0x1

    .line 19
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 20
    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->C:LZB;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    check-cast v2, LgC;

    const-string p1, "Unable to send buffered message(s): %s"

    invoke-virtual {v2, p1, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 22
    sget-object v3, LjD;->a:LDE;

    .line 23
    new-instance v8, LKD;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LKD;-><init>(LDE;LJD;LID;Ljava/lang/Boolean;LHD;)V

    .line 24
    invoke-virtual {v8}, LKD;->d()[B

    move-result-object v2

    const-string v3, "ipcinv-internal-downcall"

    .line 25
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 26
    new-instance v2, LhD;

    invoke-direct {v2, p0}, LhD;-><init>(Landroid/content/Context;)V

    .line 27
    iget-object v2, v2, LhD;->a:LgD;

    .line 28
    iget-object v2, v2, LgD;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 31
    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;->C:LZB;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    check-cast v2, LgC;

    const-string p1, "Unable to inform server about new registration id: %s"

    invoke-virtual {v2, p1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
