.class public Lcom/oculus/localmedia/VideoMediaProvider;
.super Ljava/lang/Object;
.source "VideoMediaProvider.java"


# static fields
.field private static final CINEMAGRAPH_FILENAME:Ljava/lang/String; = "cinemagraph.mp4"

.field private static final DOWNLOADED_MOVIES_PATH:Ljava/lang/String; = "Download/oculus_downloaded_videos"

.field private static final VIDEO_THUMBNAIL_PROJECTION:[Ljava/lang/String;

.field private static sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;


# instance fields
.field private final VIDEO_PROJECTION:[Ljava/lang/String;

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
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->VIDEO_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-direct {v0}, Lcom/oculus/localmedia/MimeTypeHelper;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    .line 49
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/mp4"

    const-string v2, "mp4"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/m4v"

    const-string v2, "m4v"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/3gp"

    const-string v2, "3gp"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/3gpp"

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/3gpp2"

    const-string v2, "3g2"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/ts"

    const-string v2, "ts"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/mp2ts"

    const-string v2, "ts"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/MP2T"

    const-string v2, "ts"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/webm"

    const-string v2, "webm"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/mkv"

    const-string v2, "mkv"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/x-matroska"

    const-string v2, "mkv"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/wmv"

    const-string v2, "wmv"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/x-ms-wmv"

    const-string v2, "wmv"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/asf"

    const-string v2, "asf"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/x-ms-asf"

    const-string v2, "asf"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/avi"

    const-string v2, "avi"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/x-msvideo"

    const-string v2, "avi"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/flv"

    const-string v2, "flv"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    const-string v1, "video/x-flv"

    const-string v2, "flv"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/MimeTypeHelper;->registerMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/oculus/localmedia/LocalMediaConfig;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

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

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    .line 71
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    .line 72
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mItems:Ljava/util/ArrayList;

    .line 73
    iput-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    .line 74
    iput-boolean v4, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mHasChanged:Z

    .line 77
    iput-object p1, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    .line 79
    invoke-static {}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->getSingleton()Lcom/oculus/localmedia/FolderMediaCountRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    .line 81
    invoke-direct {p0}, Lcom/oculus/localmedia/VideoMediaProvider;->scanMedia()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mItems:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mFolderMediaCountRegistry:Lcom/oculus/localmedia/FolderMediaCountRegistry;

    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {p0}, Lcom/oculus/localmedia/VideoMediaProvider;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->index(Lcom/oculus/localmedia/MediaType;Ljava/util/List;)V

    .line 84
    return-void
.end method

.method private addVideoMediaItem(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;JJIIILjava/lang/String;Z)V
    .locals 7
    .param p2, "internalId"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "thumbnailPath"    # Ljava/lang/String;
    .param p5, "dateAdded"    # J
    .param p7, "fileSize"    # J
    .param p9, "videoDurationInSeconds"    # I
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "mimeType"    # Ljava/lang/String;
    .param p13, "isPrivate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJIII",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/localmedia/MediaItem;

    .line 284
    .local v2, "i":Lcom/oculus/localmedia/MediaItem;
    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping duplicate file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v2    # "i":Lcom/oculus/localmedia/MediaItem;
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    iget-object v4, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mLocalMediaConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    invoke-virtual {v4, p3}, Lcom/oculus/localmedia/LocalMediaConfig;->isSupportedPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_4

    .line 294
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping missing media item for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_4
    if-eqz p12, :cond_5

    .line 298
    :goto_1
    invoke-static {}, Lcom/oculus/localmedia/MediaItem;->builder()Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    sget-object v5, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 299
    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/MediaItem$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 300
    invoke-virtual {v4, p2}, Lcom/oculus/localmedia/MediaItem$Builder;->setInternalId(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 301
    move/from16 v0, p9

    invoke-virtual {v4, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setDurationSecs(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 302
    invoke-virtual {v4, p5, p6}, Lcom/oculus/localmedia/MediaItem$Builder;->setDateAdded(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 303
    invoke-virtual {v4, p7, p8}, Lcom/oculus/localmedia/MediaItem$Builder;->setFileSize(J)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 304
    invoke-virtual {v4, p3}, Lcom/oculus/localmedia/MediaItem$Builder;->setFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 305
    invoke-virtual {v4, p4}, Lcom/oculus/localmedia/MediaItem$Builder;->setThumbnailFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 306
    move/from16 v0, p10

    invoke-virtual {v4, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setWidth(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 307
    move/from16 v0, p11

    invoke-virtual {v4, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setHeight(I)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 308
    move-object/from16 v0, p12

    invoke-virtual {v4, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 309
    move/from16 v0, p13

    invoke-virtual {v4, v0}, Lcom/oculus/localmedia/MediaItem$Builder;->setIsPrivate(Z)Lcom/oculus/localmedia/MediaItem$Builder;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Lcom/oculus/localmedia/MediaItem$Builder;->build()Lcom/oculus/localmedia/MediaItem;

    move-result-object v3

    .line 311
    .local v3, "item":Lcom/oculus/localmedia/MediaItem;
    if-nez v3, :cond_6

    .line 312
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bogus media item for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 297
    .end local v3    # "item":Lcom/oculus/localmedia/MediaItem;
    :cond_5
    sget-object v4, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v4, p3}, Lcom/oculus/localmedia/MimeTypeHelper;->getMimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p12

    goto :goto_1

    .line 315
    .restart local v3    # "item":Lcom/oculus/localmedia/MediaItem;
    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private addVideosFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V
    .locals 20
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
    .line 254
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    .line 272
    :cond_0
    return-void

    .line 257
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v2, v18, v17

    .line 258
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 259
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideosFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V

    .line 257
    :cond_2
    :goto_1
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "filePath":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cinemagraph.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 265
    invoke-static {v6}, Lcom/oculus/localmedia/MediaProviderUtils;->isPrivateFile(Ljava/lang/String;)Z

    move-result v16

    .line 266
    .local v16, "isPrivate":Z
    sget-object v3, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v3, v6}, Lcom/oculus/localmedia/MimeTypeHelper;->isSupportedMediaFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding external file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v16}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideoMediaItem(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;JJIIILjava/lang/String;Z)V

    goto :goto_1
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v0, p0}, Lcom/oculus/localmedia/MimeTypeHelper;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private scanExternalStorage(Ljava/util/ArrayList;)V
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
    .line 217
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    :try_start_0
    invoke-static {}, Lcom/oculus/localmedia/MediaProviderUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "directory":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "External storage directory is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0    # "directory":Ljava/lang/String;
    :goto_0
    return-void

    .line 223
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

    .line 224
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideosFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v0    # "directory":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while scanning external storage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scanHiddenFolders(Ljava/util/ArrayList;)V
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
    .line 237
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    :try_start_0
    iget-object v3, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oculus/localmedia/MediaProviderUtils;->getHiddenFolders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 238
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

    .line 239
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

    .line 240
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideosFromPath(Ljava/util/ArrayList;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v1    # "folderPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 243
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

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private scanMedia()Ljava/util/ArrayList;
    .locals 21
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
    .line 107
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 110
    .local v12, "startTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oculus/localmedia/VideoMediaProvider;->scanMediaStore(Ljava/util/ArrayList;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 112
    .local v14, "stopTime":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 113
    .local v11, "numInternalItems":I
    sub-long v6, v14, v12

    .line 115
    .local v6, "internalItemsTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oculus/localmedia/VideoMediaProvider;->scanExternalStorage(Ljava/util/ArrayList;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 118
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    sub-int v9, v16, v11

    .line 119
    .local v9, "numExternalItems":I
    sub-long v2, v14, v12

    .line 121
    .local v2, "externalItemsTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 122
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oculus/localmedia/VideoMediaProvider;->scanHiddenFolders(Ljava/util/ArrayList;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 124
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v17, v9, v11

    sub-int v10, v16, v17

    .line 125
    .local v10, "numHiddenItems":I
    sub-long v4, v14, v12

    .line 127
    .local v4, "hiddenItemsTime":J
    sget-object v16, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v17, "Video media scan found %s internal videos in %d msec."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v16, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v17, "Video media scan found %s external videos in %d msec."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v16, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v17, "Video media scan found %s hidden videos in %d msec."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v8
.end method

.method private scanMediaStore(Ljava/util/ArrayList;)V
    .locals 28
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
    .line 141
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v27, "videoIdToThumbnailPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/oculus/localmedia/VideoMediaProvider;->VIDEO_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 148
    .local v17, "cursor":Landroid/database/Cursor;
    if-eqz v17, :cond_0

    .line 149
    const-string v2, "video_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 150
    .local v23, "internalIdColumnIndex":I
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 151
    .local v26, "thumbnailPathColumnIndex":I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 152
    .local v24, "thumbnailCount":I
    const/16 v25, 0x0

    .local v25, "thumbnailIndex":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 153
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 154
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 158
    .end local v23    # "internalIdColumnIndex":I
    .end local v24    # "thumbnailCount":I
    .end local v25    # "thumbnailIndex":I
    .end local v26    # "thumbnailPathColumnIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/VideoMediaProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/localmedia/VideoMediaProvider;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 165
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 166
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 167
    .local v5, "internalId":I
    const-string v2, "duration"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v12, v2, 0x3e8

    .line 168
    .local v12, "videoDurationInSeconds":I
    const-string v2, "date_added"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 169
    .local v18, "dateAdded":J
    const-string v2, "datetaken"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long v20, v2, v8

    .line 170
    .local v20, "dateTaken":J
    const-string v2, "_size"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 171
    .local v10, "fileSize":J
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "filePath":Ljava/lang/String;
    const-string v2, "mime_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 173
    .local v15, "mimeType":Ljava/lang/String;
    const-string v2, "width"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 174
    .local v13, "width":I
    const-string v2, "height"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 175
    .local v14, "height":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 177
    .local v7, "thumbnailPath":Ljava/lang/String;
    const-string v2, "Download/oculus_downloaded_videos"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 178
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping downloaded movie : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 201
    .end local v5    # "internalId":I
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "thumbnailPath":Ljava/lang/String;
    .end local v10    # "fileSize":J
    .end local v12    # "videoDurationInSeconds":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v18    # "dateAdded":J
    .end local v20    # "dateTaken":J
    :catch_0
    move-exception v22

    .line 202
    .local v22, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while scanning media store : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    if-eqz v17, :cond_2

    .line 205
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 208
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 182
    .restart local v5    # "internalId":I
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v7    # "thumbnailPath":Ljava/lang/String;
    .restart local v10    # "fileSize":J
    .restart local v12    # "videoDurationInSeconds":I
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v18    # "dateAdded":J
    .restart local v20    # "dateTaken":J
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cinemagraph.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 187
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 188
    sget-object v2, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v2, v15}, Lcom/oculus/localmedia/MimeTypeHelper;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 189
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unsupported mimeType type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 204
    .end local v5    # "internalId":I
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "thumbnailPath":Ljava/lang/String;
    .end local v10    # "fileSize":J
    .end local v12    # "videoDurationInSeconds":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v18    # "dateAdded":J
    .end local v20    # "dateTaken":J
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_4

    .line 205
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 193
    .restart local v5    # "internalId":I
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v7    # "thumbnailPath":Ljava/lang/String;
    .restart local v10    # "fileSize":J
    .restart local v12    # "videoDurationInSeconds":I
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v18    # "dateAdded":J
    .restart local v20    # "dateTaken":J
    :cond_5
    :try_start_3
    sget-object v2, Lcom/oculus/localmedia/VideoMediaProvider;->sMimeTypeHelper:Lcom/oculus/localmedia/MimeTypeHelper;

    invoke-virtual {v2, v6}, Lcom/oculus/localmedia/MimeTypeHelper;->isSupportedMediaFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 194
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unsupported extension for file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 198
    :cond_6
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding internal file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-lez v2, :cond_7

    move-wide/from16 v8, v20

    :goto_3
    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v16}, Lcom/oculus/localmedia/VideoMediaProvider;->addVideoMediaItem(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;JJIIILjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v8, v18

    goto :goto_3

    .line 204
    .end local v5    # "internalId":I
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "thumbnailPath":Ljava/lang/String;
    .end local v10    # "fileSize":J
    .end local v12    # "videoDurationInSeconds":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v18    # "dateAdded":J
    .end local v20    # "dateTaken":J
    :cond_8
    if-eqz v17, :cond_2

    .line 205
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
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
    .line 87
    iget-object v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasChanged()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mHasChanged:Z

    return v0
.end method

.method public onChange()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/localmedia/VideoMediaProvider;->mHasChanged:Z

    .line 100
    return-void
.end method
