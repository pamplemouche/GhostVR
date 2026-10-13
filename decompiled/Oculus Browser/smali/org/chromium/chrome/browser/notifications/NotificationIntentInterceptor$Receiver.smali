.class public final Lorg/chromium/chrome/browser/notifications/NotificationIntentInterceptor$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 p1, -0x1

    const-string v0, "notifications.NotificationIntentInterceptor.EXTRA_INTENT_TYPE"

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "notifications.NotificationIntentInterceptor.EXTRA_NOTIFICATION_TYPE"

    .line 2
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "notifications.NotificationIntentInterceptor.EXTRA_CREATE_TIME"

    const-wide/16 v3, -0x1

    .line 3
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v4, 0x15

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0xf

    const/4 v8, 0x0

    if-eqz v0, :cond_c

    const/4 v9, 0x1

    if-eq v0, v9, :cond_6

    const/4 v9, 0x2

    if-eq v0, v9, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lnm0;->a:Lom0;

    if-eqz v0, :cond_5

    if-ne v1, p1, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    new-instance p1, LaV;

    const-string v0, "Mobile.SystemNotification.Dismiss"

    invoke-direct {p1, v0, v4}, LaV;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1, v1}, LaV;->a(I)V

    const-string p1, "Mobile.SystemNotification.Dismiss.Age"

    .line 7
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "Mobile.SystemNotification.Dismiss.Age.SharedClipboard"

    .line 8
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "Mobile.SystemNotification.Dismiss.Age.ClickToCall"

    .line 9
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "Mobile.SystemNotification.Dismiss.Age.SendTabToSelf"

    .line 10
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 11
    :cond_5
    throw v8

    :cond_6
    const-string v0, "notifications.NotificationIntentInterceptor.EXTRA_ACTION_TYPE"

    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 13
    sget-object v4, Lnm0;->a:Lom0;

    if-eqz v4, :cond_b

    if-ne v0, p1, :cond_7

    goto :goto_0

    .line 14
    :cond_7
    new-instance p1, LaV;

    const-string v4, "Mobile.SystemNotification.Action.Click"

    const/16 v8, 0xd

    invoke-direct {p1, v4, v8}, LaV;-><init>(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p1, v0}, LaV;->a(I)V

    const-string p1, "Mobile.SystemNotification.Action.Click.Age"

    .line 16
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    if-eq v1, v7, :cond_a

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_8

    goto :goto_0

    :cond_8
    const-string p1, "Mobile.SystemNotification.Action.Click.Age.SharedClipboard"

    .line 17
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_9
    const-string p1, "Mobile.SystemNotification.Action.Click.Age.ClickToCall"

    .line 18
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_a
    const-string p1, "Mobile.SystemNotification.Action.Click.Age.SendTabToSelf"

    .line 19
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 20
    :cond_b
    throw v8

    .line 21
    :cond_c
    sget-object v0, Lnm0;->a:Lom0;

    if-eqz v0, :cond_12

    if-ne v1, p1, :cond_d

    goto :goto_0

    .line 22
    :cond_d
    new-instance p1, LaV;

    const-string v0, "Mobile.SystemNotification.Content.Click"

    invoke-direct {p1, v0, v4}, LaV;-><init>(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p1, v1}, LaV;->a(I)V

    const-string p1, "Mobile.SystemNotification.Content.Click.Age"

    .line 24
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    if-eq v1, v7, :cond_10

    if-eq v1, v6, :cond_f

    if-eq v1, v5, :cond_e

    goto :goto_0

    :cond_e
    const-string p1, "Mobile.SystemNotification.Content.Click.Age.SharedClipboard"

    .line 25
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_f
    const-string p1, "Mobile.SystemNotification.Content.Click.Age.ClickToCall"

    .line 26
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_10
    const-string p1, "Mobile.SystemNotification.Content.Click.Age.SendTabToSelf"

    .line 27
    invoke-static {p1, v2, v3}, Lom0;->a(Ljava/lang/String;J)V

    :goto_0
    const/4 p1, 0x0

    const-string v0, "notifications.NotificationIntentInterceptor.EXTRA_PENDING_INTENT"

    .line 28
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-nez p2, :cond_11

    goto :goto_1

    .line 29
    :cond_11
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "The PendingIntent to fire is canceled."

    const-string v1, "IntentInterceptor"

    .line 30
    invoke-static {v1, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    sget-object p1, LRB;->a:LLB;

    invoke-virtual {p1, p2}, LLB;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 32
    :cond_12
    throw v8
.end method
