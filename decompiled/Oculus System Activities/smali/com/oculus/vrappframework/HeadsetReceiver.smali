.class Lcom/oculus/vrappframework/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HeadsetReceiver"

.field public static filter:Landroid/content/IntentFilter;

.field public static receiver:Lcom/oculus/vrappframework/HeadsetReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getCurrentHeadsetState(Landroid/content/Context;)I
    .locals 1

    const-string v0, "audio"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native headsetStateChanged(I)V
.end method

.method private static startReceiver(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-static {p0}, Lcom/oculus/vrappframework/HeadsetReceiver;->getCurrentHeadsetState(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/oculus/vrappframework/HeadsetReceiver;->headsetStateChanged(I)V

    .line 28
    sget-object v0, Lcom/oculus/vrappframework/HeadsetReceiver;->filter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrappframework/HeadsetReceiver;->filter:Landroid/content/IntentFilter;

    .line 32
    :cond_0
    sget-object v0, Lcom/oculus/vrappframework/HeadsetReceiver;->receiver:Lcom/oculus/vrappframework/HeadsetReceiver;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/oculus/vrappframework/HeadsetReceiver;

    invoke-direct {v0}, Lcom/oculus/vrappframework/HeadsetReceiver;-><init>()V

    sput-object v0, Lcom/oculus/vrappframework/HeadsetReceiver;->receiver:Lcom/oculus/vrappframework/HeadsetReceiver;

    .line 37
    :cond_1
    sget-object v0, Lcom/oculus/vrappframework/HeadsetReceiver;->receiver:Lcom/oculus/vrappframework/HeadsetReceiver;

    sget-object v1, Lcom/oculus/vrappframework/HeadsetReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static stopReceiver(Landroid/content/Context;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/oculus/vrappframework/HeadsetReceiver;->receiver:Lcom/oculus/vrappframework/HeadsetReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "state"

    .line 62
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "state"

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 65
    invoke-static {p1}, Lcom/oculus/vrappframework/HeadsetReceiver;->headsetStateChanged(I)V

    :cond_0
    return-void
.end method
