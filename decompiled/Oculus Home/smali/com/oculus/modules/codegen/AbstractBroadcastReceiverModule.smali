.class public abstract Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;
.super Landroid/content/BroadcastReceiver;
.source "AbstractBroadcastReceiverModule.java"

# interfaces
.implements Lcom/oculus/modules/codegen/EarlyDestroyable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegisteredRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    .line 29
    iput-object p1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    .line 30
    iget-object v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;

    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;

    .line 32
    .local v0, "destroyer":Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;
    invoke-interface {v0, p0}, Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;->registerModuleForEarlyDestroy(Lcom/oculus/modules/codegen/EarlyDestroyable;)V

    .line 34
    .end local v0    # "destroyer":Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;
    :cond_0
    return-void
.end method

.method protected static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "startReceiver"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Landroid/util/Pair;

    const-string v2, "stopReceiver"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method private tryHandleIntent(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot process null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->processIntent(Landroid/content/Intent;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method protected abstract getModuleName()Ljava/lang/String;
.end method

.method protected onNoStickyIntent()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->tryHandleIntent(Landroid/content/Intent;Z)V

    .line 105
    return-void
.end method

.method protected onStartReceiver()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected abstract processIntent(Landroid/content/Intent;Z)V
.end method

.method public shutdownModule()V
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    if-lez v0, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    .line 50
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final startReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    .line 66
    iget v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    if-ne v1, v4, :cond_0

    .line 67
    iget-object v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->onStartReceiver()V

    .line 73
    iget-object v1, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "stickyIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0, v0, v4}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->tryHandleIntent(Landroid/content/Intent;Z)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->onNoStickyIntent()V

    goto :goto_0
.end method

.method public final stopReceiver()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot call stopReceiver() without a matching startReceiver()"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    .line 94
    iget v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mRegisteredRefCount:I

    if-nez v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method
