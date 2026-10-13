.class Lcom/oculus/vrapi/ScreenCaptureHelper;
.super Ljava/lang/Object;
.source "ScreenCaptureHelper.java"


# static fields
.field private static final CAMERA_SHUTTER_AUDIO_FILE:Ljava/lang/String; = "file:///system/media/audio/ui/camera_click.ogg"

.field private static final TAG:Ljava/lang/String; = "ScreenCaptureHelper"

.field private static shootMP:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PlayShutterSound(Landroid/content/Context;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/oculus/vrapi/ScreenCaptureHelper;->shootMP:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string v0, "file:///system/media/audio/ui/camera_click.ogg"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p0

    sput-object p0, Lcom/oculus/vrapi/ScreenCaptureHelper;->shootMP:Landroid/media/MediaPlayer;

    .line 34
    :cond_0
    sget-object p0, Lcom/oculus/vrapi/ScreenCaptureHelper;->shootMP:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_1

    .line 36
    sget-object p0, Lcom/oculus/vrapi/ScreenCaptureHelper;->shootMP:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method public static advertiseStreamablePackage(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 51
    invoke-static {}, Lcom/oculus/vrapi/ScreenCaptureHelper;->getMediaServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_type"

    const-string v2, "set_package_name"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "ScreenCaptureHelper"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advertising "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as streamable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getMediaServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method
