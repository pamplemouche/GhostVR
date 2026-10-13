.class public Lcom/oculus/secure/unlockulus/UnlockulusHelper;
.super Ljava/lang/Object;
.source "UnlockulusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
    }
.end annotation


# static fields
.field private static CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.oculus.unlockulus"

.field private static final SYSTEM_PROP_SIGN_TYPE:Ljava/lang/String; = "ro.build.fingerprint"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_RELEASEKEY:Ljava/lang/String; = "release-keys"

.field private static final sVerifier:Lcom/oculus/secure/unlockulus/VRPackageVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oculus/secure/unlockulus/UnlockulusHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/oculus/secure/unlockulus/VRPackageVerifier;

    invoke-direct {v0}, Lcom/oculus/secure/unlockulus/VRPackageVerifier;-><init>()V

    sput-object v0, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->sVerifier:Lcom/oculus/secure/unlockulus/VRPackageVerifier;

    .line 74
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResult(Landroid/content/Context;Z)Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verbose"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-static {}, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->isReleaseSystemImage()Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    .local v4, "userdev":Z
    :goto_0
    :try_start_0
    sget-object v6, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_APPS_SIGNATURE_HASH_RELEASE:Lcom/oculus/secure/trustedapp/AppSignatureHash;

    const-string v7, "com.oculus.unlockulus"

    .line 110
    invoke-static {p0, v7}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/secure/trustedapp/AppSignatureHash;

    move-result-object v7

    .line 109
    invoke-virtual {v6, v7}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 111
    .local v2, "firstPartyCertValid":Z
    sget-object v6, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->sVerifier:Lcom/oculus/secure/unlockulus/VRPackageVerifier;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.oculus.unlockulus"

    invoke-virtual {v6, v7, v8}, Lcom/oculus/secure/unlockulus/VRPackageVerifier;->verifyOculusSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    .line 114
    .local v0, "developerVRSigned":Z
    new-instance v3, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;

    const/4 v6, 0x1

    invoke-direct {v3, v6, v2, v0, v4}, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;-><init>(ZZZZ)V
    :try_end_0
    .catch Lcom/oculus/secure/trustedapp/exception/PackageNameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v0    # "developerVRSigned":Z
    .end local v2    # "firstPartyCertValid":Z
    .local v3, "result":Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
    :goto_1
    if-eqz p1, :cond_0

    .line 122
    sget-object v5, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-object v3

    .end local v3    # "result":Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
    .end local v4    # "userdev":Z
    :cond_1
    move v4, v5

    .line 105
    goto :goto_0

    .line 115
    .restart local v4    # "userdev":Z
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lcom/oculus/secure/trustedapp/exception/PackageNameNotFoundException;
    new-instance v3, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;-><init>(ZZZZ)V

    .line 119
    .restart local v3    # "result":Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
    goto :goto_1

    .line 117
    .end local v1    # "e":Lcom/oculus/secure/trustedapp/exception/PackageNameNotFoundException;
    .end local v3    # "result":Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;-><init>(ZZZZ)V

    .restart local v3    # "result":Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
    goto :goto_1
.end method

.method public static isEmployeeWithWhitelistedDevice(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->isEmployeeWithWhitelistedDevice(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmployeeWithWhitelistedDevice(Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verbose"    # Z

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->getResult(Landroid/content/Context;Z)Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->isUnlockulused()Z

    move-result v0

    return v0
.end method

.method private static isReleaseSystemImage()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 81
    :try_start_0
    sget-object v3, Lcom/oculus/secure/unlockulus/UnlockulusHelper;->CLASS:Ljava/lang/Class;

    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 82
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.build.fingerprint"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "propValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 88
    :goto_0
    return v2

    .line 86
    :cond_0
    const-string v3, "release-keys"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "_ex":Ljava/lang/Exception;
    goto :goto_0
.end method
