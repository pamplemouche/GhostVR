.class public Lcom/oculus/vrshell/panel/UnlockulusVerifier;
.super Ljava/lang/Object;
.source "UnlockulusVerifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockulusVerifier"

.field private static final UNLOCKULUS_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.unlockulus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static haveValidDeviceOSIGInUnlockulusPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v4, Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    invoke-direct {v4}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;-><init>()V

    .line 90
    .local v4, "vrVerifier":Lcom/oculus/vrshell/panel/VrSignatureVerifier;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 91
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.oculus.unlockulus"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 92
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 94
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v4, v0, p1}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifyDeveloperVrSignature(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    const/4 v5, 0x0

    .line 104
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 98
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v5, "package does not contain valid device OSIG"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 99
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 101
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 104
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static haveValidUnlockulusPackageInstalled(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 58
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.oculus.unlockulus"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 62
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 63
    .local v1, "i":I
    :goto_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 65
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    sget-object v5, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_APPS_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    const/4 v4, 0x0

    .line 73
    .end local v1    # "i":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v4

    .line 64
    .restart local v1    # "i":I
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const-string v4, "package does not have a valid signature"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    .end local v1    # "i":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "package not installed"

    goto :goto_1
.end method

.method public static isUnlockulusUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/oculus/vrshell/panel/UnlockulusVerifier;->haveValidUnlockulusPackageInstalled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 44
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-static {p0, p1}, Lcom/oculus/vrshell/panel/UnlockulusVerifier;->haveValidDeviceOSIGInUnlockulusPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
