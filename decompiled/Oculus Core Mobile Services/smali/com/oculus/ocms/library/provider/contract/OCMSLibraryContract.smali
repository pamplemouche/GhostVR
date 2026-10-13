.class public Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;
.super Ljava/lang/Object;
.source "OCMSLibraryContract.java"


# static fields
.field public static final OCULUS_SIGNATURE:Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082038030820268a00302010202045390c873300d06092a864886f70d0101050500308181310b3009060355040613024341311330110603550408130a43616c69666f726e6961310f300d06035504071306497276696e6531183016060355040a130f4f63756c75732056522c20496e632e31183016060355040b130f4f63756c75732056522c20496e632e311830160603550403130f4f63756c75732056522c20496e632e301e170d3134303630353139343334375a170d3431313032313139343334375a308181310b3009060355040613024341311330110603550408130a43616c69666f726e6961310f300d06035504071306497276696e6531183016060355040a130f4f63756c75732056522c20496e632e31183016060355040b130f4f63756c75732056522c20496e632e311830160603550403130f4f63756c75732056522c20496e632e30820122300d06092a864886f70d01010105000382010f003082010a0282010100810913c89c710f0c1baf44cbd759cb193a9ceacc3ff64f6c710519cdc30f55f913285c74e8fd3e3220e55524cb881921a4de9b68a2f6a55eedd1da6c7f65f11adb983831e87797d70f411fd654dffbec956308bd7bbd8fb64215f15f315831a869b3ebc90a268b069e4b15e5861cbe1ef2b82c543f394410324891f161e0cecd1544c2b3e4be220e61312d1169950b3fc7c9c76c5eb4b723033caf65f5a9aadcb817c7923daea4266d0e874fd1f82480090f70b631d2b4ee4704c406c30c0d31cd75a9159ba37002ccfdff6752d61543252d5030ec0fff14e505b514027b702641b0aa6e65e5a3b80c847fc3f866d936234e7b91f8129749ac5383067bd74dcb0203010001300d06092a864886f70d01010505000382010100457e0ddb298616761934a9ff2a91048872af6f004855a0e866f4ffea0a4dfb1ff0aa2cf4ffac55f87d2d8e8273a867d4ef63d2fecb468d081ad405b3359fc576eeac839bacebb111d65f39a6930509b2986268c6a65554dfbd3eb40904b9a1d0b476c3a94b128bd975cd285635e2a225c4c3f7664eb8b98962d45416705805e4434bb826c7cb095c7ddb22cf99f92b6bc4e1b2a7e93d0ecb8d9b4543efed428589c2d52b16cde1c52dade04ffddcd3aa70aacef2a5c8dd89961f7e2b425ed1400f9673278bee714777d6b681eebd176de9345be39c800a4f78c41714d61018dbd5f3750fc8fe7ba35c2172b796fb5abb6c2b61528d1cddc84d2e16b685d02e66"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageFromAppsUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->getUriPathSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriPathSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid args"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_3

    .line 225
    :cond_2
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static providerUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.oculus.ocms.library"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriForAllInstalls()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.oculus.ocms.library"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "install"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriForAllPackages()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.oculus.ocms.library"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriForPackage(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName cannot be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 102
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.oculus.ocms.library"

    .line 103
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "apps"

    .line 104
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriForPackageDownload(Lcom/oculus/appmanager/info/model/InstallerResult;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->timestampMs:J

    invoke-static {v1, v0, v2, v3}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForPackageDownload(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    iget v0, v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->code:I

    goto :goto_0
.end method

.method public static uriForPackageDownload(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName cannot be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 133
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.oculus.ocms.library"

    .line 134
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "download"

    .line 135
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 138
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriForPackageInstall(Lcom/oculus/appmanager/info/model/InstallerResult;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->timestampMs:J

    invoke-static {v1, v0, v2, v3}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForPackageInstall(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    iget v0, v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->code:I

    goto :goto_0
.end method

.method public static uriForPackageInstall(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName cannot be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 166
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.oculus.ocms.library"

    .line 167
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "install"

    .line 168
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 171
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
