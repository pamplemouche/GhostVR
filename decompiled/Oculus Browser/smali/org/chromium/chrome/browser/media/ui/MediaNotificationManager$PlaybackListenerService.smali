.class public final Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;
.super Lrk0;
.source "PG"


# instance fields
.field public w:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrk0;-><init>()V

    .line 2
    new-instance v0, Luk0;

    invoke-direct {v0, p0}, Luk0;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->w:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic b()I
    .locals 1

    const v0, 0x7f0b025b

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0b025b

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lrk0;->onDestroy()V

    return-void
.end method
