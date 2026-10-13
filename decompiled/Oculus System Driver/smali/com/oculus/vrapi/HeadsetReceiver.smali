.class Lcom/oculus/vrapi/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HeadsetReceiver"

.field public static filter:Landroid/content/IntentFilter;

.field public static receiver:Lcom/oculus/vrapi/HeadsetReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getCurrentHeadsetState(Landroid/content/Context;)I
    .locals 3

    const-string v0, "audio"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "HeadsetReceiver"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentHeadsetState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static startReceiver(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-static {p0}, Lcom/oculus/vrapi/HeadsetReceiver;->getCurrentHeadsetState(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/oculus/vrapi/HeadsetReceiver;->stateChanged(I)V

    .line 27
    sget-object v0, Lcom/oculus/vrapi/HeadsetReceiver;->filter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrapi/HeadsetReceiver;->filter:Landroid/content/IntentFilter;

    .line 31
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/HeadsetReceiver;->receiver:Lcom/oculus/vrapi/HeadsetReceiver;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Lcom/oculus/vrapi/HeadsetReceiver;

    invoke-direct {v0}, Lcom/oculus/vrapi/HeadsetReceiver;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/HeadsetReceiver;->receiver:Lcom/oculus/vrapi/HeadsetReceiver;

    .line 36
    :cond_1
    sget-object v0, Lcom/oculus/vrapi/HeadsetReceiver;->receiver:Lcom/oculus/vrapi/HeadsetReceiver;

    sget-object v1, Lcom/oculus/vrapi/HeadsetReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static native stateChanged(I)V
.end method

.method private static stopReceiver(Landroid/content/Context;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/oculus/vrapi/HeadsetReceiver;->receiver:Lcom/oculus/vrapi/HeadsetReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "state"

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "state"

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 64
    invoke-static {p1}, Lcom/oculus/vrapi/HeadsetReceiver;->stateChanged(I)V

    :cond_0
    return-void
.end method
