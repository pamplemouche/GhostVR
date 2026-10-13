.class public Lcom/oculus/model/StoreRoadblockModel$Builder;
.super Ljava/lang/Object;
.source "StoreRoadblockModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/model/StoreRoadblockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mButtonText:Lcom/oculus/model/LazyString;

.field private mCategory:Ljava/lang/String;

.field private mDescription:Lcom/oculus/model/LazyStringWithUri;

.field private mImage:Lcom/oculus/model/LazyImage;

.field private mKey:Ljava/lang/String;

.field private mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

.field private mTitle:Lcom/oculus/model/LazyString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/model/StoreRoadblockModel;
    .locals 8

    .prologue
    .line 172
    new-instance v0, Lcom/oculus/model/StoreRoadblockModel;

    iget-object v1, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mTitle:Lcom/oculus/model/LazyString;

    iget-object v3, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    iget-object v4, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    iget-object v5, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mImage:Lcom/oculus/model/LazyImage;

    iget-object v6, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mButtonText:Lcom/oculus/model/LazyString;

    iget-object v7, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mCategory:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/oculus/model/StoreRoadblockModel;-><init>(Ljava/lang/String;Lcom/oculus/model/LazyString;Lcom/oculus/model/LazyStringWithUri;Lcom/oculus/model/LazyStringWithUri;Lcom/oculus/model/LazyImage;Lcom/oculus/model/LazyString;Ljava/lang/String;)V

    return-object v0
.end method

.method public setButtonText(I)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/oculus/model/LazyString;

    invoke-direct {v0, p1}, Lcom/oculus/model/LazyString;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mButtonText:Lcom/oculus/model/LazyString;

    .line 168
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mCategory:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setDescription(I)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/oculus/model/LazyStringWithUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oculus/model/LazyStringWithUri;-><init>(ILandroid/net/Uri;)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 131
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;Landroid/net/Uri;)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/oculus/model/LazyStringWithUri;

    invoke-direct {v0, p1, p2}, Lcom/oculus/model/LazyStringWithUri;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 126
    return-object p0
.end method

.method public setImage(I)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/oculus/model/LazyImage;

    invoke-direct {v0, p1}, Lcom/oculus/model/LazyImage;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mImage:Lcom/oculus/model/LazyImage;

    .line 163
    return-object p0
.end method

.method public setImage(Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-object v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->IMAGE:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 151
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 152
    new-instance v2, Lcom/oculus/model/LazyImage;

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->uri:Ljava/lang/String;

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->height:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {v2, v3, v0}, Lcom/oculus/model/LazyImage;-><init>(Ljava/lang/String;F)V

    iput-object v2, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mImage:Lcom/oculus/model/LazyImage;

    .line 158
    return-object p0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->width:I

    int-to-float v0, v0

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget v1, v1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public setKey(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mKey:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setSecondDescription(I)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/oculus/model/LazyStringWithUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oculus/model/LazyStringWithUri;-><init>(ILandroid/net/Uri;)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 141
    return-object p0
.end method

.method public setSecondDescription(Ljava/lang/String;Landroid/net/Uri;)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/oculus/model/LazyStringWithUri;

    invoke-direct {v0, p1, p2}, Lcom/oculus/model/LazyStringWithUri;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 136
    return-object p0
.end method

.method public setTitle(I)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/oculus/model/LazyString;

    invoke-direct {v0, p1}, Lcom/oculus/model/LazyString;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mTitle:Lcom/oculus/model/LazyString;

    .line 121
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/oculus/model/LazyString;

    invoke-direct {v0, p1}, Lcom/oculus/model/LazyString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel$Builder;->mTitle:Lcom/oculus/model/LazyString;

    .line 116
    return-object p0
.end method
