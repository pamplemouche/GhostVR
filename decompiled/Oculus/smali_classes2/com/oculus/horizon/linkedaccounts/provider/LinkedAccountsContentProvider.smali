.class public Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;
.super Lcom/oculus/content/OculusPublicContentProvider;
.source "LinkedAccountsContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mLinkedAccountsManager:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mLogger:Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;)V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->$ul_$xXXcom_oculus_horizon_linkedaccounts_LinkedAccountsManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsManager:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {p0}, Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;->$ul_$xXXcom_oculus_horizon_linkedaccounts_provider_verifier_LinkedAccountsCallerVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    invoke-static {p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;->$ul_$xXXcom_oculus_horizon_linkedaccounts_provider_LinkedAccountsContentProviderLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLogger:Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/oculus/content/OculusPublicContentProvider;-><init>()V

    return-void
.end method

.method private assertCallerCanRead()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    invoke-virtual {v0}, Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;->canCallerRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Access denied: no read permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method private assertCallerCanWrite()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    invoke-virtual {p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;->canCallerWrite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Access denied: no write permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    return-void
.end method

.method private static assertIsContentURI(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported URI"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method protected doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->assertCallerCanWrite()V

    .line 146
    invoke-static {p1}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->assertIsContentURI(Landroid/net/Uri;)V

    .line 148
    if-eqz p3, :cond_0

    const-class v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    sget-object v1, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->UNKNOWN:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 150
    invoke-static {v0, p3, v1}, Lcom/facebook/common/util/EnumsUtil;->fromStrings(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Enum;)[Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-object v1, v0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsManager:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->deleteLinkedAccountsAsync([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Lbolts/Task;

    move-result-object v0

    .line 156
    :try_start_0
    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 162
    :goto_2
    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLogger:Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;

    invoke-virtual {v2, p0, v1, v0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;->reportDelete(Landroid/content/ContentProvider;[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;I)V

    .line 163
    return v0

    .line 150
    :cond_0
    new-array v0, v2, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-object v1, v0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v3

    .line 158
    sget-object v4, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->TAG:Ljava/lang/String;

    const-string v5, "Interrupted while waiting on delete"

    invoke-static {v4, v3, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method

.method protected doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;)V

    .line 53
    return-void
.end method

.method protected doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->assertCallerCanWrite()V

    .line 115
    invoke-static {p1}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->assertIsContentURI(Landroid/net/Uri;)V

    .line 117
    const-string v0, "user_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "token"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string v2, "service_provider"

    .line 121
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->fromString(Ljava/lang/String;)Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsManager:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    .line 124
    invoke-virtual {v3, v0, v1, v2}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->insertLinkedAccountAsync(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Lbolts/Task;

    move-result-object v0

    .line 127
    :try_start_0
    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    .line 133
    :goto_1
    iget-object v3, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLogger:Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;

    invoke-virtual {v3, p0, v2, v0, v1}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;->reportInsert(Landroid/content/ContentProvider;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;J)V

    .line 134
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    sget-object v3, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->TAG:Ljava/lang/String;

    const-string v4, "Interrupted while waiting on insert"

    invoke-static {v3, v1, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method protected doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-direct {p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->assertCallerCanRead()V

    .line 72
    invoke-static {p1}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->assertIsContentURI(Landroid/net/Uri;)V

    .line 74
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "user_id"

    aput-object v0, v2, v6

    const-string v0, "access_token"

    aput-object v0, v2, v7

    const-string v0, "service_provider"

    aput-object v0, v2, v8

    .line 81
    if-eqz p4, :cond_0

    const-class v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    sget-object v1, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->UNKNOWN:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 83
    invoke-static {v0, p4, v1}, Lcom/facebook/common/util/EnumsUtil;->fromStrings(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Enum;)[Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsManager:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    .line 87
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->queryLinkedAccountsAsync([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Lbolts/Task;

    move-result-object v0

    .line 90
    :try_start_0
    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 97
    :goto_2
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;

    .line 100
    new-array v4, v9, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v0}, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->getUserID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 103
    invoke-virtual {v0}, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 104
    invoke-virtual {v0}, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->getServiceProvider()Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 100
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 83
    :cond_0
    new-array v0, v6, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    sget-object v3, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->TAG:Ljava/lang/String;

    const-string v4, "Interrupted while waiting on query"

    invoke-static {v3, v1, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    goto :goto_2

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLogger:Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;->reportQuery(Landroid/content/ContentProvider;Ljava/util/List;)V

    .line 109
    return-object v3
.end method

.method protected doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final onCheckPermissions()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    .line 58
    invoke-virtual {v0}, Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;->canCallerRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;->canCallerWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProvider;->mLogger:Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;

    invoke-virtual {v1, p0, v0}, Lcom/oculus/horizon/linkedaccounts/provider/LinkedAccountsContentProviderLogger;->reportPermissionCheck(Landroid/content/ContentProvider;Z)V

    .line 61
    return v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
