.class public Lcom/oculus/systemutilities/DebugIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugIntentReceiver.java"


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "com.oculus.systemutilities.send_shell_ipc"

.field private static final IPC_INTENT_KEY:Ljava/lang/String; = "shell_ipc"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/systemutilities/DebugIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/DebugIntentReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/systemutilities/DebugIntentReceiver;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/oculus/systemutilities/DebugIntentReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.oculus.systemutilities.send_shell_ipc"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/systemutilities/DebugIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    return-void
.end method

.method protected final native nativeDebugIntentSendShellIPC(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    sget-object v2, Lcom/oculus/systemutilities/DebugIntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "DebugIntentReceiver.onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-object v0, p1

    .line 35
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oculus.systemutilities.send_shell_ipc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "shell_ipc"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "ipcMsg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 38
    sget-object v2, Lcom/oculus/systemutilities/DebugIntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "No message given."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v1    # "ipcMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v1    # "ipcMsg":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/oculus/systemutilities/DebugIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending: `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0, v1}, Lcom/oculus/systemutilities/DebugIntentReceiver;->nativeDebugIntentSendShellIPC(Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0
.end method
