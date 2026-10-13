.class public Lcom/oculus/auth/service/AuthService2;
.super Landroid/app/Service;
.source "AuthService2.java"


# instance fields
.field private mAuthManager:Lcom/oculus/auth/service/AuthManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mBinder:Lcom/oculus/aidl/IAuthService2$Stub;

.field private final mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

.field private mTrustedAppVerified:Lcom/oculus/auth/service/AuthTrustedAppVerifier;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mTrustedCallerVerifier:Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/service/AuthService2;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/auth/service/AuthService2;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/service/AuthService2;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/auth/service/AuthService2;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/service/AuthService2;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/auth/service/AuthManager;->$ul_$xXXcom_oculus_auth_service_AuthManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/service/AuthManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/auth/service/AuthService2;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-static {p0}, Lcom/oculus/auth/service/AuthTrustedAppVerifier;->$ul_$xXXcom_oculus_auth_service_AuthTrustedAppVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/service/AuthTrustedAppVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/auth/service/AuthService2;->mTrustedAppVerified:Lcom/oculus/auth/service/AuthTrustedAppVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/oculus/auth/service/AuthService2$1;

    invoke-direct {v0, p0}, Lcom/oculus/auth/service/AuthService2$1;-><init>(Lcom/oculus/auth/service/AuthService2;)V

    iput-object v0, p0, Lcom/oculus/auth/service/AuthService2;->mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

    .line 122
    new-instance v0, Lcom/oculus/auth/service/AuthService2$2;

    invoke-direct {v0, p0}, Lcom/oculus/auth/service/AuthService2$2;-><init>(Lcom/oculus/auth/service/AuthService2;)V

    iput-object v0, p0, Lcom/oculus/auth/service/AuthService2;->mBinder:Lcom/oculus/aidl/IAuthService2$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/auth/service/AuthService2;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/auth/service/AuthService2;->isCallerAppTrusted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/auth/service/AuthService2;)Lcom/oculus/auth/service/AuthManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService2;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    return-object v0
.end method

.method private isCallerAppTrusted()Z
    .locals 2

    .prologue
    .line 86
    invoke-static {p0}, Lcom/facebook/secure/trustedapp/TrustedApp;->getCallerAppIdentity(Landroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/oculus/auth/service/AuthService2;->mTrustedAppVerified:Lcom/oculus/auth/service/AuthTrustedAppVerifier;

    invoke-virtual {v1, v0}, Lcom/oculus/auth/service/AuthTrustedAppVerifier;->isTrusted(Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-direct {p0, p0, v0}, Lcom/oculus/auth/service/AuthService2;->isFbPermissionGranted(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/auth/service/AuthService2;->mTrustedCallerVerifier:Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;

    .line 89
    invoke-virtual {v0}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->enforceTrustedCaller()Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFbPermissionGranted(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p2}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 98
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-static {p1, v0}, Lcom/facebook/secure/trustedapp/FbPermission;->isAppFbPermissionSigned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/oculus/auth/service/AuthService2;->mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

    .line 102
    invoke-static {v3}, Lcom/facebook/secure/trustedapp/FbPermission;->get(Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/trustedapp/FbPermission;

    move-result-object v3

    const-string v4, "com.oculus.horizon.fbpermission.AUTHSERVICE2"

    .line 103
    invoke-virtual {v3, p1, v0, v4, v1}, Lcom/facebook/secure/trustedapp/FbPermission;->checkFbPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/oculus/auth/service/AuthService2;->mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "App %s is not FbPermission signed"

    .line 110
    invoke-static {v4, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-interface {v3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 113
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService2;->mBinder:Lcom/oculus/aidl/IAuthService2$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    invoke-static {p0, p0}, Lcom/oculus/auth/service/AuthService2;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/service/AuthService2;)V

    .line 60
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->OCULUS_PROD_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.ocms"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->OCULUS_PRIV_APPS_RELEASE_SIG:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.appsafety"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->GO_PLATFORM_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.bugreporter"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->QUEST_PLATFORM_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.bugreporter"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    sget-boolean v1, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->FBANDROID_FIRST_PARTY_DEBUG_SIG:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.ocms"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->FBANDROID_FIRST_PARTY_DEBUG_SIG:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.appsafety"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->STANDALONE_PLATFORM_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.bugreporter"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/oculus/signature/SignatureHelper;->STANDALONE_PLATFORM_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    const-string v2, "com.oculus.assistant"

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    :cond_0
    new-instance v1, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;

    invoke-virtual {p0}, Lcom/oculus/auth/service/AuthService2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;-><init>(Lcom/google/common/collect/Multimap;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/oculus/auth/service/AuthService2;->mTrustedCallerVerifier:Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;

    .line 83
    return-void
.end method
