.class Lcom/oculus/vrapi/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;
    }
.end annotation


# static fields
.field private static BITMAP_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.BITMAP"

.field private static DURATION_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.DURATION"

.field private static ENABLE_CAC_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.ENABLE_CAC"

.field private static FIXED_TO_VIEW_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.FIXED_TO_VIEW"

.field private static ICON_ID:Ljava/lang/String; = "com.oculus.vrapi.notify.ICON_ID"

.field private static ID_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.NOTIFICATION_ID"

.field private static KEY_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.KEY"

.field private static final NOTIFICATION_DEFAULT_ID:J = 0x0L

.field private static NOTIFICATION_DISMISS_ACTION:Ljava/lang/String; = "com.oculus.vrapi.NOTIFICATION_DISMISS"

.field private static NOTIFICATION_DISMISS_ACTION2:Ljava/lang/String; = "com.oculus.vrapi.NOTIFICATION_DISMISS2"

.field private static final NOTIFICATION_DURATION_LARGE:I = 0xa

.field private static final NOTIFICATION_DURATION_SMALL:I = 0x3

.field private static NOTIFICATION_ICON_ACTION:Ljava/lang/String; = "com.oculus.vrapi.NOTIFICATION_ACTION"

.field private static NOTIFICATION_LARGE_ACTION:Ljava/lang/String; = "com.oculus.vrapi.NOTIFICATION_LARGE_ACTION"

.field private static NOTIFICATION_LARGE_ACTION2:Ljava/lang/String; = "com.oculus.vrapi.NOTIFICATION_LARGE_ACTION2"

.field private static final NOTIFICATION_TYPE_ICON:I = 0x0

.field private static final NOTIFICATION_TYPE_LARGE:I = 0x1

.field private static PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrapi.notify.PACKAGE_NAME"

.field private static final PERMISSION_NAME:Ljava/lang/String; = "com.oculus.systemdriver.DISPLAY_VR_NOTIFICATION"

.field private static POS_X_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.POS_X"

.field private static POS_Y_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.POS_Y"

.field private static PROVIDER_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.PROVIDER"

.field private static SCALE_EXTRA:Ljava/lang/String; = "com.oculus.vrapi.notify.SCALE"

.field private static final TAG:Ljava/lang/String; = "VrApiNotificationReceiver"

.field private static isShuttingDown:Z = false

.field private static receiver:Lcom/oculus/vrapi/NotificationReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static native dismissNotification(J)V
.end method

.method private static displayBitmapNotification(Landroid/content/Context;JILandroid/graphics/Bitmap;ILcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;)V
    .locals 16

    move-object/from16 v0, p6

    .line 129
    sget-boolean v1, Lcom/oculus/vrapi/NotificationReceiver;->isShuttingDown:Z

    if-eqz v1, :cond_0

    const-string v0, "VrApiNotificationReceiver"

    const-string v1, "Shutdown in progress, suppressing notifications"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 137
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v2, v1, v10

    if-lez v2, :cond_1

    .line 141
    new-array v11, v2, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p4

    move-object v3, v11

    move v5, v1

    move v8, v1

    move v9, v10

    .line 142
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 143
    iget v12, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->scale:F

    iget v13, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posX:F

    iget v14, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posY:F

    iget-boolean v15, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->isFixedToView:Z

    iget-boolean v0, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->enableCAC:Z

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p5

    move v7, v1

    move v8, v10

    move-object v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move v13, v15

    move v14, v0

    invoke-static/range {v2 .. v14}, Lcom/oculus/vrapi/NotificationReceiver;->notificationReceived(Landroid/content/Context;JIIII[IFFFZZ)V

    :cond_1
    return-void
.end method

.method public static displayNotification(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    .line 150
    invoke-static {p0, p2, p1}, Lcom/oculus/vrapi/NotificationReceiver;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    const-string p0, "VrApiNotificationReceiver"

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading icon "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 p1, 0x0

    .line 164
    invoke-static {p1}, Lcom/oculus/vrapi/NotificationReceiver;->getDefaultParameters(I)Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;

    move-result-object v6

    move-object v0, p0

    .line 163
    invoke-static/range {v0 .. v6}, Lcom/oculus/vrapi/NotificationReceiver;->displayBitmapNotification(Landroid/content/Context;JILandroid/graphics/Bitmap;ILcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;)V

    return-void
.end method

.method private static getDefaultParameters(I)Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;
    .locals 2

    .line 169
    new-instance v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;

    invoke-direct {v0}, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;-><init>()V

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->isFixedToView:Z

    .line 171
    iput-boolean v1, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->enableCAC:Z

    if-nez p0, :cond_0

    const/high16 p0, 0x3e000000    # 0.125f

    .line 175
    iput p0, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posX:F

    .line 176
    iput p0, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posY:F

    const/high16 p0, 0x40700000    # 3.75f

    .line 177
    iput p0, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->scale:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 181
    iput p0, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posX:F

    const p0, -0x41666666    # -0.3f

    .line 182
    iput p0, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posY:F

    const/high16 p0, 0x41f00000    # 30.0f

    .line 183
    iput p0, v0, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->scale:F

    :goto_0
    return-object v0
.end method

.method private static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 297
    invoke-static {p0, p1}, Lcom/oculus/vrapi/NotificationReceiver;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    .line 283
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 284
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v0, 0x2

    .line 286
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static native notificationReceived(Landroid/content/Context;JIIII[IFFFZZ)V
.end method

.method private parseNotificationBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10

    if-nez p2, :cond_0

    const-string p1, "VrApiNotificationReceiver"

    const-string p2, "Invalid bundle, ignoring"

    .line 257
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->ID_EXTRA:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 262
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->DURATION_EXTRA:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v0, 0x1

    .line 264
    invoke-static {v0}, Lcom/oculus/vrapi/NotificationReceiver;->getDefaultParameters(I)Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;

    move-result-object v9

    .line 265
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->SCALE_EXTRA:Ljava/lang/String;

    iget v1, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->scale:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->scale:F

    .line 266
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->POS_X_EXTRA:Ljava/lang/String;

    iget v1, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posX:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posX:F

    .line 267
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->POS_Y_EXTRA:Ljava/lang/String;

    iget v1, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posY:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->posY:F

    .line 268
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->FIXED_TO_VIEW_EXTRA:Ljava/lang/String;

    iget-boolean v1, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->isFixedToView:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->isFixedToView:Z

    .line 269
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->ENABLE_CAC_EXTRA:Ljava/lang/String;

    iget-boolean v1, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->enableCAC:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;->enableCAC:Z

    .line 271
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    move-object v3, p1

    .line 274
    invoke-static/range {v3 .. v9}, Lcom/oculus/vrapi/NotificationReceiver;->displayBitmapNotification(Landroid/content/Context;JILandroid/graphics/Bitmap;ILcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;)V

    :cond_1
    return-void
.end method

.method private static startReceiver(Landroid/content/Context;I)V
    .locals 4

    .line 96
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->receiver:Lcom/oculus/vrapi/NotificationReceiver;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/oculus/vrapi/NotificationReceiver;

    invoke-direct {v0}, Lcom/oculus/vrapi/NotificationReceiver;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/NotificationReceiver;->receiver:Lcom/oculus/vrapi/NotificationReceiver;

    .line 101
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->receiver:Lcom/oculus/vrapi/NotificationReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->receiver:Lcom/oculus/vrapi/NotificationReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_ICON_ACTION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_LARGE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_LARGE_ACTION2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_DISMISS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_DISMISS_ACTION2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->receiver:Lcom/oculus/vrapi/NotificationReceiver;

    const-string v2, "com.oculus.systemdriver.DISPLAY_VR_NOTIFICATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    invoke-static {p0, p1}, Lcom/oculus/vrapi/NotificationReceiverHelper;->initializeForContext(Landroid/content/Context;I)V

    return-void
.end method

.method private static stopReceiver(Landroid/content/Context;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->receiver:Lcom/oculus/vrapi/NotificationReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 196
    sput-boolean p1, Lcom/oculus/vrapi/NotificationReceiver;->isShuttingDown:Z

    return-void

    .line 200
    :cond_0
    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_ICON_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->ICON_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "VrApiNotificationReceiver"

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {p1, p2, v0}, Lcom/oculus/vrapi/NotificationReceiver;->displayNotification(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    .line 210
    :cond_1
    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_LARGE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_LARGE_ACTION2:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 237
    :cond_2
    sget-object p1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_DISMISS_ACTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/oculus/vrapi/NotificationReceiver;->NOTIFICATION_DISMISS_ACTION2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "VrApiNotificationReceiver"

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported action: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_4
    :goto_0
    sget-object p1, Lcom/oculus/vrapi/NotificationReceiver;->ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "VrApiNotificationReceiver"

    const-string p2, "Dismiss intent doesn\'t contain a notification id"

    .line 241
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_5
    sget-object p1, Lcom/oculus/vrapi/NotificationReceiver;->ID_EXTRA:Ljava/lang/String;

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 246
    invoke-static {p1, p2}, Lcom/oculus/vrapi/NotificationReceiver;->dismissNotification(J)V

    return-void

    .line 212
    :cond_6
    :goto_1
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->PROVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->KEY_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    sget-object v0, Lcom/oculus/vrapi/NotificationReceiver;->KEY_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object v1, Lcom/oculus/vrapi/NotificationReceiver;->PROVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 219
    invoke-static {p2}, Lcom/oculus/vrshell/INotificationBitmapProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrshell/INotificationBitmapProvider;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 223
    :try_start_0
    invoke-interface {p2, v0}, Lcom/oculus/vrshell/INotificationBitmapProvider;->getNotificationBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oculus/vrapi/NotificationReceiver;->parseNotificationBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "VrApiNotificationReceiver"

    const-string v0, "Failed to fetch the notification bundle"

    .line 226
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void

    .line 233
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oculus/vrapi/NotificationReceiver;->parseNotificationBundle(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
