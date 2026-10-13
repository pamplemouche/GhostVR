.class public Lcom/oculus/horizon/store/StoreSection;
.super Ljava/lang/Object;
.source "StoreSection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreSection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final category:Ljava/lang/String;

.field public final contentType:Ljava/lang/String;

.field public final countDownTimerEndTime:J

.field public final headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final layout:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

.field public final name:Ljava/lang/String;

.field public final positionInStore:I

.field public final roadblockModel:Lcom/oculus/model/StoreRoadblockModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final sortOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/SortOptionModel;",
            ">;"
        }
    .end annotation
.end field

.field public final styleTheme:Lcom/oculus/model/StyleTheme;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/oculus/horizon/store/StoreSection$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreSection$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreSection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->contentType:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->layout:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->sortOptions:Ljava/util/List;

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->sortOptions:Ljava/util/List;

    sget-object v1, Lcom/oculus/horizon/store/SortOptionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreSection;->positionInStore:I

    .line 124
    const-class v0, Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreAssetMedia;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/store/StoreSection;->countDownTimerEndTime:J

    .line 128
    const-class v0, Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/StoreRoadblockModel;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 129
    return-void

    .line 126
    :cond_0
    invoke-static {v0}, Lcom/oculus/model/StyleTheme;->valueOf(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/oculus/horizon/store/StoreAssetMedia;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/SortOptionModel;",
            ">;I",
            "Lcom/oculus/horizon/store/StoreAssetMedia;",
            "Lcom/oculus/model/StyleTheme;",
            "J",
            "Lcom/oculus/model/StoreRoadblockModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreSection;->contentType:Ljava/lang/String;

    .line 43
    invoke-static {p4}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->layout:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    .line 44
    iput-object p5, p0, Lcom/oculus/horizon/store/StoreSection;->sortOptions:Ljava/util/List;

    .line 45
    iput p6, p0, Lcom/oculus/horizon/store/StoreSection;->positionInStore:I

    .line 46
    iput-object p7, p0, Lcom/oculus/horizon/store/StoreSection;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    .line 47
    iput-object p8, p0, Lcom/oculus/horizon/store/StoreSection;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 48
    iput-wide p9, p0, Lcom/oculus/horizon/store/StoreSection;->countDownTimerEndTime:J

    .line 49
    iput-object p11, p0, Lcom/oculus/horizon/store/StoreSection;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 50
    return-void
.end method

.method public static from(Lcom/oculus/horizon/api/common/BannerTarget;)Lcom/oculus/horizon/store/StoreSection;
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/api/common/BannerTarget;->assets:Lcom/oculus/horizon/api/common/Section$Assets;

    sget-object v1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_SECTION_HEADER:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    .line 91
    invoke-static {v0, v1, v5}, Lcom/oculus/horizon/store/StoresManager;->getFirstAssetWithMatchingName(Lcom/oculus/horizon/api/common/Section$Assets;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;)Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/oculus/horizon/api/common/BannerTarget;->assets:Lcom/oculus/horizon/api/common/Section$Assets;

    sget-object v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_SECTION_HEADER_PLACEHOLDER:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    sget-object v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->IMAGE:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 96
    invoke-static {v1, v2, v3}, Lcom/oculus/horizon/store/StoresManager;->getFirstAssetWithMatchingName(Lcom/oculus/horizon/api/common/Section$Assets;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;)Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-result-object v8

    .line 100
    new-instance v1, Lcom/oculus/horizon/store/StoreSection;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/BannerTarget;->section_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/BannerTarget;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/BannerTarget;->content_type:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/api/common/BannerTarget;->sort_options:Ljava/util/ArrayList;

    .line 105
    invoke-static {v6}, Lcom/oculus/horizon/store/StoresManager;->getSortOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 107
    invoke-static {v0, v8}, Lcom/oculus/horizon/store/StoreAssetMedia;->from(Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;)Lcom/oculus/horizon/store/StoreAssetMedia;

    move-result-object v8

    iget-object v0, p0, Lcom/oculus/horizon/api/common/BannerTarget;->style_theme:Ljava/lang/String;

    .line 108
    invoke-static {v0}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v9

    iget-boolean v0, p0, Lcom/oculus/horizon/api/common/BannerTarget;->show_timer:Z

    if-eqz v0, :cond_0

    iget-wide v10, p0, Lcom/oculus/horizon/api/common/BannerTarget;->end_time:J

    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/api/common/BannerTarget;->content_type:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionBrand;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;

    move-result-object v0

    iget-object v12, p0, Lcom/oculus/horizon/api/common/BannerTarget;->assets:Lcom/oculus/horizon/api/common/Section$Assets;

    iget-object v13, p0, Lcom/oculus/horizon/api/common/BannerTarget;->content_type:Ljava/lang/String;

    .line 110
    invoke-static {v0, v12, v13}, Lcom/oculus/horizon/store/StoreUtils;->getBestStoreRoadblockModel(Lcom/oculus/horizon/store/StoreSectionBrand;Lcom/oculus/horizon/api/common/Section$Assets;Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/oculus/horizon/store/StoreSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/oculus/horizon/store/StoreAssetMedia;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    return-object v1

    .line 108
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public static from(Lcom/oculus/horizon/api/common/Section;I)Lcom/oculus/horizon/store/StoreSection;
    .locals 13

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Section;->assets:Lcom/oculus/horizon/api/common/Section$Assets;

    sget-object v1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_SECTION_HEADER:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    const/4 v2, 0x0

    .line 61
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/store/StoresManager;->getFirstAssetWithMatchingName(Lcom/oculus/horizon/api/common/Section$Assets;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;)Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/oculus/horizon/api/common/Section;->assets:Lcom/oculus/horizon/api/common/Section$Assets;

    sget-object v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_SECTION_HEADER_PLACEHOLDER:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    sget-object v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->IMAGE:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 66
    invoke-static {v1, v2, v3}, Lcom/oculus/horizon/store/StoresManager;->getFirstAssetWithMatchingName(Lcom/oculus/horizon/api/common/Section$Assets;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;)Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-result-object v7

    .line 70
    new-instance v1, Lcom/oculus/horizon/store/StoreSection;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/Section;->section_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/Section;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/Section;->content_type:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/api/common/Section;->layout:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/api/common/Section;->sort_options:Ljava/util/ArrayList;

    .line 75
    invoke-static {v6}, Lcom/oculus/horizon/store/StoresManager;->getSortOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 77
    invoke-static {v0, v7}, Lcom/oculus/horizon/store/StoreAssetMedia;->from(Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;)Lcom/oculus/horizon/store/StoreAssetMedia;

    move-result-object v8

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Section;->style_theme:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v9

    iget-boolean v0, p0, Lcom/oculus/horizon/api/common/Section;->show_timer:Z

    if-eqz v0, :cond_0

    iget-wide v10, p0, Lcom/oculus/horizon/api/common/Section;->end_time:J

    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Section;->content_type:Ljava/lang/String;

    .line 81
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionBrand;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;

    move-result-object v0

    iget-object v7, p0, Lcom/oculus/horizon/api/common/Section;->assets:Lcom/oculus/horizon/api/common/Section$Assets;

    iget-object v12, p0, Lcom/oculus/horizon/api/common/Section;->content_type:Ljava/lang/String;

    .line 80
    invoke-static {v0, v7, v12}, Lcom/oculus/horizon/store/StoreUtils;->getBestStoreRoadblockModel(Lcom/oculus/horizon/store/StoreSectionBrand;Lcom/oculus/horizon/api/common/Section$Assets;Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v12

    move v7, p1

    invoke-direct/range {v1 .. v12}, Lcom/oculus/horizon/store/StoreSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/oculus/horizon/store/StoreAssetMedia;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    return-object v1

    .line 78
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->layout:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->sortOptions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 138
    iget v0, p0, Lcom/oculus/horizon/store/StoreSection;->positionInStore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->styleTheme:Lcom/oculus/model/StyleTheme;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-wide v0, p0, Lcom/oculus/horizon/store/StoreSection;->countDownTimerEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSection;->styleTheme:Lcom/oculus/model/StyleTheme;

    invoke-virtual {v0}, Lcom/oculus/model/StyleTheme;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
