.class abstract Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;
.super Lcom/oculus/content/OculusFbPermissionsContentProvider;
.source "OculusLoggedInUserFbPermissionsContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCredentialsProvider:Ljavax/inject/Provider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

.field private mUnlockulusHelper:Lcom/oculus/unlockulus_helper/UnlockulusHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mWhitelistedPackages:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/unlockulus_helper/inject/UnlockulusModule;->$ul_$xXXcom_oculus_unlockulus$x5Fhelper_UnlockulusHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mUnlockulusHelper:Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;-><init>()V

    return-void
.end method

.method private getAppSignatures(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 86
    sget-boolean v1, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mUnlockulusHelper:Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    .line 88
    invoke-virtual {v1, p1}, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->isEmployeeWithWhitelistedDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    :cond_1
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FBANDROID_SIGNATURE_HASH_DEBUG:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 92
    :cond_2
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_APPS_SIGNATURE_HASH_RELEASE:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doInitialization()V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->getWhitelistedPackages()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mWhitelistedPackages:Lcom/google/common/collect/ImmutableSet;

    .line 42
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->getAppSignatures(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mWhitelistedPackages:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v0, v1}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedApp(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/secure/trustedapp/TrustedApp;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    .line 43
    return-void
.end method

.method protected final getLoggedInUserId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "User is not signed in"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getWhitelistedPackages()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected final onCheckPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    iget-object v2, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 48
    sget-object v1, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "User is not signed in"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-super {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->onCheckPermissions()Z

    move-result v2

    .line 53
    if-eqz v2, :cond_2

    move v0, v1

    .line 54
    goto :goto_0

    .line 58
    :cond_2
    invoke-super {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->onCheckPermissions()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCallerAppIdentityTrusted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected final onCheckReadOnlyPermissions()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 64
    sget-object v1, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "User is not signed in"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-super {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->onCheckReadOnlyPermissions()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCallerAppIdentityTrusted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
