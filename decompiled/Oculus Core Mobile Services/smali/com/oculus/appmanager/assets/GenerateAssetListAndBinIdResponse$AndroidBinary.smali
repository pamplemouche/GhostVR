.class public Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;
.super Ljava/lang/Object;
.source "GenerateAssetListAndBinIdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidBinary"
.end annotation


# instance fields
.field public assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asset_files"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    iget-object v0, v0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;->edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    iget-object v0, v0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;->edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 52
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 58
    :cond_1
    return-object v0

    .line 54
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    iget-object v1, v1, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;->edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    iget-object v1, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    iget-object v2, v1, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;->edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 56
    iget-object v4, v4, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;->node:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAssetsIdMap()Lcom/google/common/collect/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    iget-object v0, v0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;->edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    iget-object v0, v0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;->edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_1
    new-instance v1, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;->assetFiles:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;

    iget-object v2, v0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;->edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 44
    iget-object v4, v4, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;->node:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode;

    .line 45
    iget-object v5, v4, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode;->id:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method
