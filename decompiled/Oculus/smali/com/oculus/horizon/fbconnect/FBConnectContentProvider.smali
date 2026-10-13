.class public Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;
.super Lcom/oculus/content/OculusPublicContentProvider;
.source "FBConnectContentProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCredentialsManager:Lcom/oculus/auth/credentials/CredentialsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXcom_oculus_auth_credentials_CredentialsManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/credentials/CredentialsManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mCredentialsManager:Lcom/oculus/auth/credentials/CredentialsManager;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p0}, Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;->$ul_$xXXcom_oculus_horizon_linkedaccounts_provider_verifier_LinkedAccountsCallerVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/content/OculusPublicContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    sget-object v1, Lcom/oculus/horizon/fbconnect/contract/FBConnectContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    const-string v2, "Unsupported URI"

    invoke-virtual {v1, p0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderDeleteFailure(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 151
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mCredentialsManager:Lcom/oculus/auth/credentials/CredentialsManager;

    invoke-interface {v1}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    const-string v2, "No credentials"

    invoke-virtual {v1, p0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderDeleteFailure(Landroid/content/ContentProvider;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->clearCurrentFBAccessToken()V

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderDeleteSuccess(Landroid/content/ContentProvider;)V

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;)V

    .line 57
    return-void
.end method

.method public doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    sget-object v1, Lcom/oculus/horizon/fbconnect/contract/FBConnectContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    const-string v2, "Unsupported URI"

    invoke-virtual {v1, p0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderInsertFailure(Landroid/content/ContentProvider;Ljava/lang/String;)V

    move-object p1, v0

    .line 78
    :goto_0
    return-object p1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mCredentialsManager:Lcom/oculus/auth/credentials/CredentialsManager;

    invoke-interface {v1}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    const-string v2, "No credentials"

    invoke-virtual {v1, p0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderInsertFailure(Landroid/content/ContentProvider;Ljava/lang/String;)V

    move-object p1, v0

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v0, "userid"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "accesstoken"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v2, v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setCurrentFBAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderInsertSuccess(Landroid/content/ContentProvider;)V

    goto :goto_0
.end method

.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v5, 0x48

    const/4 v0, 0x0

    .line 86
    sget-object v1, Lcom/oculus/horizon/fbconnect/contract/FBConnectContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    const-string v2, "Unsupported URI"

    invoke-virtual {v1, p0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderQueryFailure(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mCredentialsManager:Lcom/oculus/auth/credentials/CredentialsManager;

    invoke-interface {v1}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    const-string v2, "No credentials"

    invoke-virtual {v1, p0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderQueryFailure(Landroid/content/ContentProvider;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->getCurrentFBAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->getCurrentFBProfile()Lcom/facebook/Profile;

    move-result-object v2

    .line 98
    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    const-string v2, "No access token"

    invoke-virtual {v1, p0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderQueryFailure(Landroid/content/ContentProvider;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const-string/jumbo v0, "userid"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, "accesstoken"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    if-eqz v2, :cond_3

    .line 114
    const-string/jumbo v0, "user_name"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v2}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v0, "profile_picture"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v2, v5, v5}, Lcom/facebook/Profile;->getProfilePictureUri(II)Landroid/net/Uri;

    move-result-object v0

    .line 118
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v0, "With profile"

    move-object v1, v0

    .line 126
    :goto_1
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 127
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderQuerySuccess(Landroid/content/ContentProvider;Ljava/lang/String;)V

    move-object v0, v2

    .line 129
    goto/16 :goto_0

    .line 122
    :cond_3
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 123
    const-string v0, "Without profile"

    move-object v1, v0

    goto :goto_1
.end method

.method public doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final onCheckPermissions()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLinkedAccountsCallerVerifier:Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;

    invoke-virtual {v0}, Lcom/oculus/horizon/linkedaccounts/provider/verifier/LinkedAccountsCallerVerifier;->canCallerRead()Z

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/oculus/horizon/fbconnect/FBConnectContentProvider;->mLogger:Lcom/oculus/horizon/fbconnect/FBConnectLogger;

    invoke-virtual {v1, p0, v0}, Lcom/oculus/horizon/fbconnect/FBConnectLogger;->reportProviderPermissionCheck(Landroid/content/ContentProvider;Z)V

    .line 51
    return v0
.end method
