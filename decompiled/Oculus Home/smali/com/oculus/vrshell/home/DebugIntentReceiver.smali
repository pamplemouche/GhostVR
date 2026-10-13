.class public Lcom/oculus/vrshell/home/DebugIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugIntentReceiver.java"


# static fields
.field private static final ACTION_CS_OVERRIDE_NAME:Ljava/lang/String; = "com.oculus.vrshell.home.cs_override"

.field private static final ACTION_IPC_NAME:Ljava/lang/String; = "com.oculus.vrshell.home.send_shell_ipc"

.field private static final CS_CS_ACTION_KEY:Ljava/lang/String; = "cs_action"

.field private static final CS_OPERATION_KEY:Ljava/lang/String; = "operation"

.field private static final CS_VALUE_KEY:Ljava/lang/String; = "value"

.field private static final IPC_INTENT_KEY:Ljava/lang/String; = "shell_ipc"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/vrshell/home/DebugIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/vrshell/home/DebugIntentReceiver;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.oculus.vrshell.home.send_shell_ipc"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "com.oculus.vrshell.home.cs_override"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/oculus/vrshell/home/DebugIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    invoke-static {p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->loadOverrides(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/vrshell/home/DebugIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    return-void
.end method

.method protected final native nativeDebugIntentSendShellIPC(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    sget-object v5, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    const-string v6, "DebugIntentReceiver.onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    move-object v1, p1

    .line 47
    .local v1, "ctx":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.oculus.vrshell.home.send_shell_ipc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    const-string v5, "shell_ipc"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "ipcMsg":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 50
    sget-object v5, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    const-string v6, "No message given."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v2    # "ipcMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v2    # "ipcMsg":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending: `"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "`."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0, v2}, Lcom/oculus/vrshell/home/DebugIntentReceiver;->nativeDebugIntentSendShellIPC(Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 55
    .end local v2    # "ipcMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.oculus.vrshell.home.cs_override"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const-string v5, "operation"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "operation":Ljava/lang/String;
    const-string v5, "clear"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    sget-object v5, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Clearing CS overrides."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v1}, Lcom/oculus/modules/CompanionServerModuleImpl;->clearOverrides(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v5, "set"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 61
    const-string v5, "cs_action"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "csAction":Ljava/lang/String;
    const-string v5, "value"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "value":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 64
    sget-object v5, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting CS override: `"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "`="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v1, v0, v5}, Lcom/oculus/modules/CompanionServerModuleImpl;->setOverride(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 67
    :cond_4
    sget-object v5, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    const-string v6, "No action given."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 70
    .end local v0    # "csAction":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    sget-object v5, Lcom/oculus/vrshell/home/DebugIntentReceiver;->TAG:Ljava/lang/String;

    const-string v6, "No valid operation given."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
