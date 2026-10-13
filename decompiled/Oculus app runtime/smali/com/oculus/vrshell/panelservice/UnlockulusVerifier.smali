.class public Lcom/oculus/vrshell/panelservice/UnlockulusVerifier;
.super Ljava/lang/Object;
.source "UnlockulusVerifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockulusVerifier"

.field private static final UNLOCKULUS_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.unlockulus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static haveValidDeviceOSIGInUnlockulusPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;

    invoke-direct {v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;-><init>()V

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.oculus.unlockulus"

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 87
    invoke-virtual {v0, p0, p1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->verifyDeveloperVrSignature(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "package does not contain valid device OSIG"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    .line 93
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static haveValidUnlockulusPackageInstalled(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.oculus.unlockulus"

    const/16 v1, 0x40

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    sget-object v2, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->OCULUS_APPS_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "package does not have a valid signature"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "package not installed"

    return-object p0
.end method

.method public static isUnlockulusUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {p0}, Lcom/oculus/vrshell/panelservice/UnlockulusVerifier;->haveValidUnlockulusPackageInstalled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 36
    :cond_0
    invoke-static {p0, p1}, Lcom/oculus/vrshell/panelservice/UnlockulusVerifier;->haveValidDeviceOSIGInUnlockulusPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
