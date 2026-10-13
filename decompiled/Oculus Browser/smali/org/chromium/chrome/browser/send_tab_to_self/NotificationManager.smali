.class public Lorg/chromium/chrome/browser/send_tab_to_self/NotificationManager;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static hideNotification(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p0}, LtD0;->a(Ljava/lang/String;)LsD0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-static {p0}, LtD0;->a(Ljava/lang/String;)LsD0;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const-string v4, "send_tab_to_self.notification.active"

    .line 4
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v5

    .line 7
    :goto_1
    invoke-static {p0}, LtD0;->a(LsD0;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_2
    if-nez p0, :cond_4

    return v1

    .line 9
    :cond_4
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 10
    new-instance v1, Lbm0;

    invoke-direct {v1, p0}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 11
    iget p0, v0, LsD0;->a:I

    .line 12
    iget-object v0, v1, Lbm0;->b:Landroid/app/NotificationManager;

    const-string v1, "SendTabToSelf"

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    .line 1
    invoke-static/range {p0 .. p0}, LtD0;->a(Ljava/lang/String;)LsD0;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 2
    :cond_0
    sget-object v3, LvD0;->a:LaV;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, LaV;->a(I)V

    .line 3
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 4
    new-instance v6, Lbm0;

    invoke-direct {v6, v3}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object v7, LyT;->a:Landroid/content/SharedPreferences;

    const-string v8, "send_tab_to_self.notification.next_id"

    const/4 v9, -0x1

    .line 6
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const v10, 0x7ffffffe

    if-lt v9, v10, :cond_1

    const/4 v9, -0x1

    :cond_1
    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 7
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 9
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lorg/chromium/chrome/browser/send_tab_to_self/NotificationManager$TapReceiver;

    invoke-direct {v8, v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    const-string v11, "send_tab_to_self.notification.guid"

    .line 11
    invoke-virtual {v8, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 12
    invoke-static {v3, v9, v8, v4}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v8

    .line 13
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lorg/chromium/chrome/browser/send_tab_to_self/NotificationManager$DeleteReceiver;

    invoke-direct {v12, v3, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    .line 15
    invoke-virtual {v12, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 16
    invoke-static {v3, v9, v12, v4}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v12

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130567

    new-array v5, v5, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p3, v5, v10

    .line 19
    invoke-virtual {v13, v14, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 20
    new-instance v7, Lcm0;

    const-string v13, "SendTabToSelf"

    const/16 v14, 0xf

    invoke-direct {v7, v14, v13, v9}, Lcm0;-><init>(ILjava/lang/String;I)V

    const/4 v14, 0x0

    const-string v15, "sharing"

    .line 21
    invoke-static {v10, v15, v14, v7}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v7

    .line 22
    invoke-interface {v7, v8}, LPl0;->b(Lpm0;)LPl0;

    move-result-object v7

    .line 23
    invoke-interface {v7, v12}, LPl0;->a(Lpm0;)LPl0;

    move-result-object v7

    move-object/from16 v8, p2

    .line 24
    invoke-interface {v7, v8}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v7

    .line 25
    invoke-interface {v7, v5}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v5

    .line 26
    invoke-interface {v5, v13}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object v5

    .line 27
    invoke-interface {v5, v10}, LPl0;->b(I)LPl0;

    move-result-object v5

    new-array v4, v4, [J

    .line 28
    invoke-interface {v5, v4}, LPl0;->a([J)LPl0;

    move-result-object v4

    const v5, 0x7f08010d

    .line 29
    invoke-interface {v4, v5}, LPl0;->c(I)LPl0;

    move-result-object v4

    const/4 v5, -0x1

    .line 30
    invoke-interface {v4, v5}, LPl0;->e(I)LPl0;

    move-result-object v4

    .line 31
    invoke-interface {v4}, LPl0;->b()LOl0;

    move-result-object v4

    .line 32
    invoke-virtual {v6, v4}, Lbm0;->a(LOl0;)V

    .line 33
    sget-object v5, Lnm0;->a:Lom0;

    .line 34
    iget-object v4, v4, LOl0;->a:Landroid/app/Notification;

    const/16 v6, 0xf

    .line 35
    invoke-virtual {v5, v6, v4}, Lom0;->a(ILandroid/app/Notification;)V

    .line 36
    sget-object v4, LyT;->a:Landroid/content/SharedPreferences;

    const-string v5, "send_tab_to_self.notification.active"

    .line 37
    invoke-interface {v4, v5, v14}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_2

    .line 38
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 39
    :cond_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v7

    .line 40
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 48
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4

    const-string v4, "alarm"

    .line 49
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 50
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/chromium/chrome/browser/send_tab_to_self/NotificationManager$TimeoutReceiver;

    invoke-direct {v5, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 52
    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v5, 0x8000000

    .line 53
    invoke-static {v3, v9, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 54
    invoke-virtual {v4, v10, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_4
    return v10
.end method
