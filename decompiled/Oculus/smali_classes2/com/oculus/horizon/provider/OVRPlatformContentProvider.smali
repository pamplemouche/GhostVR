.class public Lcom/oculus/horizon/provider/OVRPlatformContentProvider;
.super Lcom/oculus/content/OculusPublicContentProvider;
.source "OVRPlatformContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/OVRPlatformContentProvider;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/OVRPlatformContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/OVRPlatformContentProvider;)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/content/OculusPublicContentProvider;-><init>()V

    return-void
.end method

.method private getCursorForPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v5

    const-string v2, "permission_status"

    aput-object v2, v0, v4

    invoke-direct {v1, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 73
    if-nez v2, :cond_0

    .line 74
    const-string v0, "granted"

    .line 79
    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 81
    return-object v1

    .line 76
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private isApplicationAllowed(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/oculus/provider/OculusContent$Platform;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    sget-object v0, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported uri"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 47
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->getContext()Landroid/content/Context;

    .line 42
    sget v0, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    sget-object v0, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "User is not signed in"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isApplicationWhitelisted()Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->isCallerSystemActivities()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oculus/horizon/service/SignatureChecker;->isCallerHorizon()Z

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

.method private isCallerSystemActivities()Z
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "com.oculus.systemactivities"

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/OVRPlatformContentProvider;)V

    .line 32
    return-void
.end method

.method public doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->isApplicationAllowed(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    const-string v1, "request"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "microphone_permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string v0, "microphone_status"

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->getCursorForPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    const-string v2, "write_storage_permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v0, "write_storage_status"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->getCursorForPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0
.end method

.method public doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->isApplicationAllowed(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oculus/horizon/provider/OVRPlatformContentProvider;->isApplicationWhitelisted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
