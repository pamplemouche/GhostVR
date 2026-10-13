.class public Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()V
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "notification"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const-string v2, "OfflinePageAutoFetchInProgressNotification"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "offline_auto_fetch_showing_in_progress"

    .line 5
    invoke-static {v0, v2, v1}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(I)V
    .locals 2

    const-string v0, "OfflinePages.AutoFetch.InProgressNotificationAction"

    const/4 v1, 0x5

    .line 6
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static autoFetchInProgressNotificationCanceled()Z
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x5

    const-string v2, "offline_auto_fetch_user_cancel_action_in_progress"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cancellationComplete()V
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x5

    const-string v2, "offline_auto_fetch_user_cancel_action_in_progress"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier;->a(I)V

    .line 4
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 5
    invoke-static {v0, v2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static showCompleteNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    new-instance v8, LYm0;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-wide v4, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, LYm0;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p4, p5, v0, v8}, Lmn0;->a(Ljava/lang/String;JILorg/chromium/base/Callback;)V

    return-void
.end method

.method public static showInProgressNotification(I)V
    .locals 6

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier$InProgressCancelReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v4, "notification_action"

    .line 4
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier$InProgressCancelReceiver;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x3

    .line 8
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110014

    invoke-virtual {v3, v4, p0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    const-string v4, "downloads"

    .line 11
    invoke-static {v3, v4}, LXl0;->a(ZLjava/lang/String;)LPl0;

    move-result-object v3

    .line 12
    invoke-interface {v3, p0}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object p0

    const-string v3, "OfflinePageAutoFetchNotification"

    .line 13
    invoke-interface {p0, v3}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object p0

    const/4 v3, -0x1

    .line 14
    invoke-interface {p0, v3}, LPl0;->b(I)LPl0;

    move-result-object p0

    const v3, 0x7f08010d

    .line 15
    invoke-interface {p0, v3}, LPl0;->c(I)LPl0;

    move-result-object p0

    const v3, 0x7f1301d4

    .line 16
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 17
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 18
    invoke-interface {p0, v4, v3, v1}, LPl0;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;

    move-result-object p0

    .line 19
    invoke-static {v0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {p0, v1}, LPl0;->b(Landroid/app/PendingIntent;)LPl0;

    move-result-object p0

    const-string v1, "notification"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 21
    invoke-interface {p0}, LPl0;->a()Landroid/app/Notification;

    move-result-object p0

    const-string v1, "OfflinePageAutoFetchInProgressNotification"

    .line 22
    invoke-virtual {v0, v1, v4, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 23
    sget-object v0, Lnm0;->a:Lom0;

    const/16 v1, 0xe

    .line 24
    invoke-virtual {v0, v1, p0}, Lom0;->a(ILandroid/app/Notification;)V

    .line 25
    invoke-static {v4}, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier;->a(I)V

    return-void
.end method

.method public static updateInProgressNotificationCountIfShowing(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "offline_auto_fetch_showing_in_progress"

    if-nez p0, :cond_1

    .line 1
    sget-object p0, LyT;->a:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 3
    invoke-static {p0}, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier;->a(I)V

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier;->a()V

    return-void

    .line 5
    :cond_1
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p0}, Lorg/chromium/chrome/browser/offlinepages/AutoFetchNotifier;->showInProgressNotification(I)V

    :cond_2
    return-void
.end method
