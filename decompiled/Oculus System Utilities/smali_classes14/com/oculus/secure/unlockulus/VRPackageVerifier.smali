.class public Lcom/oculus/secure/unlockulus/VRPackageVerifier;
.super Ljava/lang/Object;
.source "VRPackageVerifier.java"


# instance fields
.field private final mVerifier:Lcom/oculus/secure/unlockulus/VRSignVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/oculus/secure/unlockulus/VRSignVerifier;

    invoke-direct {v0}, Lcom/oculus/secure/unlockulus/VRSignVerifier;-><init>()V

    iput-object v0, p0, Lcom/oculus/secure/unlockulus/VRPackageVerifier;->mVerifier:Lcom/oculus/secure/unlockulus/VRSignVerifier;

    .line 21
    return-void
.end method


# virtual methods
.method public verifyOculusSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 43
    .local v1, "signatureStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oculussig_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/oculus/secure/unlockulus/VRPackageVerifier;->mVerifier:Lcom/oculus/secure/unlockulus/VRSignVerifier;

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/oculus/secure/unlockulus/VRSignVerifier;->verifyOculusSig(Ljava/lang/String;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const/4 v2, 0x1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 52
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 60
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 52
    if-eqz v1, :cond_2

    .line 53
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 55
    :catch_1
    move-exception v2

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    if-eqz v1, :cond_3

    .line 53
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 57
    :cond_3
    :goto_2
    throw v2

    .line 55
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method public verifyVRSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 25
    const/16 v2, 0x80

    .line 26
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 29
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/oculus/secure/unlockulus/VRPackageVerifier;->mVerifier:Lcom/oculus/secure/unlockulus/VRSignVerifier;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/secure/unlockulus/VRSignVerifier;->verifyVRSig(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 31
    :goto_0
    return v2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method
