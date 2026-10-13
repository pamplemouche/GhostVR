.class public Lo41;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "device"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 2
    iget-object v0, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v0, p1}, Lorg/chromium/media/AudioManagerAndroid;->a(Lorg/chromium/media/AudioManagerAndroid;Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 5
    iget-object p1, p1, Lorg/chromium/media/AudioManagerAndroid;->j:Ljava/lang/Object;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p2, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 8
    iget-object p2, p2, Lorg/chromium/media/AudioManagerAndroid;->a:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 10
    iget-object p2, p2, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 11
    aput-boolean v2, p2, v3

    .line 12
    iget-object p2, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 13
    iget-object p2, p2, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 14
    aput-boolean v1, p2, v0

    .line 15
    :cond_1
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 16
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 17
    invoke-virtual {p1}, Lorg/chromium/media/AudioManagerAndroid;->b()Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 19
    iget-object p1, p1, Lorg/chromium/media/AudioManagerAndroid;->j:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 21
    :try_start_1
    iget-object p2, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 22
    iget-object p2, p2, Lorg/chromium/media/AudioManagerAndroid;->a:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p2

    if-nez p2, :cond_4

    .line 23
    iget-object p2, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 24
    iget-object p2, p2, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 25
    aput-boolean v1, p2, v3

    .line 26
    iget-object p2, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    if-eqz p2, :cond_3

    .line 27
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v1, "android.hardware.telephony"

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 29
    iget-object p2, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 30
    iget-object p2, p2, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 31
    aput-boolean v2, p2, v0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 32
    throw p2

    .line 33
    :cond_4
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 34
    :cond_5
    :goto_1
    iget-object p1, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 35
    invoke-virtual {p1}, Lorg/chromium/media/AudioManagerAndroid;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 36
    iget-object p1, p0, Lo41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 37
    invoke-virtual {p1}, Lorg/chromium/media/AudioManagerAndroid;->e()V

    :cond_6
    return-void
.end method
