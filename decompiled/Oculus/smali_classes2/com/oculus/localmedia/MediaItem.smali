.class public Lcom/oculus/localmedia/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/MediaItem$Builder;
    }
.end annotation


# static fields
.field public static DATE_ADDED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static DURATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static FILE_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGE_THUMBNAIL_PROJECTION:[Ljava/lang/String;

.field private static final MEDIA_ID_PROJECTION:[Ljava/lang/String;

.field public static NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_THUMBNAIL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDateAdded:J

.field private mDownloadUrl:Ljava/lang/String;

.field private mDurationSecs:I

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

.field private mFolderPath:Ljava/lang/String;

.field private mHeight:I

.field private mIsPrepared:Z

.field private mMimeType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

.field private mSource:Ljava/lang/String;

.field private mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

.field private mThumbnailFilePath:Ljava/lang/String;

.field private mType:Lcom/oculus/localmedia/MediaType;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/oculus/localmedia/MediaItem$1;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$1;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    .line 41
    new-instance v0, Lcom/oculus/localmedia/MediaItem$2;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$2;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->DURATION_COMPARATOR:Ljava/util/Comparator;

    .line 47
    new-instance v0, Lcom/oculus/localmedia/MediaItem$3;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$3;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->FILE_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 53
    new-instance v0, Lcom/oculus/localmedia/MediaItem$4;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$4;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->MEDIA_ID_PROJECTION:[Ljava/lang/String;

    .line 63
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "image_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->IMAGE_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "video_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->VIDEO_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/oculus/localmedia/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem;->mType:Lcom/oculus/localmedia/MediaType;

    .line 99
    iput-object p2, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/oculus/localmedia/MediaItem;->mName:Ljava/lang/String;

    .line 102
    iput-wide p5, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    .line 103
    iput p7, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    .line 104
    iput-wide p8, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    .line 105
    iput p10, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    .line 106
    iput p11, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    .line 107
    iput-object p12, p0, Lcom/oculus/localmedia/MediaItem;->mMimeType:Ljava/lang/String;

    .line 108
    iput-object p13, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    .line 109
    iput-object p14, p0, Lcom/oculus/localmedia/MediaItem;->mDownloadUrl:Ljava/lang/String;

    .line 110
    invoke-static {p2}, Lcom/oculus/localmedia/MediaItem;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFolderPath:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object p4, p2

    :cond_1
    invoke-static {p4, p1}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->parse(Ljava/lang/String;Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/FilenameMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    .line 112
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-static {p2}, Lcom/oculus/localmedia/metadata/SidecarMetadataParser;->parse(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SidecarMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    .line 115
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/localmedia/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/MediaItem$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p14}, Lcom/oculus/localmedia/MediaItem;-><init>(Lcom/oculus/localmedia/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/localmedia/MediaItem;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/oculus/localmedia/MediaItem;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    return v0
.end method

.method static synthetic access$200(Lcom/oculus/localmedia/MediaItem;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    return-wide v0
.end method

.method public static builder()Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/oculus/localmedia/MediaItem$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$Builder;-><init>()V

    return-object v0
.end method

.method private generateThumbnail(Landroid/content/ContentResolver;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 608
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-static {p1, p2, p3, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 621
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-static {p1, p2, p3, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static getFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMediaId(Landroid/content/ContentResolver;)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 546
    :try_start_0
    const-string v3, "_data=?"

    .line 547
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 548
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 549
    :goto_0
    sget-object v2, Lcom/oculus/localmedia/MediaItem;->MEDIA_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 550
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 551
    :cond_0
    const-wide/16 v0, 0x0

    .line 555
    if-eqz v2, :cond_1

    .line 556
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_1
    :goto_1
    return-wide v0

    .line 548
    :cond_2
    :try_start_2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 553
    :cond_3
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    int-to-long v0, v0

    .line 555
    if-eqz v2, :cond_1

    .line 556
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 555
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 555
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private getThumbnailPath(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/oculus/localmedia/MediaItem;->VIDEO_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 586
    :goto_0
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_data"

    .line 588
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 595
    :goto_1
    if-eqz v1, :cond_0

    .line 596
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 592
    :cond_0
    :goto_2
    return-object v0

    .line 579
    :cond_1
    :try_start_2
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/oculus/localmedia/MediaItem;->IMAGE_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 588
    :cond_2
    :try_start_3
    const-string v0, "_data"

    .line 589
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 591
    :cond_3
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thumbnail not found for mediaId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 595
    if-eqz v1, :cond_4

    .line 596
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 592
    goto :goto_2

    .line 595
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 595
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3
.end method

.method public static sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;",
            "Lcom/oculus/localmedia/MediaSort;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 461
    sget-object v0, Lcom/oculus/localmedia/MediaItem$5;->$SwitchMap$com$oculus$localmedia$MediaSort:[I

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaSort;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 475
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 478
    :goto_0
    if-nez p2, :cond_0

    .line 479
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 481
    :cond_0
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 482
    return-void

    .line 463
    :pswitch_0
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 466
    :pswitch_1
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 469
    :pswitch_2
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->DURATION_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 472
    :pswitch_3
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->FILE_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public ensureThumbnailPath(Landroid/content/ContentResolver;)V
    .locals 4

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/MediaItem;->getMediaId(Landroid/content/ContentResolver;)J

    move-result-wide v0

    .line 521
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 522
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaId not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/localmedia/MediaItem;->getThumbnailPath(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v2

    .line 527
    if-eqz v2, :cond_2

    .line 528
    invoke-virtual {p0, v2}, Lcom/oculus/localmedia/MediaItem;->setThumbnailFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/localmedia/MediaItem;->generateThumbnail(Landroid/content/ContentResolver;J)V

    .line 531
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/localmedia/MediaItem;->getThumbnailPath(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p0, v0}, Lcom/oculus/localmedia/MediaItem;->setThumbnailFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mName:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->isSpherical()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_2
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public getFovX()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v1}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFovX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFovX()F

    move-result v0

    .line 300
    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->isSpherical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "SPHERICAL"

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getPresentationFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getPresentationFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    const-string v0, "RECT"

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "local"

    goto :goto_0
.end method

.method public getThumbnailFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/oculus/localmedia/MediaType;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mType:Lcom/oculus/localmedia/MediaType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    return v0
.end method

.method public isLocal()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public isVideo()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mType:Lcom/oculus/localmedia/MediaType;

    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Landroid/content/ContentResolver;Lcom/oculus/localmedia/metadata/CachedMetadataManager;)V
    .locals 4

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mIsPrepared:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mIsPrepared:Z

    .line 490
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/MediaItem;->ensureThumbnailPath(Landroid/content/ContentResolver;)V

    .line 492
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->get(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    .line 494
    if-nez v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->parse(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    .line 498
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadata;->builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->from(Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;)Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->set(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V

    .line 500
    sget-object v1, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set DB cache entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :cond_2
    sget-object v1, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got DB cache entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->from(Lcom/oculus/localmedia/metadata/CachedMetadata;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    goto :goto_0
.end method

.method protected setThumbnailFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 310
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getType()Lcom/oculus/localmedia/MediaType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v1, "path"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v1, "thumb"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "mimeType"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "source"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "downloadUrl"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-string v1, "date"

    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 319
    :cond_0
    iget v1, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    if-eqz v1, :cond_1

    const-string v1, "duration"

    iget v2, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    :cond_1
    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-string v1, "size"

    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 321
    :cond_2
    iget v1, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    if-lez v1, :cond_3

    .line 322
    const-string v1, "height"

    iget v2, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    const-string v1, "width"

    iget v2, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 326
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v1, "presentationFormat"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getPresentationFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFovX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 329
    const-string v1, "fovX"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFovX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_4
    :goto_0
    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not serialize to JSON media with path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
