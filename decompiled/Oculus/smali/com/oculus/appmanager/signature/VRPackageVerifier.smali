.class public Lcom/oculus/appmanager/signature/VRPackageVerifier;
.super Ljava/lang/Object;
.source "VRPackageVerifier.java"


# instance fields
.field private final mVerifier:Lcom/oculus/appmanager/vrsign/VRSignVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/oculus/appmanager/vrsign/VRSignVerifier;

    invoke-direct {v0}, Lcom/oculus/appmanager/vrsign/VRSignVerifier;-><init>()V

    iput-object v0, p0, Lcom/oculus/appmanager/signature/VRPackageVerifier;->mVerifier:Lcom/oculus/appmanager/vrsign/VRSignVerifier;

    .line 19
    return-void
.end method


# virtual methods
.method public verifyOculusSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 38
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oculussig_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/oculus/appmanager/signature/VRPackageVerifier;->mVerifier:Lcom/oculus/appmanager/vrsign/VRSignVerifier;

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->verifyOculusSig(Ljava/lang/String;Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    if-eqz v1, :cond_2

    .line 51
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 58
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 50
    :goto_2
    if-eqz v0, :cond_2

    .line 51
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 50
    :goto_3
    if-eqz v1, :cond_3

    .line 51
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 55
    :cond_3
    :goto_4
    throw v0

    .line 53
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 49
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 46
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public verifyVRSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    const/16 v0, 0x80

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/oculus/appmanager/signature/VRPackageVerifier;->mVerifier:Lcom/oculus/appmanager/vrsign/VRSignVerifier;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->verifyVRSig(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 29
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method
