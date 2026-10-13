.class Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShellRelaunchIntentReceiver.java"


# static fields
.field private static final EXTRA_WRAPPED_INTENT:Ljava/lang/String; = "wrappedIntent"

.field private static final INTENT_PING_PONG_RELAUNCH:Ljava/lang/String; = "com.oculus.intent.action.PING_PONG_RELAUNCH"

.field private static final TAG:Ljava/lang/String; = "ShellRelaunchIntentReceiver"

.field private static cachedContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static receiver:Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static startReceiver(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ShellRelaunchIntentReceiver"

    const-string v1, "startReceiver"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->stopReceiver()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->cachedContext:Ljava/lang/ref/WeakReference;

    .line 71
    invoke-static {}, Lcom/oculus/vrapi/TrustedSignatureVerifier;->GenerateSignatureMap()V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oculus.intent.action.PING_PONG_RELAUNCH"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;

    invoke-direct {v1}, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;-><init>()V

    sput-object v1, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->receiver:Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;

    .line 77
    sget-object v1, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->receiver:Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static stopReceiver()V
    .locals 3

    const-string v0, "ShellRelaunchIntentReceiver"

    const-string v1, "stopReceiver"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->cachedContext:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->cachedContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 84
    :goto_0
    sget-object v2, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->receiver:Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 85
    sget-object v2, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->receiver:Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    :cond_1
    sput-object v1, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->receiver:Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;

    .line 88
    sput-object v1, Lcom/oculus/vrapi/ShellRelaunchIntentReceiver;->cachedContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "_ci_"

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "_ci_"

    .line 34
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    const-string p1, "ShellRelaunchIntentReceiver"

    const-string p2, "PendingIntent is null"

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.vrshell"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-static {p1, v0}, Lcom/oculus/vrapi/TrustedSignatureVerifier;->isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "wrappedIntent"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    if-eqz p2, :cond_3

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p1, "ShellRelaunchIntentReceiver"

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent sent from untrustworthy app - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
