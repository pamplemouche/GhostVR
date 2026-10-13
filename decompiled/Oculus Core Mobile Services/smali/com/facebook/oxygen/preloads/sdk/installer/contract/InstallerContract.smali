.class public Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerContract;
.super Ljava/lang/Object;
.source "InstallerContract.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static emptyIfNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    if-eqz p0, :cond_0

    .line 255
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static getErrorCode(Landroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 178
    invoke-static {p0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerContract;->emptyIfNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 179
    const-string v1, "installer_result_code"

    const/16 v2, -0x2711

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getException(Landroid/os/Bundle;)Ljava/lang/Throwable;
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    invoke-static {p0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerContract;->emptyIfNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 194
    const/4 v1, 0x0

    .line 196
    :try_start_0
    const-string v0, "installer_exception"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 197
    if-eqz v0, :cond_1

    .line 198
    const-string v3, "installer_exception"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    if-nez v0, :cond_0

    .line 205
    const-string v1, "installer_exception_string"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v3, "InstallerContract"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to de-serialize exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstallerServiceComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->INSTALLER_PACKAGE_NAME:Ljava/lang/String;

    const-string v2, "com.facebook.oxygen.installer.service.InstallerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
