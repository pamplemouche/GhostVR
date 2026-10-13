.class public Lcom/oculus/horizon/store/StoreAssetMedia;
.super Ljava/lang/Object;
.source "StoreAssetMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreAssetMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aspectRatio:F

.field public final placeholderUri:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final type:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

.field public final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/oculus/horizon/store/StoreAssetMedia$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreAssetMedia$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreAssetMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->uri:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->placeholderUri:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->aspectRatio:F

    .line 63
    invoke-static {}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->values()[Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->type:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->uri:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->placeholderUri:Ljava/lang/String;

    .line 24
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->aspectRatio:F

    .line 25
    iput-object p4, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->type:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 26
    return-void
.end method

.method public static from(Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;)Lcom/oculus/horizon/store/StoreAssetMedia;
    .locals 5
    .param p1    # Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->uri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media_type:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->uri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 48
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->uri:Ljava/lang/String;

    .line 50
    :cond_2
    new-instance v2, Lcom/oculus/horizon/store/StoreAssetMedia;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget v4, v4, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->height:I

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    .line 53
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v4, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media_type:Ljava/lang/String;

    .line 56
    invoke-static {v4}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/oculus/horizon/store/StoreAssetMedia;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;)V

    move-object v0, v2

    goto :goto_0

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget v1, v1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->width:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget v4, v4, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->height:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->placeholderUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->aspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreAssetMedia;->type:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void
.end method
