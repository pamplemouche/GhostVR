.class public Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;
.super Ljava/lang/Object;
.source "InstallConfig.java"


# instance fields
.field private final mConfig:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;->mConfig:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;->mConfig:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setFullApkSignatureOculus([B)Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;
    .locals 2
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;->mConfig:Landroid/os/Bundle;

    const-string v1, "full_apk_hash_signature_oculus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 45
    :goto_0
    return-object p0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;->mConfig:Landroid/os/Bundle;

    const-string v1, "full_apk_hash_signature_oculus"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallConfig;->mConfig:Landroid/os/Bundle;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object p0
.end method
