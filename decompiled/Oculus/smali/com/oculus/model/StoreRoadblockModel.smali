.class public Lcom/oculus/model/StoreRoadblockModel;
.super Ljava/lang/Object;
.source "StoreRoadblockModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/model/StoreRoadblockModel$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/model/StoreRoadblockModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final category:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final key:Ljava/lang/String;

.field private final mButtonText:Lcom/oculus/model/LazyString;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDescription:Lcom/oculus/model/LazyStringWithUri;

.field private final mImage:Lcom/oculus/model/LazyImage;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSecondDescription:Lcom/oculus/model/LazyStringWithUri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTitle:Lcom/oculus/model/LazyString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/oculus/model/StoreRoadblockModel$1;

    invoke-direct {v0}, Lcom/oculus/model/StoreRoadblockModel$1;-><init>()V

    sput-object v0, Lcom/oculus/model/StoreRoadblockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->key:Ljava/lang/String;

    .line 179
    const-class v0, Lcom/oculus/model/LazyString;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/LazyString;

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mTitle:Lcom/oculus/model/LazyString;

    .line 180
    const-class v0, Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/LazyStringWithUri;

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 181
    const-class v0, Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/LazyStringWithUri;

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 182
    const-class v0, Lcom/oculus/model/LazyImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/LazyImage;

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mImage:Lcom/oculus/model/LazyImage;

    .line 183
    const-class v0, Lcom/oculus/model/LazyString;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/LazyString;

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mButtonText:Lcom/oculus/model/LazyString;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oculus/model/LazyString;Lcom/oculus/model/LazyStringWithUri;Lcom/oculus/model/LazyStringWithUri;Lcom/oculus/model/LazyImage;Lcom/oculus/model/LazyString;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 78
    iput-object p1, p0, Lcom/oculus/model/StoreRoadblockModel;->key:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/oculus/model/StoreRoadblockModel;->mTitle:Lcom/oculus/model/LazyString;

    .line 80
    iput-object p3, p0, Lcom/oculus/model/StoreRoadblockModel;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 81
    iput-object p4, p0, Lcom/oculus/model/StoreRoadblockModel;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    .line 82
    iput-object p5, p0, Lcom/oculus/model/StoreRoadblockModel;->mImage:Lcom/oculus/model/LazyImage;

    .line 83
    iput-object p6, p0, Lcom/oculus/model/StoreRoadblockModel;->mButtonText:Lcom/oculus/model/LazyString;

    .line 84
    iput-object p7, p0, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    .line 85
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static from(Lcom/oculus/horizon/api/common/Section$Assets;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 233
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Section$Assets;->edges:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 236
    :cond_1
    const/4 v4, 0x0

    .line 237
    const/4 v3, 0x0

    .line 238
    const/4 v2, 0x0

    .line 239
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Section$Assets;->edges:Ljava/util/ArrayList;

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;

    .line 242
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    if-eqz v6, :cond_2

    .line 245
    if-nez v4, :cond_3

    .line 246
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->DISPLAY_TEXT:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 247
    invoke-virtual {v6}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    .line 248
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 249
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-object v9, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 267
    goto :goto_1

    .line 250
    :cond_3
    if-nez v3, :cond_4

    .line 251
    invoke-virtual {p2}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->DISPLAY_TEXT:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 252
    invoke-virtual {v6}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    .line 253
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 254
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-object v3, v4

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2

    .line 255
    :cond_4
    if-nez v2, :cond_5

    .line 256
    invoke-virtual {p3}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->DISPLAY_TEXT:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 257
    invoke-virtual {v6}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    .line 258
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 259
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-object v2, v3

    move-object v3, v4

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    .line 260
    :cond_5
    if-nez v1, :cond_d

    .line 261
    invoke-virtual {p4}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->IMAGE:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    .line 262
    invoke-virtual {v6}, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->asset_media:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMedia;->uri:Ljava/lang/String;

    .line 264
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 265
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge;->node:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2

    .line 268
    :cond_6
    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    .line 269
    new-instance v0, Lcom/oculus/model/StoreRoadblockModel$Builder;

    invoke-direct {v0}, Lcom/oculus/model/StoreRoadblockModel$Builder;-><init>()V

    iget-object v5, v4, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 271
    invoke-static {v5, v6}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setKey(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    move-result-object v0

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v4}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    iget-object v0, v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text_uri:Ljava/lang/String;

    .line 275
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text_uri:Ljava/lang/String;

    .line 276
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 273
    :goto_3
    invoke-virtual {v4, v5, v0}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setDescription(Ljava/lang/String;Landroid/net/Uri;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    move-result-object v3

    .line 278
    if-eqz v2, :cond_7

    .line 279
    iget-object v4, v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text:Ljava/lang/String;

    iget-object v0, v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text_uri:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;->display_text_uri:Ljava/lang/String;

    .line 282
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 279
    :goto_4
    invoke-virtual {v3, v4, v0}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setSecondDescription(Ljava/lang/String;Landroid/net/Uri;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    .line 285
    :cond_7
    if-eqz v1, :cond_8

    .line 286
    invoke-virtual {v3, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setImage(Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    .line 288
    :cond_8
    invoke-static {p5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p5}, Lcom/oculus/model/StoreRoadblockModel;->isValidAssetCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 289
    invoke-virtual {v3, p5}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setCategory(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    .line 291
    :cond_9
    invoke-virtual {v3}, Lcom/oculus/model/StoreRoadblockModel$Builder;->build()Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 282
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 293
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public static isMalibuCategory(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 97
    const-string v0, "GEAR_VR_CONTROLLER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidAssetCategory(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lcom/oculus/model/StoreRoadblockModel;->isMalibuCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mButtonText:Lcom/oculus/model/LazyString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mButtonText:Lcom/oculus/model/LazyString;

    invoke-virtual {v0, p1}, Lcom/oculus/model/LazyString;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescriptionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {v0, p1}, Lcom/oculus/model/LazyStringWithUri;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {v0}, Lcom/oculus/model/LazyStringWithUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImageAspectRatio(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mImage:Lcom/oculus/model/LazyImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mImage:Lcom/oculus/model/LazyImage;

    invoke-virtual {v0, p1}, Lcom/oculus/model/LazyImage;->getAspectRatio(Landroid/content/Context;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mImage:Lcom/oculus/model/LazyImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mImage:Lcom/oculus/model/LazyImage;

    invoke-virtual {v0}, Lcom/oculus/model/LazyImage;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondDescriptionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {v0, p1}, Lcom/oculus/model/LazyStringWithUri;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondDescriptionUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {v0}, Lcom/oculus/model/LazyStringWithUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mTitle:Lcom/oculus/model/LazyString;

    invoke-virtual {v0, p1}, Lcom/oculus/model/LazyString;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMalibuCategory()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/model/StoreRoadblockModel;->isMalibuCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mTitle:Lcom/oculus/model/LazyString;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mDescription:Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mSecondDescription:Lcom/oculus/model/LazyStringWithUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 193
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mImage:Lcom/oculus/model/LazyImage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 194
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->mButtonText:Lcom/oculus/model/LazyString;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 195
    iget-object v0, p0, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return-void
.end method
