.class public abstract LZl0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(IILcm0;Lpm0;)Landroid/app/PendingIntent;
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v1, p3, Lpm0;->a:Landroid/app/PendingIntent;

    .line 2
    iget p3, p3, Lpm0;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 p3, 0x0

    .line 3
    :goto_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/chromium/chrome/browser/notifications/NotificationIntentInterceptor$Receiver;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "notifications.NotificationIntentInterceptor.EXTRA_PENDING_INTENT"

    .line 5
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "notifications.NotificationIntentInterceptor.EXTRA_INTENT_TYPE"

    .line 6
    invoke-virtual {v3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget v1, p2, Lcm0;->a:I

    const-string v4, "notifications.NotificationIntentInterceptor.EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "notifications.NotificationIntentInterceptor.EXTRA_CREATE_TIME"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string v1, "notifications.NotificationIntentInterceptor.EXTRA_ACTION_TYPE"

    .line 9
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_2

    const/high16 v1, 0x10000000

    .line 11
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    :cond_2
    iget v1, p2, Lcm0;->a:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object p0, p2, Lcm0;->b:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget p0, p2, Lcm0;->c:I

    add-int/2addr v1, p0

    .line 15
    invoke-static {v2, v1, v3, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
