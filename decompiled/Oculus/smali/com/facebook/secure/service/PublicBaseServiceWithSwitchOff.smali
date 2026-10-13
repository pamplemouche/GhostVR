.class public abstract Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;
.super Landroid/app/Service;
.source "PublicBaseServiceWithSwitchOff.java"


# instance fields
.field private mCalledOnCreate:Z

.field private mCalledOnDestroy:Z

.field private mCalledOnStartCommand:Z

.field private mEndpointName:Ljava/lang/String;

.field private mPermissionChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

.field private final mReporter:Lcom/facebook/secure/logger/Reporter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnCreate:Z

    .line 35
    iput-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnStartCommand:Z

    .line 36
    iput-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnDestroy:Z

    .line 37
    sget-object v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase;->ALWAYS_ALLOW:Lcom/facebook/secure/trustedapp/checker/Checker;

    iput-object v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mPermissionChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    .line 43
    new-instance v0, Lcom/facebook/secure/logger/LocalReporter;

    invoke-direct {v0}, Lcom/facebook/secure/logger/LocalReporter;-><init>()V

    iput-object v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mReporter:Lcom/facebook/secure/logger/Reporter;

    .line 44
    return-void
.end method


# virtual methods
.method protected declared-synchronized addAdditionalPermissionChecker(Lcom/facebook/secure/trustedapp/checker/Checker;)V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mPermissionChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    invoke-interface {v0, p1}, Lcom/facebook/secure/trustedapp/checker/Checker;->and(Lcom/facebook/secure/trustedapp/checker/Checker;)Lcom/facebook/secure/trustedapp/checker/Checker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mPermissionChecker:Lcom/facebook/secure/trustedapp/checker/Checker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doCreate()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 155
    return-void
.end method

.method protected doDestroy()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 170
    return-void
.end method

.method protected doStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public getIntentLogger()Lcom/facebook/secure/logger/IntentLogger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/secure/logger/IntentLoggerHelper;->DO_NOTHING:Lcom/facebook/secure/logger/IntentLogger;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->general()Lcom/facebook/secure/switchoff/IntentSwitchOff;

    move-result-object v1

    invoke-virtual {v1, p0, p0, p1}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->shouldAllowIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->getIntentLogger()Lcom/facebook/secure/logger/IntentLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mEndpointName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/secure/logger/IntentLogger;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->doBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 57
    iget-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnCreate:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "Class %s called onCreate twice. This may be due to calling super.onCreate instead of super.onFbCreate"

    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->onFail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnCreate:Z

    .line 68
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mEndpointName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->doCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-boolean v4, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnCreate:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnCreate:Z

    throw v0
.end method

.method public final onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 134
    iget-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnDestroy:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "Class %s called onDestroy twice. This may be due to calling super.onDestroy instead of super.onFbDestroy"

    new-array v1, v1, [Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->onFail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnDestroy:Z

    .line 145
    invoke-virtual {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->doDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iput-boolean v3, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnDestroy:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnDestroy:Z

    throw v0
.end method

.method protected varargs onFail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 174
    const-string v0, "PublicBaseServiceWithSwitchOff"

    .line 177
    iget-object v1, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mReporter:Lcom/facebook/secure/logger/Reporter;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnStartCommand:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "Class %s called onStartCommand twice. This may be due to calling super.onStartCommand instead of super.onFbStartCommand"

    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->onFail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->general()Lcom/facebook/secure/switchoff/IntentSwitchOff;

    move-result-object v0

    invoke-virtual {v0, p0, p0, p1}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->shouldAllowIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnStartCommand:Z

    .line 125
    invoke-virtual {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->getIntentLogger()Lcom/facebook/secure/logger/IntentLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mEndpointName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/secure/logger/IntentLogger;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->doStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 128
    iput-boolean v3, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnStartCommand:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mCalledOnStartCommand:Z

    throw v0
.end method

.method protected final declared-synchronized shouldAllowIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mPermissionChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    iget-object v1, p0, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->mReporter:Lcom/facebook/secure/logger/Reporter;

    invoke-interface {v0, p0, p0, p1, v1}, Lcom/facebook/secure/trustedapp/checker/Checker;->shouldAllowIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z
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
