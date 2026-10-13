.class abstract Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;
.super Lcom/facebook/secure/receiver/SecureBroadcastReceiver;
.source "OculusSecureBroadcastReceiverBase.java"


# instance fields
.field private mActionReceiver:Lcom/facebook/secure/receiver/ActionReceiver;

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mIntentFilter:Landroid/content/IntentFilter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mReporter:Lcom/facebook/secure/logger/Reporter;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;)V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusIntentLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusIntentLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    .line 58
    new-instance v0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase$1;

    invoke-direct {v0, p0}, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase$1;-><init>(Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;)V

    iput-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mActionReceiver:Lcom/facebook/secure/receiver/ActionReceiver;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/oculus/security/basecomponent/BLogDebugReporter;

    invoke-direct {v1, v0}, Lcom/oculus/security/basecomponent/BLogDebugReporter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mReporter:Lcom/facebook/secure/logger/Reporter;

    .line 68
    array-length v0, p1

    if-lez v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    .line 70
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 71
    iget-object v3, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method private isActionAllowed(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final endpointObjectFor(Lcom/facebook/secure/receiver/ActionReceiver;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 99
    return-object p0
.end method

.method protected final findReceiverForIntent(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/receiver/ActionReceiver;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mActionReceiver:Lcom/facebook/secure/receiver/ActionReceiver;

    return-object v0
.end method

.method public final getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "intent filter is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getReporter()Lcom/facebook/secure/logger/Reporter;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mReporter:Lcom/facebook/secure/logger/Reporter;

    return-object v0
.end method

.method protected final isActionRemoved(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method protected onBeforeReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->onBeforeReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 153
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    invoke-static {p1, p0}, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;)V

    .line 156
    :cond_1
    return-void
.end method

.method protected abstract onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
.end method

.method public setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    return-void
.end method

.method protected shouldProcessBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    .line 129
    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->isActionAllowed(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->shouldProcessBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    const-string v1, "%s/%s"

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v1, v2, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1, p2}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 134
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v1, "%s/%s"

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v1, v2, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " intent blocked -- action: %s, package %s"

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v2, v3, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method
