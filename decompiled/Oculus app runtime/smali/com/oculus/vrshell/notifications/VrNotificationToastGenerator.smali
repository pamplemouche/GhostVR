.class public Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;
.super Ljava/lang/Object;
.source "VrNotificationToastGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Landroid/os/Bundle;
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->generateNotificationBundle(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static createAshmemBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 158
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap;

    const-string v1, "createAshmemBitmap"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 159
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 165
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    const-string v1, "Bitmap.createAshmemBitmap failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 163
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    const-string v1, "Could not invoked Bitmap.createAshmemBitmap via reflection"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 161
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    const-string v1, "Could not find Bitmap.createAshmemBitmap via reflection"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dismissNotificationToast(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)V
    .locals 3

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrapi.NOTIFICATION_DISMISS2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    const-string p0, "com.oculus.vrapi.notify.NOTIFICATION_ID"

    .line 174
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    sget-object p1, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    const-string v0, "Error sending dismiss broadcast"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static generateNotificationBundle(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Landroid/os/Bundle;
    .locals 2

    .line 86
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->renderNotification(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    int-to-long p2, p2

    .line 96
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "aui_notif_duration"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {p0}, Lcom/oculus/notifications/NotificationsDisplayDuration;->fromName(Ljava/lang/String;)Lcom/oculus/notifications/NotificationsDisplayDuration;

    move-result-object p0

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.oculus.vrapi.notify.BITMAP"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "com.oculus.vrapi.notify.NOTIFICATION_ID"

    .line 102
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    iget p0, p0, Lcom/oculus/notifications/NotificationsDisplayDuration;->length:I

    const-string p1, "com.oculus.vrapi.notify.DURATION"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "com.oculus.vrapi.notify.SCALE"

    const/high16 p1, 0x41f00000    # 30.0f

    .line 104
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "com.oculus.vrapi.notify.POS_X"

    const/4 p1, 0x0

    .line 105
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "com.oculus.vrapi.notify.POS_Y"

    const p1, -0x41b33333    # -0.2f

    .line 106
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "com.oculus.vrapi.notify.FIXED_TO_VIEW"

    const/4 p1, 0x1

    .line 107
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.oculus.vrapi.notify.ENABLE_CAC"

    const/4 p1, 0x0

    .line 108
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getBitmapProvider(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Lcom/oculus/vrshell/INotificationBitmapProvider;
    .locals 1

    .line 69
    new-instance v0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)V

    return-object v0
.end method

.method private static renderNotification(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 120
    invoke-static {p0, p1, p3}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->shouldShowCTA(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;Z)Z

    move-result p3

    .line 119
    invoke-static {p1, p0, p2, p3}, Lcom/oculus/notifications/view/NotificationsViewUtil;->getToastViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;ZZ)Landroid/view/View;

    move-result-object p0

    const/high16 p1, -0x80000000

    const/16 p2, 0x1c2

    .line 127
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/16 p3, 0x113

    .line 128
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 126
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->measure(II)V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 132
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 133
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 138
    sget-object p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created bitmap ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") of size:  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p3}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->createAshmemBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_0
    return-object p3
.end method

.method public static sendNotificationToast(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)V
    .locals 4

    .line 30
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.vrapi.NOTIFICATION_LARGE_ACTION2"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.oculus.vrapi.notify.KEY"

    .line 33
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p0, p1, p3, p2}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->getBitmapProvider(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Lcom/oculus/vrshell/INotificationBitmapProvider;

    move-result-object p3

    invoke-interface {p3}, Lcom/oculus/vrshell/INotificationBitmapProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    const-string v0, "com.oculus.vrapi.notify.PROVIDER"

    .line 34
    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 41
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    const-string v1, "Error sending bitmap broadcast"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->shouldShowCTA(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 47
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.oculus.vrshell.intent.action.NOTIFICATION_SHOWN"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p3, "aui_notif_duration"

    const-string v0, ""

    .line 52
    invoke-virtual {p0, p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/oculus/notifications/NotificationsDisplayDuration;->fromName(Ljava/lang/String;)Lcom/oculus/notifications/NotificationsDisplayDuration;

    move-result-object p0

    iget p0, p0, Lcom/oculus/notifications/NotificationsDisplayDuration;->length:I

    const-string p3, "toast_duration"

    .line 54
    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "com.oculus.vrshell"

    .line 55
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 59
    sget-object p1, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->TAG:Ljava/lang/String;

    const-string p2, "Error notifying VrShell of toast being shown"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method private static shouldShowCTA(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;Z)Z
    .locals 2

    .line 185
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 186
    iget-object p1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length p0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
