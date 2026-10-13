.class public final synthetic Ly20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lz20;

.field public final x:Lh20;

.field public final y:Landroid/content/ComponentName;

.field public final z:Z


# direct methods
.method public constructor <init>(Lz20;Lh20;Landroid/content/ComponentName;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly20;->w:Lz20;

    iput-object p2, p0, Ly20;->x:Lh20;

    iput-object p3, p0, Ly20;->y:Landroid/content/ComponentName;

    iput-boolean p4, p0, Ly20;->z:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Ly20;->w:Lz20;

    iget-object v1, p0, Ly20;->x:Lh20;

    iget-object v2, p0, Ly20;->y:Landroid/content/ComponentName;

    iget-boolean v3, p0, Ly20;->z:Z

    .line 1
    iget-object v0, v0, Lz20;->a:LA20;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    const-string v5, "TwaPermissionManager"

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2
    :try_start_0
    sget-object v8, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 4
    invoke-virtual {v8, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 5
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "Invalid details for client package: %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v6

    .line 7
    invoke-static {v5, v9, v10}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    const-string v9, "Couldn\'t find name for client package: %s"

    .line 8
    invoke-static {v5, v9, v8}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v8, v4

    :cond_0
    if-nez v8, :cond_1

    goto/16 :goto_5

    .line 9
    :cond_1
    iget-object v5, v0, LA20;->a:LB20;

    .line 10
    invoke-virtual {v5}, LB20;->a()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v7

    if-nez v9, :cond_5

    .line 11
    iget-object v9, v5, LB20;->a:Landroid/content/SharedPreferences;

    .line 12
    invoke-virtual {v5, v1}, LB20;->b(Lh20;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eq v3, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 13
    :goto_1
    iget-object v10, v5, LB20;->a:Landroid/content/SharedPreferences;

    .line 14
    invoke-virtual {v5, v1}, LB20;->c(Lh20;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v7

    .line 16
    iget-object v11, v5, LB20;->a:Landroid/content/SharedPreferences;

    .line 17
    invoke-virtual {v5, v1}, LB20;->a(Lh20;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 18
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v7, v11

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 19
    :cond_5
    :goto_3
    invoke-virtual {v5}, LB20;->a()Ljava/util/Set;

    move-result-object v7

    .line 20
    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v10, v5, LB20;->a:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "origins"

    .line 22
    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 23
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    iget-object v7, v5, LB20;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 25
    invoke-virtual {v5, v1}, LB20;->b(Lh20;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 26
    invoke-virtual {v5, v1}, LB20;->c(Lh20;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 27
    invoke-virtual {v5, v1}, LB20;->a(Lh20;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 28
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    iget-object v0, v0, LA20;->b:LXR;

    .line 30
    invoke-static {}, Lx20;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 31
    :cond_6
    check-cast v0, LYR;

    invoke-virtual {v0}, LYR;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx20;

    if-eqz v0, :cond_d

    .line 32
    invoke-static {}, Lx20;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 33
    :cond_7
    iget-object v2, v0, Lx20;->b:LAm0;

    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LAm0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sites"

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 35
    :cond_8
    iget-object v3, v0, Lx20;->b:LAm0;

    invoke-virtual {v3, v2}, LAm0;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    goto :goto_4

    .line 36
    :cond_9
    iget-object v4, v0, Lx20;->a:LB20;

    if-nez v3, :cond_a

    const/4 v6, 0x1

    .line 37
    :cond_a
    iget-object v3, v4, LB20;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pre_twa_notification_permission."

    .line 38
    invoke-static {v4}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-interface {v3, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    iget-object v0, v0, Lx20;->b:LAm0;

    .line 42
    iget-object v0, v0, LAm0;->a:Lam0;

    check-cast v0, Lbm0;

    .line 43
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :goto_4
    if-eqz v9, :cond_c

    .line 44
    sget-wide v0, Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    goto :goto_5

    .line 45
    :cond_b
    invoke-static {v0, v1}, LJ/N;->MPWzS9sk(J)V

    :cond_c
    :goto_5
    return-void

    .line 46
    :cond_d
    throw v4

    .line 47
    :cond_e
    throw v4
.end method
