.class public Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;
.super Landroid/content/ContextWrapper;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f080072

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a:Landroid/content/Context;

    const-string v3, "gear_vrsw_test"

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/app/br;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v4/app/br;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/br;->a(I)Landroid/support/v4/app/br;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/br;->a(J)Landroid/support/v4/app/br;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/br;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/br;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/br;

    invoke-virtual {v0}, Landroid/support/v4/app/br;->a()Landroid/app/Notification;

    move-result-object p1

    :goto_0
    iput p3, p1, Landroid/app/Notification;->flags:I

    return-object p1
.end method

.method public a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x64

    const v2, 0x7f080072

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_3

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a:Landroid/content/Context;

    const-string v4, "gear_vrsw_test"

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v0, v1, p5, p6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/app/br;

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v4/app/br;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/br;->a(I)Landroid/support/v4/app/br;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/br;->a(J)Landroid/support/v4/app/br;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/br;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/br;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;

    if-eqz p4, :cond_4

    invoke-virtual {v0, v1, p5, p6}, Landroid/support/v4/app/br;->a(IIZ)Landroid/support/v4/app/br;

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Landroid/support/v4/app/br;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/br;

    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/br;->a()Landroid/app/Notification;

    move-result-object p1

    :goto_0
    iput p7, p1, Landroid/app/Notification;->flags:I

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x64

    const v3, 0x7f080072

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_1

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a:Landroid/content/Context;

    const-string v5, "gear_vrsw_test"

    invoke-direct {v1, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_0

    invoke-virtual {v1, v2, p4, p5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/app/br;

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/support/v4/app/br;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/support/v4/app/br;->a(I)Landroid/support/v4/app/br;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/br;->a(J)Landroid/support/v4/app/br;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/br;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;

    invoke-virtual {v1, p2}, Landroid/support/v4/app/br;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;

    if-eqz p3, :cond_2

    invoke-virtual {v1, v2, p4, p5}, Landroid/support/v4/app/br;->a(IIZ)Landroid/support/v4/app/br;

    :cond_2
    invoke-virtual {v1, v0}, Landroid/support/v4/app/br;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/br;

    invoke-virtual {v1}, Landroid/support/v4/app/br;->a()Landroid/app/Notification;

    move-result-object p1

    :goto_0
    iput p6, p1, Landroid/app/Notification;->flags:I

    return-object p1
.end method

.method public a()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f0f001b

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    const-string v1, "gear_vrsw_test"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    const-string v4, "VRSW"

    invoke-direct {v2, v1, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v3, 0x0

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method
