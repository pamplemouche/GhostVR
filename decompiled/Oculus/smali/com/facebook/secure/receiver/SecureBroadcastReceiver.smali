.class public abstract Lcom/facebook/secure/receiver/SecureBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecureBroadcastReceiver.java"

# interfaces
.implements Lcom/facebook/secure/receiver/BroadcastReceiverLike;


# instance fields
.field private mChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

.field private mScope:Lcom/facebook/secure/intent/IntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    sget-object v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase;->ALWAYS_ALLOW:Lcom/facebook/secure/trustedapp/checker/Checker;

    iput-object v0, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    return-void
.end method

.method protected static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected declared-synchronized addAdditionalPermissionChecker(Lcom/facebook/secure/trustedapp/checker/Checker;)V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    invoke-interface {v0, p1}, Lcom/facebook/secure/trustedapp/checker/Checker;->and(Lcom/facebook/secure/trustedapp/checker/Checker;)Lcom/facebook/secure/trustedapp/checker/Checker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mChecker:Lcom/facebook/secure/trustedapp/checker/Checker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected endpointObjectFor(Lcom/facebook/secure/receiver/ActionReceiver;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 153
    return-object p1
.end method

.method protected abstract findReceiverForIntent(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/receiver/ActionReceiver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method public getIntentScope()Lcom/facebook/secure/intent/IntentScope;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mScope:Lcom/facebook/secure/intent/IntentScope;

    return-object v0
.end method

.method public getReporter()Lcom/facebook/secure/logger/Reporter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "SecureBroadcastReceiver"

    return-object v0
.end method

.method protected handleMissingReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejected the intent for the receiver because it was not registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method protected abstract isActionRemoved(Ljava/lang/String;)Z
.end method

.method protected onBeforeReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->onBeforeReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->findReceiverForIntent(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/receiver/ActionReceiver;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p0, v1}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->endpointObjectFor(Lcom/facebook/secure/receiver/ActionReceiver;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->general()Lcom/facebook/secure/switchoff/IntentSwitchOff;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->shouldAllowIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->shouldProcessBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v1, p1, p2, p0}, Lcom/facebook/secure/receiver/ActionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, v0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->isActionRemoved(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->handleMissingReceiver(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntentScope(Lcom/facebook/secure/intent/IntentScope;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mScope:Lcom/facebook/secure/intent/IntentScope;

    .line 93
    return-void
.end method

.method protected final declared-synchronized shouldAllowIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    invoke-virtual {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getReporter()Lcom/facebook/secure/logger/Reporter;

    move-result-object v1

    invoke-interface {v0, p1, p0, p2, v1}, Lcom/facebook/secure/trustedapp/checker/Checker;->shouldAllowIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected shouldProcessBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-object v1, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mScope:Lcom/facebook/secure/intent/IntentScope;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->mScope:Lcom/facebook/secure/intent/IntentScope;

    invoke-interface {v1, p2, p1}, Lcom/facebook/secure/intent/IntentScope;->enforceReceiverIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
