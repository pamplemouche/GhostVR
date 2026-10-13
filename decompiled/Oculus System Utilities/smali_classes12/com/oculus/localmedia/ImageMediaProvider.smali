.class public Lcom/oculus/localmedia/ImageMediaProvider;
.super Ljava/lang/Object;
.source "ImageMediaProvider.java"


# static fields
.field private static final IMAGE_THUMBNAIL_PROJECTION:[Ljava/lang/String;

.field private static sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;


# instance fields
.field private final DEBUG_OUTPUT:Z

.field private final GIF_MIMETYPE:Ljava/lang/String;

.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

.field private mHasChanged:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/localmedia/ImageMediaProvider;->IMAGE_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-direct {v0}, Lcom/oculus/localmedia/MimeTypeHelper;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    .line 53
    sget-object v0, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "image/jpeg"

    const-string v2, "jpeg"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "image/bmp"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "image/png"

    const-string v2, "png"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/oculus/localmedia/LocalMediaConfig;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v4, p0, Lcom/oculus/localmedia/ImageMediaProvider;->DEBUG_OUTPUT:Z

    .line 33
    const-string v0, "image/gif"

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->GIF_MIMETYPE:Ljava/lang/String;

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    .line 60
    iput-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    .line 61
    iput-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mItems:Ljava/util/ArrayList;

    .line 62
    iput-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    .line 63
    iput-boolean v4, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mHasChanged:Z

    .line 66
    iput-object p1, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    .line 68
    invoke-static {}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->getSingleton()Lcom/oculus/localmedia/FolderMediaCountRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    .line 70
    invoke-direct {p0}, Lcom/oculus/localmedia/ImageMediaProvider;->scanMedia()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mItems:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {p0}, Lcom/oculus/localmedia/ImageMediaProvider;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->index(Lcom/oculus/localmedia/MediaType;Ljava/util/List;)V

    .line 73
    return-void
.end method

.method private addExternalMediaItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    :try_start_0
    invoke-static {}, Lcom/oculus/localmedia/MediaProviderUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "directory":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    :cond_0
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "External storage directory is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v0    # "directory":Ljava/lang/String;
    :goto_0
    return-void

    .line 235
    .restart local v0    # "directory":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scanning external folder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/oculus/localmedia/ImageMediaProvider;->addImagesFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "directory":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while scanning external folder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addImagesFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V
    .locals 25
    .param p2, "path"    # Ljava/io/File;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    .line 268
    :cond_0
    return-void

    .line 252
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/4 v3, 0x0

    move/from16 v22, v3

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v20, v23, v22

    .line 253
    .local v20, "file":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 254
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/localmedia/ImageMediaProvider;->addImagesFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V

    .line 252
    :cond_2
    :goto_1
    add-int/lit8 v3, v22, 0x1

    move/from16 v22, v3

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "filePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/oculus/localmedia/MediaProviderUtils;->isPrivateFile(Ljava/lang/String;)Z

    move-result v19

    .line 258
    .local v19, "isPrivate":Z
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 259
    .local v21, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 260
    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 261
    move-object/from16 v0, v21

    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 262
    .local v12, "width":I
    move-object/from16 v0, v21

    iget v13, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 263
    .local v13, "height":I
    sget-object v3, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v3, v6}, Lcom/oculus/localmedia/MimeTypeHelper;->isSupportedMediaFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v10

    sget-object v3, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v3, v6}, Lcom/oculus/localmedia/MimeTypeHelper;->getMimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/oculus/localmedia/ImageMediaProvider;->addMediaItem(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;JJIILjava/lang/String;DDZ)V

    goto :goto_1
.end method

.method private addMediaItem(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;JJIILjava/lang/String;DDZ)V
    .locals 8
    .param p2, "internalId"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "thumbnailPath"    # Ljava/lang/String;
    .param p5, "dateAdded"    # J
    .param p7, "fileSize"    # J
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;
    .param p12, "latitude"    # D
    .param p14, "longitude"    # D
    .param p16, "isPrivate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJII",
            "Ljava/lang/String;",
            "DDZ)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/localmedia/MediaItem;

    .line 286
    .local v3, "i":Lcom/oculus/localmedia/MediaItem;
    invoke-virtual {v3}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    .end local v3    # "i":Lcom/oculus/localmedia/MediaItem;
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    iget-object v5, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    invoke-virtual {v5}, Lcom/oculus/localmedia/LocalMediaConfig;->isTestMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    invoke-virtual {v5, p3}, Lcom/oculus/localmedia/LocalMediaConfig;->isSupportedPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    :cond_3
    const-string v5, "image/gif"

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_4

    .line 298
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping missing media item for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_4
    invoke-static {}, Lcom/oculus/localmedia/MediaItem;->builder()Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    sget-object v6, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    .line 302
    invoke-virtual {v5, v6}, Lcom/oculus/localmedia/MediaItem$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 303
    invoke-virtual {v5, p2}, Lcom/oculus/localmedia/MediaItem$Builder;->setInternalId(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 304
    invoke-virtual {v5, p3}, Lcom/oculus/localmedia/MediaItem$Builder;->setFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 305
    invoke-virtual {v5, p4}, Lcom/oculus/localmedia/MediaItem$Builder;->setThumbnailFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 306
    invoke-virtual {v5, p5, p6}, Lcom/oculus/localmedia/MediaItem$Builder;->setDateAdded(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 307
    move-wide v0, p7

    invoke-virtual {v5, v0, v1}, Lcom/oculus/localmedia/MediaItem$Builder;->setFileSize(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 308
    move/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setWidth(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 309
    move/from16 v0, p10

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setHeight(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 310
    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 311
    move/from16 v0, p16

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setIsPrivate(Z)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 312
    move-wide/from16 v0, p12

    invoke-virtual {v5, v0, v1}, Lcom/oculus/localmedia/MediaItem$Builder;->setLatitude(D)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 313
    move-wide/from16 v0, p14

    invoke-virtual {v5, v0, v1}, Lcom/oculus/localmedia/MediaItem$Builder;->setLongitude(D)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v5

    .line 314
    invoke-virtual {v5}, Lcom/oculus/localmedia/MediaItem$Builder;->build()Lcom/oculus/localmedia/MediaItem;

    move-result-object v4

    .line 315
    .local v4, "item":Lcom/oculus/localmedia/MediaItem;
    if-nez v4, :cond_5

    .line 316
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping bogus media item for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 319
    :cond_5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private addMediaItems()Ljava/util/ArrayList;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v29, "imageIdToThumbnailPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/oculus/localmedia/ImageMediaProvider;->IMAGE_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 150
    .local v19, "cursor":Landroid/database/Cursor;
    if-eqz v19, :cond_0

    .line 151
    const-string v2, "image_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 152
    .local v33, "internalIdColumnIndex":I
    const-string v2, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 153
    .local v40, "thumbnailPathColumnIndex":I
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v38

    .line 154
    .local v38, "thumbnailCount":I
    const/16 v39, 0x0

    .local v39, "thumbnailIndex":I
    :goto_0
    move/from16 v0, v39

    move/from16 v1, v38

    if-ge v0, v1, :cond_0

    .line 155
    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/lit8 v39, v39, 0x1

    goto :goto_0

    .line 160
    .end local v33    # "internalIdColumnIndex":I
    .end local v38    # "thumbnailCount":I
    .end local v39    # "thumbnailIndex":I
    .end local v40    # "thumbnailPathColumnIndex":I
    :cond_0
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v34, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
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

    move-result-object v19

    .line 168
    if-nez v19, :cond_1

    .line 169
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "ImageMediaProvider::getAllSupportedItems failed to get imageCursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_1
    return-object v34

    .line 173
    :cond_1
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 174
    .restart local v33    # "internalIdColumnIndex":I
    const-string v2, "mime_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 175
    .local v31, "imageMimeTypeColumnIndex":I
    const-string v2, "width"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 176
    .local v32, "imageWidthColumnIndex":I
    const-string v2, "height"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 177
    .local v28, "imageHeightColumnIndex":I
    const-string v2, "latitude"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 178
    .local v35, "latitudeColumnIndex":I
    const-string v2, "longitude"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 179
    .local v36, "longitudeColumnIndex":I
    const-string v2, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 180
    .local v26, "imageColumnIndex":I
    const-string v2, "date_added"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 181
    .local v22, "dateAddedColumnIndex":I
    const-string v2, "datetaken"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 182
    .local v23, "dateTakenColumnIndex":I
    const-string v2, "_size"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 184
    .local v37, "sizeColumnIndex":I
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v27

    .line 185
    .local v27, "imageCount":I
    const/16 v30, 0x0

    .local v30, "imageIndex":I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 186
    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 187
    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 188
    .local v4, "internalId":I
    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 189
    .local v11, "imageWidth":I
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 190
    .local v12, "imageHeight":I
    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "mimeType":Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "filePath":Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 193
    .local v20, "dateAdded":J
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v42, 0x3e8

    div-long v24, v2, v42

    .line 194
    .local v24, "dateTaken":J
    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 195
    .local v9, "fileSize":J
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    .line 196
    .local v14, "latitude":D
    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 197
    .local v16, "longitude":D
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 199
    .local v6, "thumbnailPath":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-lez v2, :cond_2

    move-wide/from16 v7, v24

    :goto_3
    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v34

    invoke-direct/range {v2 .. v18}, Lcom/oculus/localmedia/ImageMediaProvider;->addMediaItem(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;JJIILjava/lang/String;DDZ)V

    .line 185
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    :cond_2
    move-wide/from16 v7, v20

    .line 199
    goto :goto_3

    .line 201
    .end local v4    # "internalId":I
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "thumbnailPath":Ljava/lang/String;
    .end local v9    # "fileSize":J
    .end local v11    # "imageWidth":I
    .end local v12    # "imageHeight":I
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "latitude":D
    .end local v16    # "longitude":D
    .end local v20    # "dateAdded":J
    .end local v24    # "dateTaken":J
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private addPrivateMediaItems(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    :try_start_0
    iget-object v3, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oculus/localmedia/MediaProviderUtils;->getHiddenFolders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 213
    .local v1, "folderPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, "path":Ljava/lang/String;
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scanning hidden folders : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/oculus/localmedia/ImageMediaProvider;->addImagesFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v1    # "folderPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error while scanning hidden folders : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/oculus/localmedia/ImageMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v0, p0}, Lcom/oculus/localmedia/MimeTypeHelper;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private scanMedia()Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 96
    .local v20, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/oculus/localmedia/ImageMediaProvider;->addMediaItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 97
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 98
    .local v22, "stopTime":J
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 99
    .local v14, "numInternalItems":I
    sub-long v8, v22, v20

    .line 101
    .local v8, "internalItemsTime":J
    const/16 v16, 0x0

    .line 102
    .local v16, "numPanos":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oculus/localmedia/MediaItem;

    .line 103
    .local v10, "item":Lcom/oculus/localmedia/MediaItem;
    invoke-virtual {v10}, Lcom/oculus/localmedia/MediaItem;->getPresentationFormat()Ljava/lang/String;

    move-result-object v24

    const-string v25, "SPHERICAL"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 107
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 111
    .end local v10    # "item":Lcom/oculus/localmedia/MediaItem;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 112
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oculus/localmedia/ImageMediaProvider;->addPrivateMediaItems(Ljava/util/ArrayList;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 114
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v13, v19, v14

    .line 115
    .local v13, "numHiddenItems":I
    sub-long v6, v22, v20

    .line 117
    .local v6, "hiddenItemsTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 118
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oculus/localmedia/ImageMediaProvider;->addExternalMediaItems(Ljava/util/ArrayList;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 120
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v12, v19, v13

    .line 121
    .local v12, "numExternalItems":I
    sub-long v4, v22, v20

    .line 123
    .local v4, "externalItemsTime":J
    sget-object v19, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v24, "Image media scan found %s images and %s panos in %d msec."

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v19, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v24, "Image media scan found %s hidden images in %d msec."

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v19, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v24, "Image media scan found %s external images in %d msec."

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oculus/localmedia/LocalMediaConfig;->isTestMode()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 129
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 130
    .local v15, "numItems":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/ImageMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oculus/localmedia/LocalMediaConfig;->getIncludeFolders()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 131
    .local v18, "path":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v11, v1, v2}, Lcom/oculus/localmedia/ImageMediaProvider;->addImagesFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V

    goto :goto_1

    .line 133
    .end local v18    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v17, v19, v15

    .line 134
    .local v17, "numTestItems":I
    sget-object v19, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v24, "Image media scan found %s test images."

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v15    # "numItems":I
    .end local v17    # "numTestItems":I
    :cond_3
    return-object v11
.end method


# virtual methods
.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasChanged()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mHasChanged:Z

    return v0
.end method

.method public onChange()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/localmedia/ImageMediaProvider;->mHasChanged:Z

    .line 89
    return-void
.end method
