.class public Lcom/oculus/unlockulus_helper/UnlockulusHelper;
.super Ljava/lang/Object;
.source "UnlockulusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sVerifier:Lcom/oculus/appmanager/signature/VRPackageVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/signature/VRPackageVerifier;

    invoke-direct {v0}, Lcom/oculus/appmanager/signature/VRPackageVerifier;-><init>()V

    sput-object v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->sVerifier:Lcom/oculus/appmanager/signature/VRPackageVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Landroid/content/Context;Z)Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->isReleaseSystemImage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    :goto_0
    :try_start_0
    const-string v2, "com.oculus.unlockulus"

    .line 96
    invoke-static {p0, v2}, Lcom/oculus/signature/SignatureHelper;->verifyProductionFirstPartyApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 97
    sget-object v2, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->sVerifier:Lcom/oculus/appmanager/signature/VRPackageVerifier;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.oculus.unlockulus"

    invoke-virtual {v2, v4, v5}, Lcom/oculus/appmanager/signature/VRPackageVerifier;->verifyOculusSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    .line 100
    new-instance v2, Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v4, v0}, Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;-><init>(ZZZZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 105
    :goto_1
    if-eqz p1, :cond_0

    .line 106
    sget-object v1, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-object v0

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    new-instance v2, Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;

    invoke-direct {v2, v1, v1, v1, v0}, Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;-><init>(ZZZZ)V

    move-object v0, v2

    goto :goto_1
.end method

.method private static isReleaseSystemImage()Z
    .locals 2

    .prologue
    .line 68
    const-string/jumbo v0, "ro.build.fingerprint"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/util/system/SystemProps;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "release-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public isEmployeeWithWhitelistedDevice(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->isEmployeeWithWhitelistedDevice(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isEmployeeWithWhitelistedDevice(Landroid/content/Context;Z)Z
    .locals 1

    .prologue
    .line 64
    invoke-static {p1, p2}, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->getResult(Landroid/content/Context;Z)Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unlockulus_helper/UnlockulusHelper$Result;->isUnlockulused()Z

    move-result v0

    return v0
.end method
