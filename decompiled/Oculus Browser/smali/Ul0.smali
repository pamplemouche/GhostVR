.class public LUl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LPl0;


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Landroid/content/Context;

.field public final c:Lcm0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lwm0;Lcm0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LUl0;->b:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v0, p0, LUl0;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LUl0;->a:Landroid/app/Notification$Builder;

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p3, p2}, Lwm0;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 7
    :cond_0
    iput-object p4, p0, LUl0;->c:Lcm0;

    if-eqz p4, :cond_1

    .line 8
    iget-object p1, p0, LUl0;->a:Landroid/app/Notification$Builder;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x2

    .line 9
    invoke-static {v0, p2, p4, p3}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;)LOl0;
    .locals 2

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 48
    new-instance v0, LOl0;

    iget-object v1, p0, LUl0;->a:Landroid/app/Notification$Builder;

    .line 49
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object v1, p0, LUl0;->c:Lcm0;

    invoke-direct {v0, p1, v1}, LOl0;-><init>(Landroid/app/Notification;Lcm0;)V

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 51
    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 52
    new-instance p1, LOl0;

    iget-object v1, p0, LUl0;->c:Lcm0;

    invoke-direct {p1, v0, v1}, LOl0;-><init>(Landroid/app/Notification;Lcm0;)V

    return-object p1
.end method

.method public a(I)LPl0;
    .locals 1

    .line 5
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(IIZ)LPl0;
    .locals 1

    .line 32
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;
    .locals 3

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 7
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, LUl0;->b:Landroid/content/Context;

    .line 8
    invoke-static {v2, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 9
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_0
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Lpm0;I)LPl0;
    .locals 2

    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, LUl0;->c:Lcm0;

    invoke-static {v0, p4, v1, p3}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 13
    invoke-virtual {p0, p1, p2, p3}, LUl0;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;

    return-object p0
.end method

.method public a(J)LPl0;
    .locals 1

    .line 34
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(LS5;[ILandroid/app/PendingIntent;Z)LPl0;
    .locals 0

    .line 41
    new-instance p3, Landroid/app/Notification$MediaStyle;

    invoke-direct {p3}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 42
    iget-object p1, p1, LS5;->a:LI5;

    invoke-interface {p1}, LI5;->f()Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 44
    invoke-virtual {p3, p2}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 45
    iget-object p1, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/app/Notification$Action;)LPl0;
    .locals 1

    .line 14
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/app/Notification$Action;II)LPl0;
    .locals 8

    .line 15
    iget-object v0, p0, LUl0;->c:Lcm0;

    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    .line 16
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 17
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/chromium/chrome/browser/notifications/NotificationIntentInterceptor$Receiver;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "notifications.NotificationIntentInterceptor.EXTRA_PENDING_INTENT"

    .line 18
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "notifications.NotificationIntentInterceptor.EXTRA_INTENT_TYPE"

    const/4 v5, 0x1

    .line 19
    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget v1, v0, Lcm0;->a:I

    const-string v6, "notifications.NotificationIntentInterceptor.EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v1, "notifications.NotificationIntentInterceptor.EXTRA_CREATE_TIME"

    invoke-virtual {v4, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "notifications.NotificationIntentInterceptor.EXTRA_ACTION_TYPE"

    .line 22
    invoke-virtual {v4, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v1, v6, :cond_0

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    :cond_0
    iget v1, v0, Lcm0;->a:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget-object p3, v0, Lcm0;->b:Ljava/lang/String;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 27
    iget p3, v0, Lcm0;->c:I

    add-int/2addr v1, p3

    .line 28
    invoke-static {v3, v1, v4, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 29
    iput-object p2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 30
    iget-object p2, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/app/Notification$BigPictureStyle;)LPl0;
    .locals 1

    .line 39
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/app/Notification$BigTextStyle;)LPl0;
    .locals 1

    .line 40
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/app/Notification;)LPl0;
    .locals 1

    .line 38
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)LPl0;
    .locals 1

    .line 35
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Icon;)LPl0;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)LPl0;
    .locals 1

    .line 4
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 33
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Ljava/lang/String;)LPl0;
    .locals 1

    .line 46
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Lpm0;)LPl0;
    .locals 4

    .line 31
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, LUl0;->c:Lcm0;

    invoke-static {v1, v2, v3, p1}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a(Z)LPl0;
    .locals 1

    .line 37
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a([J)LPl0;
    .locals 1

    .line 36
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public a()Landroid/app/Notification;
    .locals 1

    .line 53
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public b()LOl0;
    .locals 3

    .line 14
    new-instance v0, LOl0;

    invoke-virtual {p0}, LUl0;->a()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, LUl0;->c:Lcm0;

    invoke-direct {v0, v1, v2}, LOl0;-><init>(Landroid/app/Notification;Lcm0;)V

    return-object v0
.end method

.method public b(I)LPl0;
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :cond_0
    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)LPl0;
    .locals 1

    .line 5
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public b(Landroid/widget/RemoteViews;)LPl0;
    .locals 2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 12
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 3
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public b(Ljava/lang/String;)LPl0;
    .locals 2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    return-object p0
.end method

.method public b(Lpm0;)LPl0;
    .locals 2

    .line 1
    iget-object v0, p0, LUl0;->c:Lcm0;

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p1}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 2
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public b(Z)LPl0;
    .locals 1

    .line 4
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public c(I)LPl0;
    .locals 1

    .line 2
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public c(Ljava/lang/String;)LPl0;
    .locals 1

    .line 4
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public c(Z)LPl0;
    .locals 1

    .line 3
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public d(Ljava/lang/String;)LOl0;
    .locals 2

    .line 4
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 5
    iget-object v1, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 7
    new-instance p1, LOl0;

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, LUl0;->c:Lcm0;

    invoke-direct {p1, v0, v1}, LOl0;-><init>(Landroid/app/Notification;Lcm0;)V

    return-object p1
.end method

.method public d(I)LPl0;
    .locals 1

    .line 2
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public d(Z)LPl0;
    .locals 1

    .line 3
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public e(I)LPl0;
    .locals 1

    .line 2
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public e(Z)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public f(Z)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LUl0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method
