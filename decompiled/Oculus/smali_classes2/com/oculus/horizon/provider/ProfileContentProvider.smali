.class public Lcom/oculus/horizon/provider/ProfileContentProvider;
.super Lcom/oculus/content/OculusPublicReadContentProvider;
.source "ProfileContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mCredentialsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsTrustedUser:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_is_trusted_user"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/ProfileContentProvider;)V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/ProfileContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/provider/ProfileContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/ProfileContentProvider;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/ProfileContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/ProfileContentProvider;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/config/trusted_user/TrustedUserModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fis$x5Ftrusted$x5Fuser$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/ProfileContentProvider;->mIsTrustedUser:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/oculus/horizon/provider/ProfileContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/ProfileContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/content/OculusPublicReadContentProvider;-><init>()V

    return-void
.end method

.method private getAppScopedUserID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 417
    sget-object v0, Lcom/oculus/horizon/service/ExternalPlatformLocal;->sWhitelistedAppPackageNameToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    .line 421
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 422
    if-eqz p2, :cond_1

    .line 423
    const-string v0, "app_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    sget v0, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {v1, p1, v0}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Landroid/os/Bundle;Ljava/lang/String;Lcom/oculus/libraryapi/OVRLibrary;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 433
    const/4 v0, 0x0

    :try_start_0
    sget v4, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getAppInternalById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 434
    if-nez v0, :cond_2

    .line 435
    new-instance v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 437
    :cond_2
    :try_start_1
    iget-object v0, v0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method private isTrustedUser(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->mIsTrustedUser:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/oculus/unlockulus_helper/inject/UnlockulusModule$UL_id;->$ul_$xXXcom_oculus_unlockulus$x5Fhelper_UnlockulusHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->isEmployeeWithWhitelistedDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/oculus/content/OculusPublicReadContentProvider;->doInitialization()V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/ProfileContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/ProfileContentProvider;)V

    .line 59
    return-void
.end method

.method protected doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/oculus/horizon/provider/ProfileContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "doQuery"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_0
    sget-object v1, Lcom/oculus/horizon/provider/ProfileContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Uri is not valid: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x0

    .line 236
    :goto_1
    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    .line 95
    if-nez v0, :cond_3

    .line 96
    sget-object v0, Lcom/oculus/horizon/provider/ProfileContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "Credentials is null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    goto :goto_1

    .line 100
    :cond_3
    const/4 v1, 0x3

    sget v2, Lcom/oculus/horizon/releasemanagement/ReleasemanagementModule$UL_id;->$ul_$xXXcom_oculus_horizon_releasemanagement_RolloutTokenManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;->getReleaseToken()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 103
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/ProfileContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 108
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 110
    :try_start_0
    const-string v7, "app_id"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-static {v5}, Lcom/oculus/content/PermissionChecks;->callingAppHasSystemPlatformSDKPermission(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 113
    invoke-static {v5, v6}, Lcom/oculus/signature/SignatureHelper;->verifyProductionFirstPartyApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 115
    invoke-direct {p0, v5}, Lcom/oculus/horizon/provider/ProfileContentProvider;->isTrustedUser(Landroid/content/Context;)Z

    move-result v8

    .line 114
    invoke-static {v5, v6, v8}, Lcom/oculus/signature/SignatureHelper;->verifyDebugFirstPartyApplication(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 117
    :cond_4
    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 126
    :goto_3
    const-string v0, "id"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v0, 0x2

    sget v5, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v6, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v5, v6}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v5, "username"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    if-nez v1, :cond_7

    .line 135
    const/4 v1, 0x0

    .line 141
    :cond_5
    :goto_4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v0, "default_browser"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 145
    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getDefaultBrowser()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 146
    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getDefaultBrowser()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v0, "locale"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v0, "image_url"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getProfilePictureUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v0, "has_finished_nux"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasFinishedNux()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v0, "has_seen_confirm_quit"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenConfirmQuit()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v0, "has_seen_confirm_quit_notif"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenConfirmQuitNotif()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v0, "has_seen_focus"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v0, "has_seen_internet_browser_prompt"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenInternetBrowserPrompt()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v0, "has_seen_nux"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenNux()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v0, "has_seen_tutorial_prompt"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenTutorialPrompt()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v0, "has_seen_party_calls_nux"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenPartyCallsNUX()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v0, "has_seen_saved_prompt"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenSavedPrompt()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v0, "has_seen_long_hsw"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenLongHSW()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v0, "has_opted_out_hsw"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v0, "has_opted_out_of_malibu_recenter"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutOfMalibuRecenter()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v0, "high_priority_apps_download_status"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHighPriorityAppsDownloadStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v0, "high_priority_apps_download_waittime"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHighPriorityAppsDownloadWaitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v0, "high_priority_apps_pkgs"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHighPriorityAppsDownloadPackages()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v0, "has_docked"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasDocked()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v0, "nux_result"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 205
    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getNuxResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 206
    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getNuxResult()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_13
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v0, "nux_seen_count"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getNuxSeenCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v0, "nux_state"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 214
    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getNuxState()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 215
    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getNuxState()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_14
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v0, "has_finished_ipd_adjust"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasFinishedIPDAdjust()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v0, "has_finished_monterey_nux"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasFinishedMontereyNux()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v0, "rollout_token"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    if-eqz v2, :cond_1a

    move-object v0, v2

    :goto_17
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v0, "is_logged_in"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v0, "auto_updates_enabled"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->useAutoUpdates()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 234
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v1

    .line 236
    goto/16 :goto_1

    .line 120
    :cond_6
    :try_start_1
    invoke-direct {p0, v6, v7}, Lcom/oculus/horizon/provider/ProfileContentProvider;->getAppScopedUserID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    :goto_1a
    sget-object v0, Lcom/oculus/horizon/provider/ProfileContentProvider;->TAG:Ljava/lang/String;

    const-string v5, "Package %s not found in library. Not sending scoped user id"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v0, v5, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 136
    :cond_7
    if-eqz v0, :cond_5

    move-object v1, v0

    goto/16 :goto_4

    .line 146
    :cond_8
    const-string v0, "carmel"

    goto/16 :goto_5

    .line 156
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 159
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 162
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 165
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 168
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 171
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 174
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 177
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 180
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 183
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 186
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 189
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 201
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_12

    .line 206
    :cond_16
    const-string v0, "incomplete"

    goto/16 :goto_13

    .line 215
    :cond_17
    const-string v0, "demoreel"

    goto/16 :goto_14

    .line 219
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 222
    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_16

    .line 225
    :cond_1a
    const-string v0, "null"

    goto/16 :goto_17

    .line 228
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 231
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19

    .line 122
    :catch_1
    move-exception v0

    goto :goto_1a
.end method

.method protected doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v2

    .line 264
    :cond_1
    const/4 v0, 0x2

    sget v3, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v3

    .line 267
    const-string v0, "default_browser"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    const-string v0, "default_browser"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setDefaultBrowser(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 272
    :goto_1
    const-string v4, "has_finished_nux"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    const-string v0, "has_finished_nux"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasFinishedNux(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 277
    :cond_2
    const-string v4, "has_seen_confirm_quit"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    const-string v0, "has_seen_confirm_quit"

    .line 279
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 278
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenConfirmQuit(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 283
    :cond_3
    const-string v4, "has_seen_confirm_quit_notif"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 284
    const-string v0, "has_seen_confirm_quit_notif"

    .line 285
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 284
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenConfirmQuitNotif(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 289
    :cond_4
    const-string v4, "has_seen_focus"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 290
    const-string v0, "has_seen_focus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenFocus(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 294
    :cond_5
    const-string v4, "has_seen_internet_browser_prompt"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 295
    const-string v0, "has_seen_internet_browser_prompt"

    .line 296
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 295
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenInternetBrowserPrompt(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 300
    :cond_6
    const-string v4, "has_seen_nux"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 301
    const-string v0, "has_seen_nux"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenNux(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 305
    :cond_7
    const-string v4, "nux_seen_count"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 306
    const-string v0, "nux_seen_count"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setNuxSeenCount(I)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 310
    :cond_8
    const-string v4, "has_seen_saved_prompt"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 311
    const-string v0, "has_seen_saved_prompt"

    .line 312
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 311
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenSavedPrompt(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 316
    :cond_9
    const-string v4, "has_seen_long_hsw"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 317
    const-string v0, "has_seen_long_hsw"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenLongHSW(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 321
    :cond_a
    const-string v4, "has_opted_out_hsw"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 322
    const-string v0, "has_opted_out_hsw"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasOptedOutHSW(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 326
    :cond_b
    const-string v4, "has_seen_tutorial_prompt"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 327
    const-string v0, "has_seen_tutorial_prompt"

    .line 328
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 327
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenTutorialPrompt(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 332
    :cond_c
    const-string v4, "has_seen_party_calls_nux"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 333
    const-string v0, "has_seen_party_calls_nux"

    .line 334
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 333
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenPartyCallsNUX(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 338
    :cond_d
    const-string v4, "has_docked"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 339
    const-string v0, "has_docked"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasDocked(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 343
    :cond_e
    const-string v4, "has_opted_out_of_malibu_recenter"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 344
    const-string v0, "has_opted_out_of_malibu_recenter"

    .line 345
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 344
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasOptedOutOfMalibuRecenter(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 349
    :cond_f
    const-string v4, "high_priority_apps_download_status"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 350
    const-string v0, "high_priority_apps_download_status"

    .line 351
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 350
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHighPriorityAppsDownloadStatus(I)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 355
    :cond_10
    const-string v4, "high_priority_apps_download_waittime"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 356
    const-string v0, "high_priority_apps_download_waittime"

    .line 357
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 356
    invoke-virtual {v3, v4, v5}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHighPriorityAppsDownloadWaitTime(J)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 361
    :cond_11
    const-string v4, "high_priority_apps_pkgs"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 362
    const-string v0, "high_priority_apps_pkgs"

    .line 363
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHighPriorityAppsDownloadPackages(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 367
    :cond_12
    const-string v4, "nux_result"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 368
    const-string v0, "nux_result"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setNuxResult(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 372
    :cond_13
    const-string v4, "nux_state"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 373
    const-string v0, "nux_state"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setNuxState(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 377
    :cond_14
    const-string v4, "has_finished_ipd_adjust"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 378
    const-string v0, "has_finished_ipd_adjust"

    .line 379
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 378
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasFinishedIPDAdjust(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move v0, v1

    .line 383
    :cond_15
    const-string v4, "has_finished_monterey_nux"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 384
    const-string v0, "has_finished_monterey_nux"

    .line 385
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 384
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasFinishedMontereyNux(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    .line 389
    :goto_2
    if-eqz v1, :cond_0

    .line 390
    new-instance v0, Lcom/oculus/horizon/provider/ProfileContentProvider$1;

    invoke-direct {v0, p0, v3, p2}, Lcom/oculus/horizon/provider/ProfileContentProvider$1;-><init>(Lcom/oculus/horizon/provider/ProfileContentProvider;Lcom/oculus/horizon/profile/UserProfileHelper$Editor;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto/16 :goto_0

    :cond_16
    move v1, v0

    goto :goto_2

    :cond_17
    move v0, v2

    goto/16 :goto_1
.end method

.method protected getFbPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "com.oculus.horizon.fbpermission.PROFILE_WRITE_CONTENT_PROVIDER"

    return-object v0
.end method

.method protected notifyPreferenceChange(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    invoke-static {v0}, Lcom/oculus/provider/OculusContent$Profile;->getUriFromNuxPref(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/ProfileContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method protected final onCheckPermissions()Z
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/oculus/content/OculusPublicReadContentProvider;->onCheckPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/oculus/horizon/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_horizon_provider_ProfileProviderTrustedApps$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/provider/ProfileProviderTrustedApps;

    invoke-virtual {p0}, Lcom/oculus/horizon/provider/ProfileContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/provider/ProfileProviderTrustedApps;->isTrusted(Landroid/content/Context;)Z

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

.method protected final onCheckReadOnlyPermissions()Z
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/oculus/content/OculusPublicReadContentProvider;->onCheckReadOnlyPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/oculus/horizon/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_horizon_provider_ProfileProviderTrustedApps$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/provider/ProfileContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/provider/ProfileProviderTrustedApps;

    invoke-virtual {p0}, Lcom/oculus/horizon/provider/ProfileContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/provider/ProfileProviderTrustedApps;->isTrusted(Landroid/content/Context;)Z

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
