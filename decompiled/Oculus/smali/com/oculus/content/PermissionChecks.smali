.class public Lcom/oculus/content/PermissionChecks;
.super Ljava/lang/Object;
.source "PermissionChecks.java"


# static fields
.field private static final PERMISSION_SYSTEM_PLATFORM_SDK_PACKAGE_WHITELIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.updater"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.uid.system:1000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/content/PermissionChecks;->PERMISSION_SYSTEM_PLATFORM_SDK_PACKAGE_WHITELIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final callingAppHasSystemPlatformSDKPermission(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v1, Lcom/oculus/util/vr/VRUtils;

    invoke-direct {v1, p0}, Lcom/oculus/util/vr/VRUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/oculus/util/vr/VRUtils;->isStandaloneDevice()Z

    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    const-string v1, "com.oculus.permission.SYSTEM_PLATFORM_SDK"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    .line 74
    if-nez v1, :cond_0

    .line 80
    sget-object v3, Lcom/oculus/content/PermissionChecks;->PERMISSION_SYSTEM_PLATFORM_SDK_PACKAGE_WHITELIST:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
