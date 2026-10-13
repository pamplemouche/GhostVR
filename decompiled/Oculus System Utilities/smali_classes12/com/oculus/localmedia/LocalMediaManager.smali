.class public Lcom/oculus/localmedia/LocalMediaManager;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/LocalMediaManager$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_VISIBILITY_FILTER:Ljava/lang/String; = "visibility=public"

.field public static final DOWNLOAD_FOLDER:Ljava/lang/String;

.field public static final DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "My Downloads"

.field public static final EMPTY_FOLDER_FILTER:Ljava/lang/String; = "folder!=empty"

.field public static final INCLUDE_DOWNLOAD_FOLDER:Z = true

.field public static final INCLUDE_HIDDEN_FOLDERS:Z = false

.field public static final PARENT_FOLDER_NAME:Ljava/lang/String; = ".."

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "1.0"

.field public static final ROOT_ALBUM_NAME:Ljava/lang/String; = "Root"

.field public static final SDCARD_FOLDER:Ljava/lang/String;

.field public static final SDCARD_FOLDER_NAME:Ljava/lang/String; = "SD Card"

.field public static final STORAGE_FOLDER:Ljava/lang/String;

.field public static final STORAGE_FOLDER_NAME:Ljava/lang/String; = "Internal Storage"

.field public static final TAG:Ljava/lang/String;

.field private static sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

.field private static sRequestId:I


# instance fields
.field private mAppVersion:Ljava/lang/String;

.field private mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

.field private mContext:Landroid/content/Context;

.field private mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

.field private mImageObserver:Landroid/database/ContentObserver;

.field private mIsStandalone:Z

.field private mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

.field private mVideoObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-class v1, Lcom/oculus/localmedia/LocalMediaManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    .line 70
    :try_start_0
    invoke-static {}, Lcom/oculus/localmedia/LocalMediaManager;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oculus/localmedia/LocalMediaManager;->STORAGE_FOLDER:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oculus/localmedia/LocalMediaManager;->DOWNLOAD_FOLDER:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/oculus/localmedia/MediaProviderUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oculus/localmedia/LocalMediaManager;->SDCARD_FOLDER:Ljava/lang/String;

    .line 90
    const/4 v1, 0x0

    sput-object v1, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    .line 91
    const/4 v1, 0x0

    sput v1, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    return-void

    .line 71
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could invoke nativeInit() method, only needed by VrShell panel apps."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mAppVersion:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/oculus/localmedia/LocalMediaManager;->mIsStandalone:Z

    .line 96
    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    .line 97
    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    .line 98
    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    .line 99
    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageObserver:Landroid/database/ContentObserver;

    .line 100
    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoObserver:Landroid/database/ContentObserver;

    .line 103
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    .line 104
    new-instance v1, Lcom/oculus/localmedia/LocalMediaManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/oculus/localmedia/LocalMediaManager$1;-><init>(Lcom/oculus/localmedia/LocalMediaManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageObserver:Landroid/database/ContentObserver;

    .line 113
    new-instance v1, Lcom/oculus/localmedia/LocalMediaManager$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/oculus/localmedia/LocalMediaManager$2;-><init>(Lcom/oculus/localmedia/LocalMediaManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoObserver:Landroid/database/ContentObserver;

    .line 124
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mAppVersion:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oculus.hardware.standalone_vr"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mIsStandalone:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get package manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oculus/localmedia/LocalMediaManager;)Lcom/oculus/localmedia/ImageMediaProvider;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/LocalMediaManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/localmedia/LocalMediaManager;)Lcom/oculus/localmedia/VideoMediaProvider;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/LocalMediaManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    return-object v0
.end method

.method static synthetic access$200(IJ)V
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/oculus/localmedia/LocalMediaManager;->onRefreshComplete(IJ)V

    return-void
.end method

.method static synthetic access$300(ILjava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/localmedia/LocalMediaManager;->onQueryComplete(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400()Lcom/oculus/localmedia/LocalMediaManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/localmedia/LocalMediaManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/LocalMediaManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(IZJ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/localmedia/LocalMediaManager;->onDeleteComplete(IZJ)V

    return-void
.end method

.method private createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 625
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/localmedia/FolderItem;

    move-result-object v0

    return-object v0
.end method

.method private createFolderItem(Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/localmedia/FolderItem;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dateAdded"    # J

    .prologue
    .line 636
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

.method public static deleteAsync(Ljava/lang/String;J)I
    .locals 3
    .param p0, "jsonMediaItem"    # Ljava/lang/String;
    .param p1, "appPtr"    # J

    .prologue
    .line 276
    sget v1, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    .line 277
    .local v0, "queryId":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oculus/localmedia/LocalMediaManager$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/oculus/localmedia/LocalMediaManager$5;-><init>(Ljava/lang/String;IJ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 311
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 312
    return v0
.end method

.method private filtersIncludePrivate(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/filters/MediaItemFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/filters/MediaItemFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/filters/MediaItemFilter;

    .line 707
    .local v0, "filter":Lcom/oculus/localmedia/filters/MediaItemFilter;
    instance-of v2, v0, Lcom/oculus/localmedia/filters/VisibilityFilter;

    if-eqz v2, :cond_0

    .line 708
    check-cast v0, Lcom/oculus/localmedia/filters/VisibilityFilter;

    .end local v0    # "filter":Lcom/oculus/localmedia/filters/MediaItemFilter;
    invoke-virtual {v0}, Lcom/oculus/localmedia/filters/VisibilityFilter;->includePrivate()Z

    move-result v1

    .line 711
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFolderItems(Lcom/oculus/localmedia/MediaQuery;Z)Ljava/util/List;
    .locals 24
    .param p1, "query"    # Lcom/oculus/localmedia/MediaQuery;
    .param p2, "includePrivate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/localmedia/MediaQuery;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v10, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/localmedia/MediaQuery;->isSmartQuery()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 551
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->getFoldersForPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 552
    .local v16, "types":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/MediaSmartQueryType;>;"
    if-eqz v16, :cond_0

    .line 553
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 554
    .local v15, "type":Lcom/oculus/localmedia/MediaSmartQueryType;
    invoke-virtual {v15}, Lcom/oculus/localmedia/MediaSmartQueryType;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/oculus/localmedia/MediaSmartQueryType;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    .end local v15    # "type":Lcom/oculus/localmedia/MediaSmartQueryType;
    .end local v16    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/MediaSmartQueryType;>;"
    :cond_0
    sget-object v17, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 560
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 561
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 563
    :cond_1
    const-string v17, "Internal Storage"

    sget-object v18, Lcom/oculus/localmedia/LocalMediaManager;->STORAGE_FOLDER:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v17, Lcom/oculus/localmedia/LocalMediaManager;->SDCARD_FOLDER:Ljava/lang/String;

    if-eqz v17, :cond_2

    .line 565
    const-string v17, "SD Card"

    sget-object v18, Lcom/oculus/localmedia/LocalMediaManager;->SDCARD_FOLDER:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_2
    const-string v17, "My Downloads"

    sget-object v18, Lcom/oculus/localmedia/LocalMediaManager;->DOWNLOAD_FOLDER:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_3
    if-nez p2, :cond_d

    .line 607
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v9, "filteredFolders":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oculus/localmedia/FolderItem;

    .line 609
    .local v11, "item":Lcom/oculus/localmedia/FolderItem;
    invoke-virtual {v11}, Lcom/oculus/localmedia/FolderItem;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/oculus/localmedia/MediaProviderUtils;->isPrivateFolder(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 610
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 573
    .end local v9    # "filteredFolders":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    .end local v11    # "item":Lcom/oculus/localmedia/FolderItem;
    :cond_5
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 574
    .local v8, "fileList":[Ljava/io/File;
    if-eqz v8, :cond_3

    .line 575
    array-length v0, v8

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v7, v8, v17

    .line 576
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 577
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 575
    :cond_6
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 580
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "folder!=empty"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-lez v19, :cond_8

    .line 581
    invoke-static {}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->getSingleton()Lcom/oculus/localmedia/FolderMediaCountRegistry;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->get(Ljava/lang/String;I)Lcom/oculus/localmedia/FolderMediaCount;

    move-result-object v6

    .line 582
    .local v6, "count":Lcom/oculus/localmedia/FolderMediaCount;
    invoke-virtual {v6}, Lcom/oculus/localmedia/FolderMediaCount;->getAggregatedCount()I

    move-result v19

    if-eqz v19, :cond_6

    .line 586
    .end local v6    # "count":Lcom/oculus/localmedia/FolderMediaCount;
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/localmedia/FolderItem;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 592
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileList":[Ljava/io/File;
    :cond_9
    invoke-static {}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->getSingleton()Lcom/oculus/localmedia/FolderMediaCountRegistry;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->getFoldersWithMedia(I)Ljava/util/List;

    move-result-object v14

    .line 593
    .local v14, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_a
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 594
    .local v13, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 596
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 599
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/oculus/localmedia/LocalMediaManager;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v12, "Root"

    .line 601
    .local v12, "name":Ljava/lang/String;
    :goto_5
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/oculus/localmedia/LocalMediaManager;->createFolderItem(Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/localmedia/FolderItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 600
    .end local v12    # "name":Ljava/lang/String;
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .end local v7    # "file":Ljava/io/File;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "filteredFolders":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    :cond_c
    move-object v10, v9

    .line 615
    .end local v9    # "filteredFolders":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    .end local v10    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    :cond_d
    return-object v10
.end method

.method private getMediaItems(ILjava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/filters/MediaItemFilter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/filters/MediaItemFilter;>;"
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByType(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 665
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v2, v4

    .line 682
    :cond_1
    return-object v2

    .line 669
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v2, "filteredItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/localmedia/MediaItem;

    .line 671
    .local v3, "item":Lcom/oculus/localmedia/MediaItem;
    const/4 v1, 0x0

    .line 672
    .local v1, "filtered":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/filters/MediaItemFilter;

    .line 673
    .local v0, "filter":Lcom/oculus/localmedia/filters/MediaItemFilter;
    invoke-interface {v0, v3}, Lcom/oculus/localmedia/filters/MediaItemFilter;->match(Lcom/oculus/localmedia/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 674
    const/4 v1, 0x1

    .line 678
    .end local v0    # "filter":Lcom/oculus/localmedia/filters/MediaItemFilter;
    :cond_5
    if-nez v1, :cond_3

    .line 679
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMediaItemsByType(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "types"    # I
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
    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    invoke-virtual {v1}, Lcom/oculus/localmedia/VideoMediaProvider;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 650
    :cond_0
    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    invoke-virtual {v1}, Lcom/oculus/localmedia/ImageMediaProvider;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 653
    :cond_1
    return-object v0
.end method

.method private getQueryFilters(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "filters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/filters/MediaItemFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v1, "filtersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/filters/MediaItemFilter;>;"
    const/4 v3, 0x0

    .line 688
    .local v3, "visibilityFilterSet":Z
    if-eqz p1, :cond_1

    .line 689
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 691
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/localmedia/filters/MediaItemFilterFactory;->create(Ljava/lang/String;)Lcom/oculus/localmedia/filters/MediaItemFilter;

    move-result-object v0

    .line 692
    .local v0, "filter":Lcom/oculus/localmedia/filters/MediaItemFilter;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    instance-of v4, v0, Lcom/oculus/localmedia/filters/VisibilityFilter;

    or-int/2addr v3, v4

    goto :goto_0

    .line 699
    .end local v0    # "filter":Lcom/oculus/localmedia/filters/MediaItemFilter;
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    if-nez v3, :cond_2

    .line 700
    const-string v4, "visibility=public"

    invoke-static {v4}, Lcom/oculus/localmedia/filters/MediaItemFilterFactory;->create(Ljava/lang/String;)Lcom/oculus/localmedia/filters/MediaItemFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_2
    return-object v1
.end method

.method public static getServerInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Android %d/MediaServer %s/Build %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1.0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    iget-object v3, v3, Lcom/oculus/localmedia/LocalMediaManager;->mAppVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 177
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {v0, p0}, Lcom/oculus/localmedia/LocalMediaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    .line 139
    invoke-static {p0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->init(Landroid/content/Context;)V

    .line 141
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaTypes"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oculus/localmedia/LocalMediaManager;->init(Landroid/content/Context;ILcom/oculus/localmedia/LocalMediaConfig;)V

    .line 151
    return-void
.end method

.method public static init(Landroid/content/Context;ILcom/oculus/localmedia/LocalMediaConfig;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaTypes"    # I
    .param p2, "config"    # Lcom/oculus/localmedia/LocalMediaConfig;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/oculus/localmedia/LocalMediaManager;->init(Landroid/content/Context;)V

    .line 162
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {v0, p2}, Lcom/oculus/localmedia/LocalMediaManager;->setConfig(Lcom/oculus/localmedia/LocalMediaConfig;)V

    .line 163
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oculus/localmedia/LocalMediaManager;->initMediaProviders(IZ)V

    .line 164
    return-void
.end method

.method private declared-synchronized initMediaProviders(IZ)V
    .locals 4
    .param p1, "mediaTypes"    # I
    .param p2, "force"    # Z

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_6

    const/4 v0, 0x1

    .line 219
    .local v0, "includesAll":Z
    :goto_0
    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    invoke-virtual {v1}, Lcom/oculus/localmedia/VideoMediaProvider;->hasChanged()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .line 221
    :cond_1
    new-instance v1, Lcom/oculus/localmedia/VideoMediaProvider;

    iget-object v2, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaManager;->mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    invoke-direct {v1, v2, v3}, Lcom/oculus/localmedia/VideoMediaProvider;-><init>(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;)V

    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoMediaProvider:Lcom/oculus/localmedia/VideoMediaProvider;

    .line 224
    :cond_2
    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1, p1}, Lcom/oculus/localmedia/MediaType;->match(I)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_5

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;

    invoke-virtual {v1}, Lcom/oculus/localmedia/ImageMediaProvider;->hasChanged()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_5

    .line 226
    :cond_4
    new-instance v1, Lcom/oculus/localmedia/ImageMediaProvider;

    iget-object v2, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaManager;->mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    invoke-direct {v1, v2, v3}, Lcom/oculus/localmedia/ImageMediaProvider;-><init>(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;)V

    iput-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageMediaProvider:Lcom/oculus/localmedia/ImageMediaProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_5
    monitor-exit p0

    return-void

    .line 218
    .end local v0    # "includesAll":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static isStandaloneDevice()Z
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    iget-boolean v0, v0, Lcom/oculus/localmedia/LocalMediaManager;->mIsStandalone:Z

    goto :goto_0
.end method

.method private static native nativeInit()V
.end method

.method private static native onDeleteComplete(IZJ)V
.end method

.method private static native onQueryComplete(ILjava/lang/String;J)V
.end method

.method private static native onRefreshComplete(IJ)V
.end method

.method public static query(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 10
    .param p0, "query"    # Lcom/oculus/localmedia/MediaQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 396
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaQuery;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 398
    .local v2, "startTime":J
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {v1, p0}, Lcom/oculus/localmedia/LocalMediaManager;->queryInternal(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    .line 399
    .local v0, "response":Lcom/oculus/localmedia/MediaResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 400
    .local v4, "stopTime":J
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object v0
.end method

.method public static query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "jsonQuery"    # Ljava/lang/String;
    .param p1, "externalHost"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string v3, ""

    .line 377
    .local v3, "queryId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/oculus/localmedia/MediaQuery;->builder()Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-static {p0}, Lcom/oculus/localmedia/MediaQuery$Builder;->fromJson(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/oculus/localmedia/MediaQuery$Builder;->setExternalHost(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/localmedia/MediaQuery$Builder;->build()Lcom/oculus/localmedia/MediaQuery;

    move-result-object v1

    .line 378
    .local v1, "mediaQuery":Lcom/oculus/localmedia/MediaQuery;
    iget-object v3, v1, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    .line 379
    invoke-static {v1}, Lcom/oculus/localmedia/LocalMediaManager;->query(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v2

    .line 380
    .local v2, "mediaResponse":Lcom/oculus/localmedia/MediaResponse;
    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaResponse;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 386
    .end local v1    # "mediaQuery":Lcom/oculus/localmedia/MediaQuery;
    .end local v2    # "mediaResponse":Lcom/oculus/localmedia/MediaResponse;
    :goto_0
    return-object v5

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission error when executing query :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v5, Lcom/oculus/localmedia/MediaResponse;

    invoke-direct {v5, v3}, Lcom/oculus/localmedia/MediaResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/oculus/localmedia/MediaErrorCode;->READ_PERMISSION:Lcom/oculus/localmedia/MediaErrorCode;

    invoke-virtual {v5, v6, v7}, Lcom/oculus/localmedia/MediaResponse;->setError(Ljava/lang/String;Lcom/oculus/localmedia/MediaErrorCode;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/localmedia/MediaResponse;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 384
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 385
    .local v4, "throwable":Ljava/lang/Throwable;
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occured while executing query :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v5, Lcom/oculus/localmedia/MediaResponse;

    invoke-direct {v5, v3}, Lcom/oculus/localmedia/MediaResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oculus/localmedia/MediaResponse;->setError(Ljava/lang/String;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/localmedia/MediaResponse;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static queryAsync(Ljava/lang/String;J)I
    .locals 3
    .param p0, "jsonQuery"    # Ljava/lang/String;
    .param p1, "appPtr"    # J

    .prologue
    .line 257
    sget v1, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    .line 258
    .local v0, "queryId":I
    new-instance v1, Lcom/oculus/localmedia/LocalMediaManager$4;

    invoke-direct {v1, v0, p1, p2}, Lcom/oculus/localmedia/LocalMediaManager$4;-><init>(IJ)V

    invoke-static {p0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->queryAsync(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V

    .line 264
    return v0
.end method

.method public static queryAsync(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V
    .locals 2
    .param p0, "jsonQuery"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/oculus/localmedia/LocalMediaManager$Callback;

    .prologue
    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/localmedia/LocalMediaManager$7;

    invoke-direct {v1, p0, p1}, Lcom/oculus/localmedia/LocalMediaManager$7;-><init>(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method private queryInternal(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 2
    .param p1, "query"    # Lcom/oculus/localmedia/MediaQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 411
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->initMediaProviders(IZ)V

    .line 420
    iget v0, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    invoke-direct {p0, v0}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE permission missing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/localmedia/MediaProviderUtils;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->queryMediaByFilePath(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 428
    :cond_1
    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->queryMediaByMediaId(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/LocalMediaManager;->queryMedia(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private queryMediaByFilePath(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 6
    .param p1, "query"    # Lcom/oculus/localmedia/MediaQuery;

    .prologue
    .line 441
    new-instance v2, Lcom/oculus/localmedia/MediaResponse;

    iget-object v3, p1, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/oculus/localmedia/MediaResponse;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, "response":Lcom/oculus/localmedia/MediaResponse;
    iget v3, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    invoke-direct {p0, v3}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 443
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    iget-object v3, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 444
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 445
    .local v0, "item":Lcom/oculus/localmedia/MediaItem;
    iget-object v4, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    iget-object v3, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oculus/localmedia/LocalMediaManager;->mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    invoke-virtual {v0, v3, v4, p1}, Lcom/oculus/localmedia/MediaItem;->prepare(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;Lcom/oculus/localmedia/MediaQuery;)V

    .line 447
    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/MediaResponse;->addMediaItem(Lcom/oculus/localmedia/MediaItem;)V

    .line 448
    return-object v2

    .line 452
    .end local v0    # "item":Lcom/oculus/localmedia/MediaItem;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect local file specified, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private queryMediaByMediaId(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 8
    .param p1, "query"    # Lcom/oculus/localmedia/MediaQuery;

    .prologue
    .line 461
    new-instance v4, Lcom/oculus/localmedia/MediaResponse;

    iget-object v5, p1, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/oculus/localmedia/MediaResponse;-><init>(Ljava/lang/String;)V

    .line 462
    .local v4, "response":Lcom/oculus/localmedia/MediaResponse;
    iget v5, p1, Lcom/oculus/localmedia/MediaQuery;->Types:I

    invoke-direct {p0, v5}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItemsByType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 463
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    iget-object v5, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 464
    iget-object v5, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 465
    .local v2, "mediaId":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 466
    .local v0, "item":Lcom/oculus/localmedia/MediaItem;
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getId()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 467
    iget-object v5, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/oculus/localmedia/LocalMediaManager;->mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, p1, v7}, Lcom/oculus/localmedia/MediaItem;->prepare(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;Lcom/oculus/localmedia/MediaQuery;Z)V

    .line 468
    invoke-virtual {v4, v0}, Lcom/oculus/localmedia/MediaResponse;->addMediaItem(Lcom/oculus/localmedia/MediaItem;)V

    .line 469
    return-object v4

    .line 473
    .end local v0    # "item":Lcom/oculus/localmedia/MediaItem;
    .end local v2    # "mediaId":J
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect local file specified, mediaId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static refresh(I)V
    .locals 2
    .param p0, "mediaTypes"    # I

    .prologue
    .line 360
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->initMediaProviders(IZ)V

    .line 361
    return-void
.end method

.method public static refreshAsync(Ljava/lang/String;J)I
    .locals 3
    .param p0, "mediaTypes"    # Ljava/lang/String;
    .param p1, "appPtr"    # J

    .prologue
    .line 239
    sget v1, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/oculus/localmedia/LocalMediaManager;->sRequestId:I

    .line 240
    .local v0, "requestId":I
    new-instance v1, Lcom/oculus/localmedia/LocalMediaManager$3;

    invoke-direct {v1, v0, p1, p2}, Lcom/oculus/localmedia/LocalMediaManager$3;-><init>(IJ)V

    invoke-static {p0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->refreshAsync(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V

    .line 246
    return v0
.end method

.method public static refreshAsync(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V
    .locals 2
    .param p0, "mediaTypes"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/oculus/localmedia/LocalMediaManager$Callback;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/localmedia/LocalMediaManager$6;

    invoke-direct {v1, p0, p1}, Lcom/oculus/localmedia/LocalMediaManager$6;-><init>(Ljava/lang/String;Lcom/oculus/localmedia/LocalMediaManager$Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    return-void
.end method

.method private setConfig(Lcom/oculus/localmedia/LocalMediaConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/oculus/localmedia/LocalMediaConfig;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    .line 197
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {v0}, Lcom/oculus/localmedia/LocalMediaManager;->startObservingMedia()V

    .line 187
    :cond_0
    return-void
.end method

.method private startObservingMedia()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->sLocalMediaManager:Lcom/oculus/localmedia/LocalMediaManager;

    invoke-direct {v0}, Lcom/oculus/localmedia/LocalMediaManager;->stopObservingMedia()V

    .line 193
    :cond_0
    return-void
.end method

.method private stopObservingMedia()V
    .locals 2

    .prologue
    .line 206
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    iget-object v1, p0, Lcom/oculus/localmedia/LocalMediaManager;->mVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    return-void
.end method


# virtual methods
.method public queryMedia(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;
    .locals 22
    .param p1, "query"    # Lcom/oculus/localmedia/MediaQuery;

    .prologue
    .line 483
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    move/from16 v19, v0

    if-gez v19, :cond_0

    .line 484
    const/4 v15, 0x0

    .line 539
    :goto_0
    return-object v15

    .line 486
    :cond_0
    new-instance v15, Lcom/oculus/localmedia/MediaResponse;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/oculus/localmedia/MediaResponse;-><init>(Ljava/lang/String;)V

    .line 489
    .local v15, "response":Lcom/oculus/localmedia/MediaResponse;
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/localmedia/MediaQuery;->isSmartQuery()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 490
    invoke-static/range {p1 .. p1}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->rewrite(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaQuery;

    move-result-object p1

    .line 494
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/oculus/localmedia/LocalMediaManager;->getQueryFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 495
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/filters/MediaItemFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 496
    new-instance v19, Lcom/oculus/localmedia/filters/FolderFilter;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/oculus/localmedia/filters/FolderFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oculus/localmedia/LocalMediaManager;->filtersIncludePrivate(Ljava/util/List;)Z

    move-result v8

    .line 499
    .local v8, "includePrivate":Z
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/oculus/localmedia/LocalMediaManager;->getMediaItems(ILjava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 500
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/MediaItem;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/oculus/localmedia/LocalMediaManager;->getFolderItems(Lcom/oculus/localmedia/MediaQuery;Z)Ljava/util/List;

    move-result-object v5

    .line 503
    .local v5, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v1}, Lcom/oculus/localmedia/FolderItem;->sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V

    .line 504
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v11, v0, v1}, Lcom/oculus/localmedia/MediaItem;->sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V

    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 508
    .local v9, "index":I
    :goto_1
    move/from16 v17, v9

    .line 509
    .local v17, "startIndex":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    add-int v18, v19, v20

    .line 510
    .local v18, "totalCount":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 511
    .local v12, "lastIndex":I
    move/from16 v0, v17

    if-le v0, v12, :cond_4

    .line 512
    new-instance v19, Ljava/lang/IndexOutOfBoundsException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incorrect pagination data, index="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 507
    .end local v9    # "index":I
    .end local v12    # "lastIndex":I
    .end local v17    # "startIndex":I
    .end local v18    # "totalCount":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 516
    .restart local v9    # "index":I
    .restart local v12    # "lastIndex":I
    .restart local v17    # "startIndex":I
    .restart local v18    # "totalCount":I
    :cond_4
    move/from16 v7, v17

    .local v7, "i":I
    :goto_2
    if-gt v7, v12, :cond_6

    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    .line 517
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_5

    .line 518
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/localmedia/FolderItem;

    .line 519
    .local v4, "folder":Lcom/oculus/localmedia/FolderItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/oculus/localmedia/FolderItem;->prepare(Lcom/oculus/localmedia/LocalMediaManager;Lcom/oculus/localmedia/MediaQuery;)V

    .line 520
    invoke-virtual {v15, v4}, Lcom/oculus/localmedia/MediaResponse;->addFolderItem(Lcom/oculus/localmedia/FolderItem;)V

    .line 516
    .end local v4    # "folder":Lcom/oculus/localmedia/FolderItem;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 522
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v19

    sub-int v19, v7, v19

    move/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oculus/localmedia/MediaItem;

    .line 523
    .local v10, "item":Lcom/oculus/localmedia/MediaItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/LocalMediaManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/LocalMediaManager;->mConfig:Lcom/oculus/localmedia/LocalMediaConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/oculus/localmedia/MediaItem;->prepare(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;Lcom/oculus/localmedia/MediaQuery;)V

    .line 524
    invoke-virtual {v15, v10}, Lcom/oculus/localmedia/MediaResponse;->addMediaItem(Lcom/oculus/localmedia/MediaItem;)V

    goto :goto_3

    .line 529
    .end local v10    # "item":Lcom/oculus/localmedia/MediaItem;
    :cond_6
    add-int/lit8 v19, v18, -0x1

    move/from16 v0, v19

    if-ge v12, v0, :cond_7

    const/4 v6, 0x1

    .line 530
    .local v6, "hasNextPage":Z
    :goto_4
    if-lez v17, :cond_8

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 531
    .local v16, "startCursor":Ljava/lang/String;
    :goto_5
    if-eqz v6, :cond_9

    add-int/lit8 v19, v12, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 532
    .local v13, "nextCursor":Ljava/lang/String;
    :goto_6
    new-instance v19, Lcom/oculus/localmedia/MediaPagination$Builder;

    invoke-direct/range {v19 .. v19}, Lcom/oculus/localmedia/MediaPagination$Builder;-><init>()V

    .line 533
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/MediaPagination$Builder;->setTotalCount(I)Lcom/oculus/localmedia/MediaPagination$Builder;

    move-result-object v19

    .line 534
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/MediaPagination$Builder;->setStartCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaPagination$Builder;

    move-result-object v19

    .line 535
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/oculus/localmedia/MediaPagination$Builder;->setLastCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaPagination$Builder;

    move-result-object v19

    .line 536
    invoke-virtual/range {v19 .. v19}, Lcom/oculus/localmedia/MediaPagination$Builder;->build()Lcom/oculus/localmedia/MediaPagination;

    move-result-object v14

    .line 537
    .local v14, "pagination":Lcom/oculus/localmedia/MediaPagination;
    invoke-virtual {v15, v14}, Lcom/oculus/localmedia/MediaResponse;->setPaginationData(Lcom/oculus/localmedia/MediaPagination;)V

    goto/16 :goto_0

    .line 529
    .end local v6    # "hasNextPage":Z
    .end local v13    # "nextCursor":Ljava/lang/String;
    .end local v14    # "pagination":Lcom/oculus/localmedia/MediaPagination;
    .end local v16    # "startCursor":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 530
    .restart local v6    # "hasNextPage":Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_5

    .line 531
    .restart local v16    # "startCursor":Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    goto :goto_6
.end method
