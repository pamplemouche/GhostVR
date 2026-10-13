.class public Lcom/oculus/localmedia/ImageMediaProvider;
.super Ljava/lang/Object;
.source "ImageMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;
    }
.end annotation


# instance fields
.field private final FILE_PROJECTION:[Ljava/lang/String;

.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field private mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

.field private mContext:Landroid/content/Context;

.field private mItems:Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->FILE_PROJECTION:[Ljava/lang/String;

    .line 53
    iput-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    .line 54
    iput-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 55
    iput-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mItems:Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;

    .line 68
    iput-object p1, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 70
    invoke-direct {p0}, Lcom/oculus/localmedia/ImageMediaProvider;->scanMedia()Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mItems:Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;

    .line 71
    return-void
.end method

.method private addAdditionalSupportedFiles(Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;)V
    .locals 20

    .prologue
    .line 261
    const-string v5, "media_type=0"

    .line 262
    const/4 v6, 0x0

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/localmedia/ImageMediaProvider;->FILE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 265
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 266
    const-string v2, "date_added"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 267
    const-string v2, "_size"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 268
    const-string v2, "mime_type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 270
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 272
    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move/from16 v0, v19

    if-ge v13, v0, :cond_2

    .line 273
    invoke-interface {v14, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 275
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 277
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 278
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 279
    const-string v2, "_nz.jpg.x"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".tga"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    :cond_0
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/oculus/localmedia/ImageMediaProvider;->addMediaItem(Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;Ljava/lang/String;ZJJIILjava/lang/String;)V

    .line 272
    :cond_1
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    .line 283
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 284
    return-void
.end method

.method private addMediaItem(Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;Ljava/lang/String;ZJJIILjava/lang/String;)V
    .locals 4

    .prologue
    .line 237
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->panos:Ljava/util/ArrayList;

    move-object v1, v0

    .line 238
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 239
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_1
    return-void

    .line 237
    :cond_1
    iget-object v0, p1, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->images:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    .line 243
    :cond_2
    invoke-static {}, Lcom/oculus/localmedia/MediaItem;->builder()Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v2

    if-eqz p3, :cond_3

    sget-object v0, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    .line 244
    :goto_2
    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p2}, Lcom/oculus/localmedia/MediaItem$Builder;->setFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p4, p5}, Lcom/oculus/localmedia/MediaItem$Builder;->setDateAdded(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p6, p7}, Lcom/oculus/localmedia/MediaItem$Builder;->setFileSize(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p8}, Lcom/oculus/localmedia/MediaItem$Builder;->setWidth(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p9}, Lcom/oculus/localmedia/MediaItem$Builder;->setHeight(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p10}, Lcom/oculus/localmedia/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem$Builder;->build()Lcom/oculus/localmedia/MediaItem;

    move-result-object v0

    .line 252
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    :cond_3
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    goto :goto_2
.end method

.method private addMediaItems(Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;)V
    .locals 22

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/localmedia/ImageMediaProvider;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 114
    if-nez v14, :cond_0

    .line 115
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "ImageMediaProvider::getAllSupportedItems failed to get imageCursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v2, "mime_type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 120
    const-string v2, "width"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 121
    const-string v2, "height"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 122
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 123
    const-string v2, "date_added"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 124
    const-string v2, "_size"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 126
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 127
    const/4 v2, 0x0

    move v13, v2

    :goto_1
    move/from16 v0, v21

    if-ge v13, v0, :cond_3

    .line 128
    invoke-interface {v14, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 130
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 131
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 132
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 133
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 135
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oculus/localmedia/ImageMediaProvider;->isWhitelistedPano(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Lcom/oculus/localmedia/ImageMediaProvider;->isLikelyPano(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v10, v11}, Lcom/oculus/localmedia/ImageMediaProvider;->isEquirectPano(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v5, 0x1

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 138
    invoke-direct/range {v2 .. v12}, Lcom/oculus/localmedia/ImageMediaProvider;->addMediaItem(Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;Ljava/lang/String;ZJJIILjava/lang/String;)V

    .line 127
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_1

    .line 137
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 140
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private isBlacklistedPano(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "oculus/screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isEquirectPano(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 173
    if-eqz p2, :cond_1

    const-string v1, "image/jpeg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 178
    :cond_2
    div-int v1, p3, p4

    .line 179
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    invoke-virtual {v0, p1}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->get(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_4

    .line 188
    sget-object v1, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got DB cache entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is360()Z

    move-result v0

    goto :goto_0

    .line 193
    :cond_4
    invoke-static {p1}, Lcom/oculus/localmedia/MediaProviderUtils;->containsEquirectHeader(Ljava/lang/String;)Z

    move-result v0

    .line 194
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadata;->builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v1

    sget-object v2, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIs360(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    invoke-virtual {v2, p1, v1}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->set(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V

    .line 196
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set DB cache entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isLikelyPano(Ljava/lang/String;II)Z
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/16 v3, 0x400

    const/4 v0, 0x1

    .line 208
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/oculus/localmedia/ImageMediaProvider;->isBlacklistedPano(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 222
    :cond_1
    :goto_0
    return v0

    .line 211
    :cond_2
    if-ne p2, p3, :cond_3

    if-ge p2, v3, :cond_1

    .line 214
    :cond_3
    div-int v2, p2, p3

    .line 215
    if-eq v2, v5, :cond_4

    if-ne v2, v4, :cond_5

    :cond_4
    if-ge p3, v3, :cond_1

    .line 218
    :cond_5
    div-int v2, p3, p2

    .line 219
    if-eq v2, v5, :cond_6

    if-ne v2, v4, :cond_7

    :cond_6
    if-ge p2, v3, :cond_1

    :cond_7
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method private isWhitelistedPano(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "oculus/360photos/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vr.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scanMedia()Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;
    .locals 9

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    new-instance v2, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;

    invoke-direct {v2, p0}, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;-><init>(Lcom/oculus/localmedia/ImageMediaProvider;)V

    .line 91
    invoke-direct {p0, v2}, Lcom/oculus/localmedia/ImageMediaProvider;->addMediaItems(Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;)V

    .line 92
    invoke-direct {p0, v2}, Lcom/oculus/localmedia/ImageMediaProvider;->addAdditionalSupportedFiles(Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 95
    iget-object v3, v2, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->images:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, v2, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->panos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 96
    sget-object v6, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Images media scan took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v0, v4, v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec, and found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " files ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->images:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " images and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->panos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " panos)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v2
.end method


# virtual methods
.method public getItems(Lcom/oculus/localmedia/MediaType;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/localmedia/MediaType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/oculus/localmedia/ImageMediaProvider$1;->$SwitchMap$com$oculus$localmedia$MediaType:[I

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mItems:Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;

    iget-object v0, v0, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->images:Ljava/util/ArrayList;

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mItems:Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;

    iget-object v0, v0, Lcom/oculus/localmedia/ImageMediaProvider$ScanMediaResult;->panos:Ljava/util/ArrayList;

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
