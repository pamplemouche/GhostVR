.class public Lcom/oculus/vrshell/panelservice/PanelVerifier;
.super Ljava/lang/Object;
.source "PanelVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panelservice/PanelVerifier$TrustedFirstPartyCertVerifier;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelVerifier"


# instance fields
.field private final mIsStandaloneVr:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTrustAppsBranchDev:Z

.field private final mTrustDeveloperOsig:Z

.field private mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panelservice/SigCertVerifier;

.field private final mUseEsig:Z

.field private mVrSignatureVerifier:Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 32
    new-instance v1, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;

    invoke-direct {v1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;-><init>()V

    iput-object v1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;

    .line 33
    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panelservice/SigCertVerifier;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    new-instance v0, Lcom/oculus/vrshell/panelservice/PanelVerifier$TrustedFirstPartyCertVerifier;

    iget-object v1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p1, v1, p3}, Lcom/oculus/vrshell/panelservice/PanelVerifier$TrustedFirstPartyCertVerifier;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V

    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panelservice/SigCertVerifier;

    .line 59
    iput-boolean p2, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mTrustDeveloperOsig:Z

    .line 60
    iput-boolean p3, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mTrustAppsBranchDev:Z

    .line 61
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "oculus.hardware.standalone_vr"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mIsStandaloneVr:Z

    .line 63
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "oculus.software.store_app.signature.esig"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mUseEsig:Z

    return-void
.end method


# virtual methods
.method public checkApkSignature(I)Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mTrustedFirstPartyCertVerifier:Lcom/oculus/vrshell/panelservice/SigCertVerifier;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panelservice/SigCertVerifier;->checkSigCertInfo(I)Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;

    move-result-object p1

    return-object p1
.end method

.method public isVrRunnable(I)Z
    .locals 8

    const-string v0, "Failed to check developer OSIG"

    const-string v1, "Failed to validate store VR signature"

    .line 72
    iget-boolean v2, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mUseEsig:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "PanelVerifier"

    if-nez v2, :cond_1

    .line 79
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "Failed to find package for UID %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 83
    :cond_1
    iget-boolean p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mTrustDeveloperOsig:Z

    if-eqz p1, :cond_3

    .line 84
    iget-boolean p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mIsStandaloneVr:Z

    if-eqz p1, :cond_2

    return v3

    .line 89
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;

    iget-object v6, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 89
    invoke-virtual {p1, v6, v7}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->verifyDeveloperVrSignature(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return v3

    :catch_0
    move-exception p1

    .line 98
    invoke-static {v5, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 96
    invoke-static {v5, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 94
    invoke-static {v5, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_3
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelVerifier;->mVrSignatureVerifier:Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->verifyStoreVrSignature(Ljava/io/File;)Z

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

    .line 115
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception p1

    .line 113
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception p1

    .line 111
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_6
    move-exception p1

    .line 109
    invoke-static {v5, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return v4
.end method
