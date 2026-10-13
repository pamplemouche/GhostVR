.class public Lcom/oculus/vrshell/panel/PanelVerifier;
.super Ljava/lang/Object;
.source "PanelVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panel/PanelVerifier$TrustedFirstPartyCertVerifier;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelVerifier"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTrustAppsBranchDev:Z

.field private final mTrustDeveloperOsig:Z

.field private mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

.field private mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trustDeveloperOsig"    # Z
    .param p3, "trustAppsBranchDev"    # Z

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    new-instance v0, Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    invoke-direct {v0}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    .line 56
    iput-object v1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    new-instance v0, Lcom/oculus/vrshell/panel/PanelVerifier$TrustedFirstPartyCertVerifier;

    iget-object v1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p1, v1, p3}, Lcom/oculus/vrshell/panel/PanelVerifier$TrustedFirstPartyCertVerifier;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

    .line 78
    iput-boolean p2, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustDeveloperOsig:Z

    .line 79
    iput-boolean p3, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustAppsBranchDev:Z

    .line 80
    return-void
.end method


# virtual methods
.method public checkApkSignature(I)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panel/SigCertVerifier;->checkSigCertInfo(I)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;

    move-result-object v0

    return-object v0
.end method

.method public isVrRunnable(I)Z
    .locals 10
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v7, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 95
    const-string v7, "PanelVerifier"

    const-string v8, "Failed to find package for UID %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return v5

    .line 99
    :cond_1
    iget-boolean v7, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustDeveloperOsig:Z

    if-eqz v7, :cond_2

    .line 103
    :try_start_0
    iget-object v7, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    iget-object v8, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 103
    invoke-virtual {v7, v8, v9}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifyDeveloperVrSignature(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 107
    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 112
    .local v2, "ex":Ljava/io/IOException;
    const-string v7, "PanelVerifier"

    const-string v8, "Failed to check developer OSIG"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 127
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v0, Ljava/io/File;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "apkFile":Ljava/io/File;
    iget-object v7, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    invoke-virtual {v7, v0}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifyStoreVrSignature(Ljava/io/File;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 130
    goto :goto_0

    .line 114
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "ex":Ljava/security/GeneralSecurityException;
    const-string v7, "PanelVerifier"

    const-string v8, "Failed to check developer OSIG"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 118
    .end local v2    # "ex":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v2

    .line 120
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PanelVerifier"

    const-string v8, "Failed to check developer OSIG"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 133
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v1

    .line 135
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PanelVerifier"

    const-string v7, "Failed to validate store VR signature"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4
    move-exception v1

    .line 139
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string v6, "PanelVerifier"

    const-string v7, "Failed to validate store VR signature"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_5
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "PanelVerifier"

    const-string v7, "Failed to validate store VR signature"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v6, "PanelVerifier"

    const-string v7, "Failed to validate store VR signature"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
