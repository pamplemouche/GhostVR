.class public Lcom/oculus/systemactivities/PlatformActivity;
.super Lcom/oculus/vrappframework/VrActivity;
.source "PlatformActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;
    }
.end annotation


# static fields
.field private static final BEGIN_VIDEO_CAPTURE_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE"

.field private static CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final INTENT_KEY_DATA:Ljava/lang/String; = "intent_data"

.field public static final MARKET_CHINA:I = 0x2

.field public static final MARKET_GLOBAL:I = 0x1

.field public static final MARKET_UNKNOWN:I = 0x0

.field private static final MEDIA_SERVICE_CONNECTION_TIMEOUT_MILLIS:J = 0x2710L

.field private static final SA_INTENT_COMMAND_CONFIRMQUIT:Ljava/lang/String; = "confirmQuit"

.field private static final SA_INTENT_COMMAND_FAILMENU:Ljava/lang/String; = "failMenu"

.field private static final SA_INTENT_COMMAND_GLOBAL_MENU:Ljava/lang/String; = "globalMenu"

.field private static final SA_INTENT_COMMAND_KEYBOARD_MENU:Ljava/lang/String; = "keyboardMenu"

.field private static final SA_INTENT_COMMAND_PARTY:Ljava/lang/String; = "globalMenuParty"

.field private static final SA_INTENT_COMMAND_TUTORIAL:Ljava/lang/String; = "globalMenuTutorial"

.field private static final SA_INTENT_FORWARD_ANYTIMEUI_FAILMENU:I = 0x5

.field private static final SA_INTENT_FORWARD_ANYTIMEUI_QUIT:I = 0x4

.field private static final SA_INTENT_FORWARD_ANYTIMEUI_SETTINGS:I = 0x3

.field private static final SA_INTENT_FORWARD_INVALID:I = 0x0

.field private static final SA_INTENT_FORWARD_KEYBOARD:I = 0x2

.field private static final SA_INTENT_FORWARD_VALID:I = 0x1

.field private static final SCREENSHOT_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.SCREENSHOT"

.field private static final SERVICE_COMPONENT:Ljava/lang/String; = "com.oculus.horizon.service_media.OVRMediaService"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.horizon"

.field public static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final TAG:Ljava/lang/String; = "PlatformActivity"

.field private static final exService:Ljava/util/concurrent/ExecutorService;

.field static hasPendingFatalLivestreamError:Z = false

.field static isPaused:Z = false

.field private static mServiceMediaConnectionStatus:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus; = null

.field static numNotificationsReceivedWhilePaused:I = 0x0

.field private static sLock:Ljava/lang/Object; = null

.field private static sMediaServiceConnection:Landroid/content/ServiceConnection; = null

.field private static sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface; = null

.field public static transcribeEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    .line 85
    new-instance v0, Lcom/oculus/systemactivities/PlatformActivity$1;

    invoke-direct {v0}, Lcom/oculus/systemactivities/PlatformActivity$1;-><init>()V

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 111
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity;->mServiceMediaConnectionStatus:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    const-string v0, "PlatformActivity"

    const-string v1, "LoadLibrary"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "systemactivities"

    .line 171
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 174
    sput-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->isPaused:Z

    const/4 v0, 0x0

    .line 175
    sput v0, Lcom/oculus/systemactivities/PlatformActivity;->numNotificationsReceivedWhilePaused:I

    .line 177
    sput-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->hasPendingFatalLivestreamError:Z

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 232
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity;->CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :catch_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity;->exService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oculus/vrappframework/VrActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 52
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oculus/aidl/OVRMediaServiceInterface;)Lcom/oculus/aidl/OVRMediaServiceInterface;
    .locals 0

    .line 52
    sput-object p0, Lcom/oculus/systemactivities/PlatformActivity;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/oculus/systemactivities/PlatformActivity;->setMediaServiceConnectionStatus(Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;)V

    return-void
.end method

.method public static broadcastIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PlatformActivity"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: action: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' toPackage: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' command: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' uri: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 419
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 421
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 425
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "PlatformActivity"

    .line 427
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending explicit broadcast to component: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "PlatformActivity"

    .line 432
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending explicit broadcast to package: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    :goto_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 437
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    const-string p1, "intent_cmd"

    .line 440
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "intent_pkg"

    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static checkSystemUtilitiesAnytimeUICapability(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    .line 613
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.oculus.vrshell"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 614
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "com.oculus.vrshell.systemux.capability_level"

    const/4 v2, 0x0

    .line 616
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "PlatformActivity"

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load vrshell metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static dumpIntent(Landroid/content/Intent;)V
    .locals 5

    .line 396
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 400
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "PlatformActivity"

    const-string v3, "Dumping Intent start"

    .line 401
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PlatformActivity"

    .line 403
    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "PlatformActivity"

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "PlatformActivity"

    const-string v0, "Dumping Intent end"

    .line 410
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getAndroidCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PlatformActivity"

    const-string v1, "null cache file!"

    .line 596
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 599
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "PlatformActivity"

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCacheDir() failed! Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "<unknown>"

    const/16 v1, 0x80

    .line 556
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "PlatformActivity"

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p0, "PlatformActivity"

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " label = \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getMediaServiceConnectionStatus()Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;
    .locals 2

    .line 120
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity;->mServiceMediaConnectionStatus:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNumNotificationsReceivedWhilePaused()I
    .locals 2

    .line 219
    sget v0, Lcom/oculus/systemactivities/PlatformActivity;->numNotificationsReceivedWhilePaused:I

    const/4 v1, 0x0

    .line 220
    sput v1, Lcom/oculus/systemactivities/PlatformActivity;->numNotificationsReceivedWhilePaused:I

    return v0
.end method

.method public static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "<unknown>"

    const/4 v1, 0x0

    .line 575
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 578
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    :try_start_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, p0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object v0, v2

    :catch_1
    const-string p0, "PlatformActivity"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p0, "PlatformActivity"

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 634
    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 635
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 636
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 239
    :try_start_0
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity;->CLASS:Ljava/lang/Class;

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "PlatformActivity"

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString() returning default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static hasPendingFatalLivestreamingError()Z
    .locals 2

    .line 186
    sget-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->hasPendingFatalLivestreamError:Z

    const/4 v1, 0x0

    .line 187
    sput-boolean v1, Lcom/oculus/systemactivities/PlatformActivity;->hasPendingFatalLivestreamError:Z

    return v0
.end method

.method public static isActivityPaused()Z
    .locals 1

    .line 208
    sget-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->isPaused:Z

    return v0
.end method

.method public static isAppInstalled(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "PlatformActivity"

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAppInstalled( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 541
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-ltz p2, :cond_0

    .line 543
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    const-string p0, "PlatformActivity"

    .line 546
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isMediaServiceBound()Z
    .locals 2

    .line 114
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native nativeGenerateKeyboardURIFromCmd(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetTranscribeEnabled(J)Z
.end method

.method public static native nativeIsJobThreadExiting(J)Z
.end method

.method public static native nativeSetAppInterface(Lcom/oculus/vrappframework/VrActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static notificationReceived()V
    .locals 1

    .line 212
    sget-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->isPaused:Z

    if-eqz v0, :cond_0

    .line 213
    sget v0, Lcom/oculus/systemactivities/PlatformActivity;->numNotificationsReceivedWhilePaused:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oculus/systemactivities/PlatformActivity;->numNotificationsReceivedWhilePaused:I

    :cond_0
    return-void
.end method

.method public static onFatalLivestreamingErrorReceived()V
    .locals 1

    const/4 v0, 0x1

    .line 181
    sput-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->hasPendingFatalLivestreamError:Z

    return-void
.end method

.method public static sendScreenshotMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "PlatformActivity"

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendScreenshotMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.systemactivities.SCREENSHOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "delayInSeconds"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 460
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 461
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendVideoCaptureMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PlatformActivity"

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendVideoCaptureMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static setMediaServiceConnectionStatus(Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;)V
    .locals 2

    .line 126
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    sput-object p0, Lcom/oculus/systemactivities/PlatformActivity;->mServiceMediaConnectionStatus:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    .line 129
    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    if-ne p0, v1, :cond_1

    .line 131
    :cond_0
    sget-object p0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static startHttpJob(Landroid/app/Activity;JLjava/lang/String;)[B
    .locals 7

    const/4 p0, 0x0

    .line 473
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    .line 476
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 478
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 480
    new-array v1, v0, [B

    .line 482
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move v3, v0

    const/4 v4, 0x0

    :goto_0
    if-lez v3, :cond_2

    .line 489
    invoke-static {p1, p2}, Lcom/oculus/systemactivities/PlatformActivity;->nativeIsJobThreadExiting(J)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "PlatformActivity"

    const-string p2, "startHttpJob: exiting!"

    .line 492
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sub-int v5, v0, v3

    const/high16 v6, 0x10000

    .line 497
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 498
    invoke-virtual {v2, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v5

    goto :goto_0

    .line 508
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 509
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-lez v3, :cond_4

    if-eqz v4, :cond_3

    const-string p1, "PlatformActivity"

    const-string p2, "startHttpJob: job successfully interrupted."

    .line 515
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "PlatformActivity"

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startHttpJob: partial read, expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes, got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-object v1

    :catch_0
    move-exception p1

    const-string p2, "PlatformActivity"

    .line 528
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startHttpJob exception "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PlatformActivity"

    const-string p2, "startHttpJob - http get failed"

    .line 532
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-array p0, p0, [B

    return-object p0
.end method

.method private static waitForConnect(Landroid/content/Context;)V
    .locals 5

    .line 137
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-static {}, Lcom/oculus/systemactivities/PlatformActivity;->isMediaServiceBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "PlatformActivity"

    const-string v2, "Binding to OVRMediaService"

    .line 142
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oculus.horizon"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "PlatformActivity"

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Horizon version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "PlatformActivity"

    const-string v2, "Cannot get Horizon version"

    .line 148
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTING:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    invoke-static {v1}, Lcom/oculus/systemactivities/PlatformActivity;->setMediaServiceConnectionStatus(Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;)V

    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.horizon"

    const-string v4, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    sget-object v2, Lcom/oculus/systemactivities/PlatformActivity;->sMediaServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 158
    invoke-static {}, Lcom/oculus/systemactivities/PlatformActivity;->getMediaServiceConnectionStatus()Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    move-result-object p0

    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTING:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v1, :cond_1

    .line 160
    :try_start_3
    sget-object p0, Lcom/oculus/systemactivities/PlatformActivity;->sLock:Ljava/lang/Object;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_4
    const-string v1, "PlatformActivity"

    const-string v2, "There was an error connecting to the service."

    .line 162
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method


# virtual methods
.method IsWhitelistedCommand(Landroid/content/Intent;)I
    .locals 4

    .line 278
    invoke-static {p1}, Lcom/oculus/vrappframework/VrActivity;->getCommandStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/systemactivities/PlatformActivity;->parseCommandString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "globalMenu"

    .line 287
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const-string v2, "confirmQuit"

    .line 291
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const-string v2, "failMenu"

    .line 295
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    invoke-static {p0}, Lcom/oculus/systemactivities/PlatformActivity;->checkSystemUtilitiesAnytimeUICapability(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/oculus/systemactivities/PlatformActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "oculus.hardware.standalone_vr"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const-string v2, "globalMenuTutorial"

    .line 305
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "globalMenuParty"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "keyboardMenu"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/oculus/systemactivities/PlatformActivity;->transcribeEnabled:Z

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    :goto_1
    return v0
.end method

.method forwardIntent(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "PlatformActivity"

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forwardIntent(), old cname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-static {p1}, Lcom/oculus/vrappframework/VrActivity;->getPackageStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    const-string p1, "intent_data"

    const-string p2, "systemux://dialog/exit"

    .line 325
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    const-string p2, "intent_data"

    const-string v2, "systemux://dialog/system-failure"

    .line 329
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-static {p1}, Lcom/oculus/vrappframework/VrActivity;->getCommandStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "intent_cmd"

    .line 336
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, "intent_data"

    const-string p2, "systemux://settings"

    .line 340
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "intent_pkg"

    .line 342
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Lcom/oculus/systemactivities/PlatformActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "PlatformActivity"

    const-string v1, "onCreate"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-super {p0, p1}, Lcom/oculus/vrappframework/VrActivity;->onCreate(Landroid/os/Bundle;)V

    .line 352
    invoke-virtual {p0}, Lcom/oculus/systemactivities/PlatformActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lcom/oculus/vrappframework/VrActivity;->getCommandStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {p1}, Lcom/oculus/vrappframework/VrActivity;->getPackageStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {p1}, Lcom/oculus/vrappframework/VrActivity;->getUriStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {p0, v1, v0, v2}, Lcom/oculus/systemactivities/PlatformActivity;->nativeSetAppInterface(Lcom/oculus/vrappframework/VrActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 359
    invoke-virtual {p0, v0, v1}, Lcom/oculus/systemactivities/PlatformActivity;->setAppPtr(J)V

    .line 361
    invoke-static {v0, v1}, Lcom/oculus/systemactivities/PlatformActivity;->nativeGetTranscribeEnabled(J)Z

    move-result v0

    sput-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->transcribeEnabled:Z

    .line 362
    invoke-virtual {p0, p1}, Lcom/oculus/systemactivities/PlatformActivity;->IsWhitelistedCommand(Landroid/content/Intent;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0, p1, v0}, Lcom/oculus/systemactivities/PlatformActivity;->forwardIntent(Landroid/content/Intent;I)V

    .line 366
    invoke-virtual {p0}, Lcom/oculus/systemactivities/PlatformActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "PlatformActivity"

    const-string v1, "PlatformActivity::onDestroy()"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-super {p0}, Lcom/oculus/vrappframework/VrActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "PlatformActivity"

    const-string v1, "onNewIntent"

    .line 380
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0, p1}, Lcom/oculus/systemactivities/PlatformActivity;->IsWhitelistedCommand(Landroid/content/Intent;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Lcom/oculus/systemactivities/PlatformActivity;->setIntent(Landroid/content/Intent;)V

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/oculus/systemactivities/PlatformActivity;->forwardIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/vrappframework/VrActivity;->onNewIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 203
    sput-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->isPaused:Z

    .line 204
    invoke-super {p0}, Lcom/oculus/vrappframework/VrActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    sput-boolean v0, Lcom/oculus/systemactivities/PlatformActivity;->isPaused:Z

    .line 198
    invoke-super {p0}, Lcom/oculus/vrappframework/VrActivity;->onResume()V

    return-void
.end method

.method parseCommandString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 247
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance p1, Landroid/util/JsonReader;

    invoke-direct {p1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    .line 253
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Command"

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "PlatformActivity"

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State exception parsing commandString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "PlatformActivity"

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception parsing commandString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method
