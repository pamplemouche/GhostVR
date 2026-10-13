.class public Leo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lti0;


# instance fields
.field public final w:Lorg/chromium/base/Callback;

.field public x:Lorg/chromium/chrome/browser/ChromeActivity;

.field public y:Z

.field public z:Llo0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbo0;

    invoke-direct {v0, p0}, Lbo0;-><init>(Leo0;)V

    iput-object v0, p0, Leo0;->w:Lorg/chromium/base/Callback;

    .line 3
    iput-object p1, p0, Leo0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    sget-object p1, Ljo0;->a:Lmo0;

    .line 5
    invoke-virtual {p1, v0}, Lmo0;->a(Lorg/chromium/base/Callback;)Z

    .line 6
    iget-object p1, p0, Leo0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->M()Lqi0;

    move-result-object p1

    check-cast p1, Lqg0;

    invoke-virtual {p1, p0}, Lqg0;->a(Lvi0;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Leo0;->z:Llo0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, v0, Llo0;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean v0, p0, Leo0;->y:Z

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Ljo0;->a:Lmo0;

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Leo0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0, v1, v2}, Lmo0;->a(ILandroid/app/Activity;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Leo0;->y:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Leo0;->d()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Leo0;->d()V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "update_notification_state"

    const-string v2, "InlineUpdateFlow"

    const/4 v3, 0x0

    .line 1
    invoke-static {v2, v1, v3}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "pref_last_timestamp_update_notification_pushed_key"

    const/4 v5, 0x1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3
    invoke-static {}, LKn0;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v8, 0x0

    .line 4
    invoke-interface {v1, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-string v1, "update_notification_interval_days"

    .line 5
    invoke-static {v2, v1}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v10, 0x5265c00

    mul-long v8, v8, v10

    goto :goto_0

    :catch_0
    const-wide/32 v8, 0x6c258c00

    :goto_0
    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 7
    new-instance v6, Lcm0;

    const-string v7, "org.chromium.chrome.browser.omaha.update_notification_tag"

    const/16 v8, 0x8

    const/16 v9, 0x10

    invoke-direct {v6, v9, v7, v8}, Lcm0;-><init>(ILjava/lang/String;I)V

    const-string v7, "updates"

    .line 8
    invoke-static {v5, v7, v1, v6}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v1

    const v6, 0x7f08010d

    .line 9
    invoke-interface {v1, v6}, LPl0;->c(I)LPl0;

    move-result-object v1

    .line 10
    invoke-interface {v1, v5}, LPl0;->f(Z)LPl0;

    move-result-object v1

    .line 11
    sget-object v6, LzT;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "update_notification_experimental_context"

    .line 13
    invoke-static {v2, v7}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v12, "default"

    const v13, 0x5c13d641

    const-string v14, "experimental_update_chrome"

    const v15, -0x283c3467

    const-string v11, "experimental_translate_the_web"

    const v9, -0x77e01f02

    const/16 v16, -0x1

    if-eq v10, v9, :cond_5

    if-eq v10, v15, :cond_4

    if-eq v10, v13, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x2

    goto :goto_4

    :cond_4
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v8, -0x1

    :goto_4
    if-eqz v8, :cond_8

    if-eq v8, v5, :cond_7

    const v8, 0x7f130634

    .line 15
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    const v8, 0x7f130635

    .line 16
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    const v8, 0x7f130636

    .line 17
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 18
    :goto_5
    invoke-interface {v1, v6}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v1

    .line 19
    sget-object v6, LzT;->a:Landroid/content/Context;

    .line 20
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 21
    invoke-static {v2, v7}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eq v7, v9, :cond_b

    if-eq v7, v15, :cond_a

    if-eq v7, v13, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v2, -0x1

    :goto_7
    if-eqz v2, :cond_e

    if-eq v2, v5, :cond_d

    const v2, 0x7f130631

    .line 23
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_d
    const v2, 0x7f130632

    .line 24
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_e
    const v2, 0x7f130633

    .line 25
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    :goto_8
    invoke-interface {v1, v2}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v1

    .line 27
    iget-object v2, v0, Leo0;->z:Llo0;

    .line 28
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 29
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v2, v2, Llo0;->a:I

    const-string v7, "org.chromium.chrome.browser.omaha.update_notification_state_extra"

    .line 30
    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v6, 0x8000000

    .line 31
    invoke-static {v5, v3, v2, v6}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, LPl0;->b(Lpm0;)LPl0;

    .line 33
    invoke-interface {v1}, LPl0;->b()LOl0;

    move-result-object v1

    .line 34
    new-instance v2, Lbm0;

    iget-object v3, v0, Leo0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v2, v3}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v2, v1}, Lbm0;->a(LOl0;)V

    .line 36
    sget-object v2, Lnm0;->a:Lom0;

    .line 37
    iget-object v1, v1, LOl0;->a:Landroid/app/Notification;

    const/16 v3, 0x10

    .line 38
    invoke-virtual {v2, v3, v1}, Lom0;->a(ILandroid/app/Notification;)V

    .line 39
    invoke-static {}, LKn0;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    sget-object v0, Ljo0;->a:Lmo0;

    .line 2
    iget-object v1, p0, Leo0;->w:Lorg/chromium/base/Callback;

    invoke-virtual {v0, v1}, Lmo0;->b(Lorg/chromium/base/Callback;)V

    .line 3
    iget-object v0, p0, Leo0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, LBg0;->M()Lqi0;

    move-result-object v0

    check-cast v0, Lqg0;

    invoke-virtual {v0, p0}, Lqg0;->b(Lvi0;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Leo0;->x:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method
