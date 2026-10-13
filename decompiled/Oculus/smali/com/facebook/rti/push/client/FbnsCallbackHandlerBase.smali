.class public abstract Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;
.super Landroid/app/IntentService;
.source "FbnsCallbackHandlerBase.java"


# instance fields
.field private mIRtiSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

.field private mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {p0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->getFbErrorReporter()Lcom/facebook/common/errorreporting/FbErrorReporter;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)V
    .locals 0
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 45
    iput-object p3, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mIRtiSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    .line 46
    return-void
.end method

.method public static clearTokenCache(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;-><init>(Landroid/content/Context;)V

    .line 109
    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->TOKEN_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 110
    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->clear()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 112
    return-void
.end method


# virtual methods
.method protected getFbErrorReporter()Lcom/facebook/common/errorreporting/FbErrorReporter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->processIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static {p1}, Lcom/facebook/rti/push/client/FbnsCallbackReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/rti/push/client/FbnsCallbackReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    throw v0
.end method

.method protected abstract onMessage(Landroid/content/Intent;)V
.end method

.method protected abstract onMessageDeleted(I)V
.end method

.method protected abstract onRegistered(Ljava/lang/String;Z)V
.end method

.method protected abstract onRegistrationError(Ljava/lang/String;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->TOKEN_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mIRtiSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected abstract onUnregistered()V
.end method

.method protected processIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "com.facebook.rti.fbns.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "FbnsCallbackHandlerBase"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->verifySender(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "INVALID_SENDER"

    invoke-virtual {p0, v4, v0, v4}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v0, "receive_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mIRtiSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    const-string/jumbo v2, "token_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "extra_notification_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    const-string v0, "FbnsCallbackHandlerBase"

    const-string v1, "Dropping unintended message."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "TOKEN_MISMATCH"

    invoke-virtual {p0, v2, v0, v4}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "FBNS_LITE_NOTIFICATION_RECEIVED"

    invoke-virtual {p0, v2, v0, v4}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->onMessage(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string/jumbo v1, "registered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mIRtiSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    invoke-interface {v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "token_key"

    invoke-interface {v1, v2, v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 93
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->onRegistered(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 95
    :cond_4
    const-string/jumbo v1, "reg_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->onRegistrationError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_5
    const-string v1, "deleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->onMessageDeleted(I)V

    goto/16 :goto_0

    .line 100
    :cond_6
    const-string/jumbo v1, "unregistered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {p0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->onUnregistered()V

    goto/16 :goto_0

    .line 103
    :cond_7
    const-string v0, "FbnsCallbackHandlerBase"

    const-string v1, "Unknown message type"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method
