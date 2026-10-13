.class Lcom/oculus/vrapi/VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeReceiver.java"


# static fields
.field private static STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final TAG:Ljava/lang/String; = "VolumeReceiver"

.field private static VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static filter:Landroid/content/IntentFilter;

.field private static receiver:Lcom/oculus/vrapi/VolumeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static startReceiver(Landroid/content/Context;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/oculus/vrapi/VolumeReceiver;->filter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/VolumeReceiver;->filter:Landroid/content/IntentFilter;

    .line 39
    sget-object v0, Lcom/oculus/vrapi/VolumeReceiver;->filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/oculus/vrapi/VolumeReceiver;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/VolumeReceiver;->receiver:Lcom/oculus/vrapi/VolumeReceiver;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/oculus/vrapi/VolumeReceiver;

    invoke-direct {v0}, Lcom/oculus/vrapi/VolumeReceiver;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/VolumeReceiver;->receiver:Lcom/oculus/vrapi/VolumeReceiver;

    .line 46
    :cond_1
    sget-object v0, Lcom/oculus/vrapi/VolumeReceiver;->receiver:Lcom/oculus/vrapi/VolumeReceiver;

    sget-object v1, Lcom/oculus/vrapi/VolumeReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static stopReceiver(Landroid/content/Context;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/oculus/vrapi/VolumeReceiver;->receiver:Lcom/oculus/vrapi/VolumeReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private static native volumeChanged(I)V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrapi/VolumeReceiver;->STREAM_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/oculus/vrapi/VolumeReceiver;->STREAM_VALUE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 67
    invoke-static {p2}, Lcom/oculus/vrapi/VolumeReceiver;->volumeChanged(I)V

    :cond_0
    return-void
.end method
