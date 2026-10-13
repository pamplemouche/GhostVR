.class public Lcom/oculus/localmedia/VideoMediaProvider;
.super Ljava/lang/Object;
.source "VideoMediaProvider.java"


# instance fields
.field private final VIDEO_PROJECTION:[Ljava/lang/String;

.field private mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

.field private mContext:Landroid/content/Context;

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

.field private mSupportedMimeTypeToExtension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_added"

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

    const-string v2, "_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    .line 46
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mItems:Ljava/util/ArrayList;

    .line 47
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mSupportedMimeTypeToExtension:Ljava/util/HashMap;

    .line 48
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 51
    iput-object p1, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mCachedMetadataManager:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mSupportedMimeTypeToExtension:Ljava/util/HashMap;

    .line 56
    const-string v0, "video/mp4"

    const-string v1, "mp4"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "video/m4v"

    const-string v1, "m4v"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "video/webm"

    const-string v1, "webm"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "video/mkv"

    const-string v1, "mkv"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "video/x-matroska"

    const-string v1, "mkv"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "video/x-ms-wmv"

    const-string v1, "wmv"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/oculus/localmedia/VideoMediaProvider;->scanMedia()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mItems:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method private addVideoMediaItem(Ljava/util/ArrayList;Ljava/lang/String;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 220
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping duplicate file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_1
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding external file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, p2}, Lcom/oculus/localmedia/VideoMediaProvider;->getMimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/oculus/localmedia/MediaItem;->builder()Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 228
    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/MediaItem$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, p2}, Lcom/oculus/localmedia/MediaItem$Builder;->setFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1, p3, p4}, Lcom/oculus/localmedia/MediaItem$Builder;->setDateAdded(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1, p5, p6}, Lcom/oculus/localmedia/MediaItem$Builder;->setFileSize(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem$Builder;->build()Lcom/oculus/localmedia/MediaItem;

    move-result-object v0

    .line 234
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addVideosFromPath(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    aget-object v1, v8, v0

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    invoke-direct {p0, p1, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideosFromPath(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 195
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cinemagraph.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 203
    invoke-direct {p0, v3}, Lcom/oculus/localmedia/VideoMediaProvider;->isSupportedVideoFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideoMediaItem(Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    goto :goto_1
.end method

.method private getMimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 287
    :goto_0
    return-object v0

    .line 281
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/localmedia/MediaProviderUtils;->getFileExtension(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mSupportedMimeTypeToExtension:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 287
    goto :goto_0
.end method

.method private isSupportedVideoFile(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 260
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-static {p1, v1}, Lcom/oculus/localmedia/MediaProviderUtils;->getFileExtension(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 264
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mSupportedMimeTypeToExtension:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 269
    goto :goto_0
.end method

.method private isSupportedVideoMimeType(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 251
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mSupportedMimeTypeToExtension:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 251
    goto :goto_0
.end method

.method private scanExternalStorage(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 172
    :try_start_0
    invoke-static {}, Lcom/oculus/localmedia/MediaProviderUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "External storage directory is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanning external folder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideosFromPath(Ljava/util/ArrayList;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error while scanning external storage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scanMedia()Ljava/util/ArrayList;
    .locals 9
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
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    invoke-direct {p0, v0}, Lcom/oculus/localmedia/VideoMediaProvider;->scanMediaStore(Ljava/util/ArrayList;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 87
    sget-object v6, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video media scan took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " internal video files."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    invoke-direct {p0, v0}, Lcom/oculus/localmedia/VideoMediaProvider;->scanExternalStorage(Ljava/util/ArrayList;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    sget-object v6, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video media scan took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " external video files."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v0
.end method

.method private scanMediaStore(Ljava/util/ArrayList;)V
    .locals 13
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
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oculus/localmedia/VideoMediaProvider;->VIDEO_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 113
    const-string v0, "duration"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 114
    const-string v2, "date_added"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 115
    const-string v4, "_size"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 116
    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    const-string v7, "mime_type"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    const-string v8, "width"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 119
    const-string v9, "height"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 121
    const-string v10, "Download/oculus_downloaded_videos"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2

    .line 122
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping downloaded movie : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_1
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while scanning media store : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 126
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "cinemagraph.mp4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_0

    .line 131
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 132
    invoke-direct {p0, v7}, Lcom/oculus/localmedia/VideoMediaProvider;->isSupportedVideoMimeType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 133
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported mimeType type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 159
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 137
    :cond_4
    :try_start_3
    invoke-direct {p0, v6}, Lcom/oculus/localmedia/VideoMediaProvider;->isSupportedVideoFile(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 138
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported extension for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    :cond_5
    sget-object v10, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding internal file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mimeType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/oculus/localmedia/MediaItem;->builder()Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v10

    sget-object v11, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 145
    invoke-virtual {v10, v11}, Lcom/oculus/localmedia/MediaItem$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v10

    .line 146
    invoke-virtual {v10, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setDurationSecs(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2, v3}, Lcom/oculus/localmedia/MediaItem$Builder;->setDateAdded(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v4, v5}, Lcom/oculus/localmedia/MediaItem$Builder;->setFileSize(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v6}, Lcom/oculus/localmedia/MediaItem$Builder;->setFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v8}, Lcom/oculus/localmedia/MediaItem$Builder;->setWidth(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v9}, Lcom/oculus/localmedia/MediaItem$Builder;->setHeight(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v7}, Lcom/oculus/localmedia/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem$Builder;->build()Lcom/oculus/localmedia/MediaItem;

    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 159
    :cond_6
    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
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
    .line 73
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public registerMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mSupportedMimeTypeToExtension:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mSupportedMimeTypeToExtension:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-void
.end method
