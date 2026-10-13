.class public Lcom/oculus/localmedia/LocalMediaManager;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"


# static fields
.field public static final DOWNLOAD_FOLDER:Ljava/lang/String;

.field public static final SDCARD_FOLDER:Ljava/lang/String;

.field public static final STORAGE_FOLDER:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field public static sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

.field public static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

.field private mImageMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

.field private mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

.field private mVideoMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/oculus/localmedia/LocalMediaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-static {}, Lcom/oculus/localmedia/LocalMediaManager;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/LocalMediaManager;->STORAGE_FOLDER:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/LocalMediaManager;->DOWNLOAD_FOLDER:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/oculus/localmedia/MediaProviderUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/LocalMediaManager;->SDCARD_FOLDER:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "Could invoke nativeInit() method, only needed by VrShell panel apps."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    .line 73
    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 74
    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    .line 75
    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 78
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(IJ)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/oculus/localmedia/LocalMediaManager;->onRefreshComplete(IJ)V

    return-void
.end method

.method static synthetic access$100(ILjava/lang/String;J)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/localmedia/LocalMediaManager;->onQueryComplete(ILjava/lang/String;J)V

    return-void
.end method

.method private addIfFolderPathMatches(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 435
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_1
    return-void
.end method

.method private createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;
    .locals 2

    .prologue
    .line 371
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/localmedia/FolderItem;

    move-result-object v0

    return-object v0
.end method

.method private createFolderItem(Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/localmedia/FolderItem;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/oculus/localmedia/FolderItem;->builder()Lcom/oculus/localmedia/FolderItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/localmedia/FolderItem$Builder;->setName(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oculus/localmedia/FolderItem$Builder;->setPath(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/oculus/localmedia/FolderItem$Builder;->setDateAdded(J)Lcom/oculus/localmedia/FolderItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/localmedia/FolderItem$Builder;->build()Lcom/oculus/localmedia/FolderItem;

    move-result-object v0

    return-object v0
.end method

.method private getMediaItemsByType(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    invoke-virtual {v1}, Lcom/oculus/localmedia/VideoMediaProvider;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 396
    :cond_0
    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/ImageMediaProvider;->getItems(Lcom/oculus/localmedia/MediaType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 399
    :cond_1
    sget-object v1, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/ImageMediaProvider;->getItems(Lcom/oculus/localmedia/MediaType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    :cond_2
    return-object v0
.end method

.method private getMediaItemsByTypeAndFolder(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    if-nez p2, :cond_1

    .line 414
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    invoke-virtual {v1}, Lcom/oculus/localmedia/VideoMediaProvider;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/oculus/localmedia/LocalMediaManager;->addIfFolderPathMatches(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 421
    :cond_2
    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/ImageMediaProvider;->getItems(Lcom/oculus/localmedia/MediaType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/oculus/localmedia/LocalMediaManager;->addIfFolderPathMatches(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 424
    :cond_3
    sget-object v1, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/ImageMediaProvider;->getItems(Lcom/oculus/localmedia/MediaType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/oculus/localmedia/LocalMediaManager;->addIfFolderPathMatches(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 461
    if-nez p0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-object v0

    .line 464
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 465
    invoke-static {}, Lcom/oculus/localmedia/MediaProviderUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    :cond_2
    const-string v0, "/"

    goto :goto_0

    .line 468
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubFolders(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    if-eqz p1, :cond_2

    .line 331
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    :cond_0
    const-string v0, "Internal Storage"

    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->SDCARD_FOLDER:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 335
    const-string v0, "SD Card"

    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->SDCARD_FOLDER:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_1
    const-string v0, "My Downloads"

    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->DOWNLOAD_FOLDER:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_2
    return-object v1

    .line 344
    :cond_3
    invoke-static {p1}, Lcom/oculus/localmedia/LocalMediaManager;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_4

    .line 346
    const-string v2, ".."

    invoke-direct {p0, v2, v0}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 352
    if-eqz v2, :cond_2

    .line 353
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 354
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 355
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {p0, v5, v6, v8, v9}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/localmedia/FolderItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {v0, p0}, Lcom/oculus/localmedia/LocalMediaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    .line 90
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 99
    invoke-static {p0}, Lcom/oculus/localmedia/LocalMediaManager;->init(Landroid/content/Context;)V

    .line 100
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oculus/localmedia/LocalMediaManager;->initMediaProviders(IZ)V

    .line 101
    return-void
.end method

.method private declared-synchronized initMediaProviders(IZ)V
    .locals 3

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 112
    :cond_0
    new-instance v0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;-><init>(Landroid/content/Context;Lcom/oculus/localmedia/MediaType;)V

    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 113
    new-instance v0, Lcom/oculus/localmedia/VideoMediaProvider;

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/VideoMediaProvider;-><init>(Landroid/content/Context;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V

    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    .line 116
    :cond_1
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    .line 118
    :cond_3
    new-instance v0, Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;-><init>(Landroid/content/Context;Lcom/oculus/localmedia/MediaType;)V

    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 119
    new-instance v0, Lcom/oculus/localmedia/ImageMediaProvider;

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/ImageMediaProvider;-><init>(Landroid/content/Context;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V

    iput-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_4
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isFile(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 447
    if-nez p0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeInit()V
.end method

.method private static native onQueryComplete(ILjava/lang/String;J)V
.end method

.method private static native onRefreshComplete(IJ)V
.end method

.method public static query(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaQuery;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 199
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {v2, p0}, Lcom/oculus/localmedia/LocalMediaManager;->queryInternal(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v2

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 201
    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v0, v4, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v2
.end method

.method public static query(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    :try_start_0
    invoke-static {}, Lcom/oculus/localmedia/MediaQuery;->builder()Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-static {p0}, Lcom/oculus/localmedia/MediaQuery$Builder;->fromJson(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;->build()Lcom/oculus/localmedia/MediaQuery;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->query(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaResponse;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured while parsing query :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v1, Lcom/oculus/localmedia/MediaResponse;

    invoke-direct {v1}, Lcom/oculus/localmedia/MediaResponse;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/MediaResponse;->setError(Ljava/lang/String;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaResponse;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private queryInternal(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 2

    .prologue
    .line 212
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->initMediaProviders(IZ)V

    .line 214
    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->queryMediaByFilePath(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:I

    if-lez v0, :cond_1

    .line 217
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->queryMediaByMediaId(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->queryMedia(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private queryMediaByFilePath(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 5

    .prologue
    .line 229
    new-instance v2, Lcom/oculus/localmedia/MediaResponse;

    invoke-direct {v2}, Lcom/oculus/localmedia/MediaResponse;-><init>()V

    .line 230
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    invoke-direct {p0, v0}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    iget-object v1, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 233
    iget-object v3, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 235
    :goto_0
    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/oculus/localmedia/MediaItem;->prepare(Landroid/content/ContentResolver;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V

    .line 236
    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/MediaResponse;->addMediaItem(Lcom/oculus/localmedia/MediaItem;)V

    .line 237
    return-object v2

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    goto :goto_0

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect local file specified, path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private queryMediaByMediaId(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 5

    .prologue
    .line 250
    new-instance v2, Lcom/oculus/localmedia/MediaResponse;

    invoke-direct {v2}, Lcom/oculus/localmedia/MediaResponse;-><init>()V

    .line 251
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    invoke-direct {p0, v0}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    iget v1, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:I

    if-lez v1, :cond_2

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 254
    iget v3, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:I

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 256
    :goto_0
    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/oculus/localmedia/MediaItem;->prepare(Landroid/content/ContentResolver;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V

    .line 257
    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/MediaResponse;->addMediaItem(Lcom/oculus/localmedia/MediaItem;)V

    .line 258
    return-object v2

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect local file specified, mediaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static refresh(I)V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->initMediaProviders(IZ)V

    .line 151
    return-void
.end method


# virtual methods
.method public queryMedia(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 272
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    if-gez v0, :cond_0

    .line 319
    :goto_0
    return-object v4

    .line 275
    :cond_0
    new-instance v5, Lcom/oculus/localmedia/MediaResponse;

    invoke-direct {v5}, Lcom/oculus/localmedia/MediaResponse;-><init>()V

    .line 278
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    iget-object v1, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByTypeAndFolder(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 279
    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/localmedia/LocalMediaManager;->getSubFolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 282
    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    iget-boolean v1, p1, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    invoke-static {v8, v0, v1}, Lcom/oculus/localmedia/FolderItem;->sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V

    .line 283
    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    iget-boolean v1, p1, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    invoke-static {v7, v0, v1}, Lcom/oculus/localmedia/MediaItem;->sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V

    .line 286
    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 288
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int v9, v0, v3

    .line 289
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->Size:I

    add-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 290
    if-le v1, v10, :cond_2

    .line 291
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect pagination data, index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/oculus/localmedia/MediaQuery;->Size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 286
    goto :goto_1

    :cond_2
    move v6, v1

    .line 295
    :goto_2
    if-gt v6, v10, :cond_5

    if-ge v6, v9, :cond_5

    .line 296
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 297
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/FolderItem;

    .line 298
    invoke-virtual {v0, p0, p1}, Lcom/oculus/localmedia/FolderItem;->prepare(Lcom/oculus/localmedia/LocalMediaManager;Lcom/oculus/localmedia/MediaQuery;)V

    .line 299
    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/MediaResponse;->addFolderItem(Lcom/oculus/localmedia/FolderItem;)V

    .line 295
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 301
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v6, v0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 302
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    .line 303
    :goto_4
    iget-object v11, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Lcom/oculus/localmedia/MediaItem;->prepare(Landroid/content/ContentResolver;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V

    .line 304
    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/MediaResponse;->addMediaItem(Lcom/oculus/localmedia/MediaItem;)V

    goto :goto_3

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMetadataCache:Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    goto :goto_4

    .line 309
    :cond_5
    add-int/lit8 v0, v9, -0x1

    if-ge v10, v0, :cond_6

    const/4 v2, 0x1

    .line 310
    :cond_6
    if-lez v1, :cond_7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 311
    :goto_5
    if-eqz v2, :cond_8

    add-int/lit8 v0, v10, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_6
    new-instance v2, Lcom/oculus/localmedia/MediaPagination$Builder;

    invoke-direct {v2}, Lcom/oculus/localmedia/MediaPagination$Builder;-><init>()V

    .line 313
    invoke-virtual {v2, v9}, Lcom/oculus/localmedia/MediaPagination$Builder;->setTotalCount(I)Lcom/oculus/localmedia/MediaPagination$Builder;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v1}, Lcom/oculus/localmedia/MediaPagination$Builder;->setStartCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaPagination$Builder;

    move-result-object v1

    .line 315
    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/MediaPagination$Builder;->setLastCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaPagination$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaPagination$Builder;->build()Lcom/oculus/localmedia/MediaPagination;

    move-result-object v0

    .line 317
    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/MediaResponse;->setPaginationData(Lcom/oculus/localmedia/MediaPagination;)V

    move-object v4, v5

    .line 319
    goto/16 :goto_0

    :cond_7
    move-object v1, v4

    .line 310
    goto :goto_5

    :cond_8
    move-object v0, v4

    .line 311
    goto :goto_6
.end method
