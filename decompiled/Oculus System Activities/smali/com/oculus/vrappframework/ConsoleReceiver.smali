.class public Lcom/oculus/vrappframework/ConsoleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConsoleReceiver.java"


# static fields
.field public static CONSOLE_INTENT:Ljava/lang/String; = "oculus.console"

.field public static CONSOLE_STRING_EXTRA:Ljava/lang/String; = "cmd"

.field public static final TAG:Ljava/lang/String; = "OvrConsole"

.field static activity:Landroid/app/Activity;

.field static receiver:Lcom/oculus/vrappframework/ConsoleReceiver;

.field static registeredReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/oculus/vrappframework/ConsoleReceiver;

    invoke-direct {v0}, Lcom/oculus/vrappframework/ConsoleReceiver;-><init>()V

    sput-object v0, Lcom/oculus/vrappframework/ConsoleReceiver;->receiver:Lcom/oculus/vrappframework/ConsoleReceiver;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/oculus/vrappframework/ConsoleReceiver;->registeredReceiver:Z

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/oculus/vrappframework/ConsoleReceiver;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static native nativeConsoleCommand(JLjava/lang/String;)V
.end method

.method public static startReceiver(Landroid/app/Activity;)V
    .locals 2

    .line 42
    sput-object p0, Lcom/oculus/vrappframework/ConsoleReceiver;->activity:Landroid/app/Activity;

    .line 43
    sget-boolean v0, Lcom/oculus/vrappframework/ConsoleReceiver;->registeredReceiver:Z

    if-nez v0, :cond_0

    const-string v0, "OvrConsole"

    const-string v1, "!!#######!! Registering console receiver"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    sget-object v1, Lcom/oculus/vrappframework/ConsoleReceiver;->CONSOLE_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/oculus/vrappframework/ConsoleReceiver;->receiver:Lcom/oculus/vrappframework/ConsoleReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 50
    sput-boolean p0, Lcom/oculus/vrappframework/ConsoleReceiver;->registeredReceiver:Z

    goto :goto_0

    :cond_0
    const-string p0, "OvrConsole"

    const-string v0, "!!!!!!!!!!! Already registered console receiver!"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static stopReceiver(Landroid/app/Activity;)V
    .locals 2

    .line 59
    sget-boolean v0, Lcom/oculus/vrappframework/ConsoleReceiver;->registeredReceiver:Z

    if-eqz v0, :cond_0

    const-string v0, "OvrConsole"

    const-string v1, "Unregistering console receiver"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/oculus/vrappframework/ConsoleReceiver;->receiver:Lcom/oculus/vrappframework/ConsoleReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 63
    sput-boolean p0, Lcom/oculus/vrappframework/ConsoleReceiver;->registeredReceiver:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "OvrConsole"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@#!@ConsoleReceiver action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrappframework/ConsoleReceiver;->CONSOLE_INTENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    sget-object p1, Lcom/oculus/vrappframework/ConsoleReceiver;->CONSOLE_STRING_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 77
    sget-object p2, Lcom/oculus/vrappframework/ConsoleReceiver;->activity:Landroid/app/Activity;

    instance-of p2, p2, Lcom/oculus/vrappframework/VrActivity;

    if-eqz p2, :cond_0

    .line 79
    sget-object p2, Lcom/oculus/vrappframework/ConsoleReceiver;->activity:Landroid/app/Activity;

    check-cast p2, Lcom/oculus/vrappframework/VrActivity;

    invoke-virtual {p2}, Lcom/oculus/vrappframework/VrActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/oculus/vrappframework/ConsoleReceiver;->nativeConsoleCommand(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 83
    invoke-static {v0, v1, p1}, Lcom/oculus/vrappframework/ConsoleReceiver;->nativeConsoleCommand(JLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
