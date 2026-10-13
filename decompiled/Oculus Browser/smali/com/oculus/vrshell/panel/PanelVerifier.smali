.class public Lcom/oculus/vrshell/panel/PanelVerifier;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelVerifier"


# instance fields
.field public final mIsStandaloneVr:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mTrustAppsBranchDev:Z

.field public final mTrustDeveloperOsig:Z

.field public mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

.field public final mUseEsig:Z

.field public mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    new-instance v1, Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    invoke-direct {v1}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;-><init>()V

    iput-object v1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    .line 4
    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    new-instance v1, Lcom/oculus/vrshell/panel/PanelVerifier$TrustedFirstPartyCertVerifier;

    invoke-direct {v1, p1, v0, p3}, Lcom/oculus/vrshell/panel/PanelVerifier$TrustedFirstPartyCertVerifier;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V

    iput-object v1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

    .line 7
    iput-boolean p2, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustDeveloperOsig:Z

    .line 8
    iput-boolean p3, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustAppsBranchDev:Z

    .line 9
    iget-object p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "oculus.hardware.standalone_vr"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mIsStandaloneVr:Z

    .line 10
    iget-object p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "oculus.software.store_app.signature.esig"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mUseEsig:Z

    return-void
.end method


# virtual methods
.method public checkApkSignature(I)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panel/SigCertVerifier;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panel/SigCertVerifier;->checkSigCertInfo(I)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;

    move-result-object p1

    return-object p1
.end method

.method public isVrRunnable(I)Z
    .locals 8

    const-string v0, "Failed to check developer OSIG"

    const-string v1, "Failed to validate store VR signature"

    .line 1
    iget-boolean v2, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mUseEsig:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "PanelVerifier"

    if-nez v2, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "Failed to find package for UID %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mTrustDeveloperOsig:Z

    if-eqz p1, :cond_3

    .line 5
    iget-boolean p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mIsStandaloneVr:Z

    if-eqz p1, :cond_2

    return v3

    .line 6
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    iget-object v6, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v6, v7}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifyDeveloperVrSignature(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return v3

    :catch_0
    move-exception p1

    .line 9
    invoke-static {v5, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-static {v5, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 11
    invoke-static {v5, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_3
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 13
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/oculus/vrshell/panel/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panel/VrSignatureVerifier;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifyStoreVrSignature(Ljava/io/File;)Z

    move-result p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz p1, :cond_4

    return v3

    :catch_3
    move-exception p1

    .line 15
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception p1

    .line 16
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception p1

    .line 17
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_6
    move-exception p1

    .line 18
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return v4
.end method
