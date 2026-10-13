.class public Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;
.super Ljava/lang/Object;
.source "GenerateUpdateInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/GenerateUpdateInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationUpdateInfo"
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkBinaryId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApkChecksum()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->checksum_hash:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApkDownloadUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApkPatchChecksum()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->checksum_hash:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApkPatchDownloadUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApkPatchSize()J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-wide v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->size:J

    goto :goto_0
.end method

.method public getApkSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->apk_cert_signature:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->apk_cert_signature:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApkSize()J
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-wide v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->size:J

    goto :goto_0
.end method

.method public getAssetPatches()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->hasAssetPatches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    return-object v0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v10, v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->asset_file_patches:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;

    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v8, v10, v9

    .line 221
    new-instance v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    iget-object v2, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;->id:Ljava/lang/String;

    iget-object v3, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;->source_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$BinarySource;

    iget-object v3, v3, Lcom/oculus/library/net/GenerateUpdateInfoResponse$BinarySource;->file_name:Ljava/lang/String;

    iget-object v4, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;->uri:Ljava/lang/String;

    iget-object v5, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;->checksum_hash:Ljava/lang/String;

    iget-wide v6, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;->size:J

    iget-object v8, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;->source_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$BinarySource;

    iget-boolean v8, v8, Lcom/oculus/library/net/GenerateUpdateInfoResponse$BinarySource;->is_required:Z

    invoke-direct/range {v1 .. v8}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0
.end method

.method public getAssets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->hasAssets()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    :cond_0
    return-object v0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v1, v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->asset_files:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;

    iget-object v2, v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;->edges:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 191
    iget-object v4, v4, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;->node:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getExternalSignatures()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->external_signatures:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->external_signatures:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 129
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v2, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->external_signatures:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 131
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getObbBinaryId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObbChecksum()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;->checksum_hash:Ljava/lang/String;

    goto :goto_0
.end method

.method public getObbDownloadUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getObbPatchChecksum()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;->checksum_hash:Ljava/lang/String;

    goto :goto_0
.end method

.method public getObbPatchDownloadUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getObbPatchSize()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    iget-wide v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;->size:J

    goto :goto_0
.end method

.method public getObbSize()J
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    iget-wide v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;->size:J

    goto :goto_0
.end method

.method public getRequiredAssets()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->hasAssets()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    return-object v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v1, v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->asset_files:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;

    iget-object v2, v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;->edges:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 202
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;->node:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;->node:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    iget-boolean v5, v5, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->is_required:Z

    if-eqz v5, :cond_2

    .line 203
    iget-object v4, v4, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;->node:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getVersionCode()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-wide v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->version_code:J

    goto :goto_0
.end method

.method public hasAssetPatches()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->asset_file_patches:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->asset_file_patches:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetPatch;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAssets()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->asset_files:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->asset_files:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;->edges:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->asset_files:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;->edges:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileEdge;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObbUpdate()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->new_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;->obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPatchApkUpdate()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPatchObbUpdate()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;->patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;

    iget-object v0, v0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$Patch;->obb_patch:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
