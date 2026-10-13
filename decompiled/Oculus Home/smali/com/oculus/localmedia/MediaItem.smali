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
.field private mAudioFilePath:Ljava/lang/String;

.field private mAuthHeader:Ljava/lang/String;

.field private mDateAdded:J

.field private mDownloadUrl:Ljava/lang/String;

.field private mDurationSecs:I

.field private mExternalFilePath:Ljava/lang/String;

.field private mExternalThumbnailFilePath:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

.field private mFolderPath:Ljava/lang/String;

.field private mHeight:I

.field private mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

.field private mInternalId:I

.field private mIsDownloadable:Z

.field private mIsPrivate:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mMimeType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRemoteDeviceId:I

.field private mRemoteFileId:Ljava/lang/String;

.field private mRequiresHydration:Z

.field private mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

.field private mSource:Ljava/lang/String;

.field private mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

.field private mThumbOrientation:I

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

    .line 45
    new-instance v0, Lcom/oculus/localmedia/MediaItem$1;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$1;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    .line 51
    new-instance v0, Lcom/oculus/localmedia/MediaItem$2;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$2;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->DURATION_COMPARATOR:Ljava/util/Comparator;

    .line 57
    new-instance v0, Lcom/oculus/localmedia/MediaItem$3;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$3;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->FILE_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 63
    new-instance v0, Lcom/oculus/localmedia/MediaItem$4;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$4;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->MEDIA_ID_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "image_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/localmedia/MediaItem;->IMAGE_THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 78
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

.method private constructor <init>(Lcom/oculus/localmedia/MediaType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;DDZZI)V
    .locals 4
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;
    .param p2, "internalId"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "thumbnailFilePath"    # Ljava/lang/String;
    .param p5, "remoteFileId"    # Ljava/lang/String;
    .param p6, "remoteDeviceId"    # I
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "dateAdded"    # J
    .param p10, "durationSecs"    # I
    .param p11, "fileSize"    # J
    .param p13, "width"    # I
    .param p14, "height"    # I
    .param p15, "mimeType"    # Ljava/lang/String;
    .param p16, "source"    # Ljava/lang/String;
    .param p17, "isDownloadable"    # Z
    .param p18, "downloadUrl"    # Ljava/lang/String;
    .param p19, "authHeader"    # Ljava/lang/String;
    .param p20, "latitude"    # D
    .param p22, "longitude"    # D
    .param p24, "isPrivate"    # Z
    .param p25, "requiresHydration"    # Z
    .param p26, "thumbOrientation"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem;->mType:Lcom/oculus/localmedia/MediaType;

    .line 126
    iput-object p3, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    .line 127
    iput p2, p0, Lcom/oculus/localmedia/MediaItem;->mInternalId:I

    .line 128
    iput-object p4, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteFileId:Ljava/lang/String;

    .line 130
    iput p6, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteDeviceId:I

    .line 131
    iput-object p7, p0, Lcom/oculus/localmedia/MediaItem;->mName:Ljava/lang/String;

    .line 132
    iput-wide p8, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    .line 133
    iput p10, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    .line 134
    iput-wide p11, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    .line 135
    move/from16 v0, p13

    iput v0, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    .line 136
    move/from16 v0, p14

    iput v0, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    .line 137
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mMimeType:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    .line 139
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mIsDownloadable:Z

    .line 140
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mDownloadUrl:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mAuthHeader:Ljava/lang/String;

    .line 142
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mLatitude:D

    .line 143
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mLongitude:D

    .line 144
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mIsPrivate:Z

    .line 145
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Lcom/oculus/localmedia/MediaProviderUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/oculus/localmedia/MediaItem;->mFolderPath:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p7, p3

    .end local p7    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {p7, p1}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->parse(Ljava/lang/String;Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/FilenameMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    .line 147
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p3}, Lcom/oculus/localmedia/metadata/SidecarMetadataParser;->parse(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SidecarMetadata;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    .line 148
    invoke-direct {p0}, Lcom/oculus/localmedia/MediaItem;->getPanoImageMetadata()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    .line 149
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mRequiresHydration:Z

    .line 150
    move/from16 v0, p26

    iput v0, p0, Lcom/oculus/localmedia/MediaItem;->mThumbOrientation:I

    .line 151
    return-void

    .line 145
    .restart local p7    # "name":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 147
    .end local p7    # "name":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/oculus/localmedia/MediaType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;DDZZILcom/oculus/localmedia/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/localmedia/MediaType;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # J
    .param p10, "x8"    # I
    .param p11, "x9"    # J
    .param p13, "x10"    # I
    .param p14, "x11"    # I
    .param p15, "x12"    # Ljava/lang/String;
    .param p16, "x13"    # Ljava/lang/String;
    .param p17, "x14"    # Z
    .param p18, "x15"    # Ljava/lang/String;
    .param p19, "x16"    # Ljava/lang/String;
    .param p20, "x17"    # D
    .param p22, "x18"    # D
    .param p24, "x19"    # Z
    .param p25, "x20"    # Z
    .param p26, "x21"    # I
    .param p27, "x22"    # Lcom/oculus/localmedia/MediaItem$1;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p26}, Lcom/oculus/localmedia/MediaItem;-><init>(Lcom/oculus/localmedia/MediaType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;DDZZI)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/localmedia/MediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/oculus/localmedia/MediaItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oculus/localmedia/MediaItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oculus/localmedia/MediaItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/localmedia/MediaItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mIsDownloadable:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mAuthHeader:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oculus/localmedia/MediaItem;)D
    .locals 2
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/oculus/localmedia/MediaItem;)D
    .locals 2
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/oculus/localmedia/MediaItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mIsPrivate:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oculus/localmedia/MediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/oculus/localmedia/MediaItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mRequiresHydration:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/oculus/localmedia/MediaItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mThumbOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/oculus/localmedia/MediaItem;)Lcom/oculus/localmedia/MediaType;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mType:Lcom/oculus/localmedia/MediaType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/localmedia/MediaItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mInternalId:I

    return v0
.end method

.method static synthetic access$600(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteFileId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/localmedia/MediaItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteDeviceId:I

    return v0
.end method

.method static synthetic access$900(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public static builder()Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/oculus/localmedia/MediaItem$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$Builder;-><init>()V

    return-object v0
.end method

.method private generateThumbnail(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 822
    const/4 v3, 0x0

    .line 823
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 825
    .local v7, "thumbnailPath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".thumbnails"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 827
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 829
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .local v6, "thumbnail":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 846
    if-eqz v3, :cond_1

    .line 848
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 852
    .end local v2    # "folder":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "thumbnail":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v5

    .line 835
    .restart local v2    # "folder":Ljava/io/File;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "thumbnail":Ljava/io/File;
    :cond_2
    :try_start_2
    sget-object v8, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Generate thumbnail for : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    const/4 v9, 0x1

    .line 837
    invoke-static {v8, v9}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 839
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {v0, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 841
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 842
    move-object v7, v5

    .line 846
    if-eqz v4, :cond_6

    .line 848
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "folder":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "thumbnail":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move-object v5, v7

    .line 852
    goto :goto_0

    .line 837
    .restart local v2    # "folder":Ljava/io/File;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "thumbnail":Ljava/io/File;
    :cond_4
    :try_start_5
    iget-object v8, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    .line 838
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/16 v9, 0x100

    const/16 v10, 0xc0

    invoke-static {v8, v9, v10}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 849
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v8

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 843
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "folder":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "thumbnail":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    sget-object v8, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when writing jpg thumbnail file for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 846
    if-eqz v3, :cond_3

    .line 848
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 849
    :catch_2
    move-exception v8

    goto :goto_2

    .line 846
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_5

    .line 848
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 849
    :cond_5
    :goto_5
    throw v8

    .restart local v2    # "folder":Ljava/io/File;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "thumbnail":Ljava/io/File;
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v2    # "folder":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "thumbnail":Ljava/io/File;
    :catch_4
    move-exception v9

    goto :goto_5

    .line 846
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "folder":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "thumbnail":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 843
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_6
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private generateThumbnail(Landroid/content/ContentResolver;J)V
    .locals 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "mediaId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 931
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-static {p1, p2, p3, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 944
    :goto_0
    return-void

    .line 938
    :cond_0
    invoke-static {p1, p2, p3, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getMediaId(Landroid/content/ContentResolver;)J
    .locals 10
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 863
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mInternalId:I

    if-eqz v0, :cond_1

    .line 864
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mInternalId:I

    int-to-long v8, v0

    .line 879
    :cond_0
    :goto_0
    return-wide v8

    .line 866
    :cond_1
    const/4 v6, 0x0

    .line 868
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_data=?"

    .line 869
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 870
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 871
    .local v1, "mediaUri":Landroid/net/Uri;
    :goto_1
    sget-object v2, Lcom/oculus/localmedia/MediaItem;->MEDIA_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 872
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 873
    :cond_2
    const-wide/16 v8, 0x0

    .line 878
    if-eqz v6, :cond_0

    .line 879
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 870
    .end local v1    # "mediaUri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 875
    .restart local v1    # "mediaUri":Landroid/net/Uri;
    :cond_4
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/localmedia/MediaItem;->mInternalId:I

    .line 876
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mInternalId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v8, v0

    .line 878
    if-eqz v6, :cond_0

    .line 879
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 878
    .end local v1    # "mediaUri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 879
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getPanoImageMetadata()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 950
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isImage()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    .line 982
    :goto_0
    return-object v2

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 954
    invoke-static {}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->builder()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v4

    const-string v5, "EQUIRECT"

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v4

    const-string v5, "2D"

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v2

    goto :goto_0

    .line 956
    :cond_1
    iget-object v5, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/oculus/localmedia/MediaProviderUtils;->isFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 957
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->getSingleton()Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->get(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v3

    .line 958
    .local v3, "metadata":Lcom/oculus/localmedia/metadata/CachedMetadata;
    if-eqz v3, :cond_2

    .line 960
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got DB cache entry for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->builder()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->from(Lcom/oculus/localmedia/metadata/CachedMetadata;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v2

    goto :goto_0

    .line 963
    :cond_2
    iget-object v5, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/localmedia/MediaItem;->mMimeType:Ljava/lang/String;

    iget v7, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    iget v8, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    invoke-static {v5, v6, v7, v8}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadataParser;->parse(Ljava/lang/String;Ljava/lang/String;II)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v2

    .line 964
    .local v2, "imageHeaderMetadata":Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
    if-nez v2, :cond_3

    .line 965
    iget-object v5, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/localmedia/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/oculus/localmedia/MediaProviderUtils;->getImageOrientationDegrees(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 966
    .local v0, "degrees":I
    iget-object v5, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    iget v6, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    iget v7, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    invoke-static {v5, v6, v7}, Lcom/oculus/localmedia/MediaProviderUtils;->shouldTreatImageAsPano(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 967
    iget v5, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    iget v6, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    if-ne v5, v6, :cond_4

    const-string v1, "3DTB"

    .line 968
    .local v1, "format":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->builder()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v5

    const-string v6, "EQUIRECTANGULAR"

    invoke-virtual {v5, v6}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setOrientation(I)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v2

    .line 974
    .end local v0    # "degrees":I
    .end local v1    # "format":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 976
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadata;->builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->from(Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;)Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v3

    .line 977
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->getSingleton()Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->set(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V

    .line 978
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set DB cache entry for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 967
    .restart local v0    # "degrees":I
    :cond_4
    const-string v1, "2D"

    goto :goto_1

    .line 970
    :cond_5
    invoke-static {}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->builder()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setOrientation(I)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v2

    goto :goto_2

    .end local v0    # "degrees":I
    .end local v2    # "imageHeaderMetadata":Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
    .end local v3    # "metadata":Lcom/oculus/localmedia/metadata/CachedMetadata;
    :cond_6
    move-object v2, v4

    .line 982
    goto/16 :goto_0
.end method

.method private getSphericalVideoMetadata()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-object v1

    .line 992
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 993
    invoke-static {}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v2

    const-string v3, "DUALFISHEYE"

    invoke-virtual {v2, v3}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setProjectionType(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v2

    const-string v3, "3D"

    invoke-virtual {v2, v3}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v1

    goto :goto_0

    .line 995
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->getSingleton()Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->get(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    .line 997
    .local v0, "metadata":Lcom/oculus/localmedia/metadata/CachedMetadata;
    if-nez v0, :cond_3

    .line 998
    iget-object v2, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->parse(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v1

    .line 1001
    .local v1, "sphericalVideoMetadata":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadata;->builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->from(Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;)Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v0

    .line 1002
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->getSingleton()Lcom/oculus/localmedia/metadata/CachedMetadataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/oculus/localmedia/metadata/CachedMetadataManager;->set(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V

    .line 1003
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set DB cache entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1007
    .end local v1    # "sphericalVideoMetadata":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    :cond_3
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got DB cache entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static {}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->from(Lcom/oculus/localmedia/metadata/CachedMetadata;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getThumbnailPath(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "mediaId"    # J

    .prologue
    const/4 v7, 0x0

    .line 892
    const/4 v6, 0x0

    .line 894
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
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

    move-result-object v6

    .line 909
    :goto_0
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_data"

    .line 911
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 918
    :goto_1
    if-eqz v6, :cond_0

    .line 919
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-object v0

    .line 902
    :cond_1
    :try_start_1
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

    move-result-object v6

    goto :goto_0

    .line 911
    :cond_2
    const-string v0, "_data"

    .line 912
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 914
    :cond_3
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail not found for mediaId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    if-eqz v6, :cond_4

    .line 919
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    goto :goto_2

    .line 918
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 919
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private shouldSwapDimensions()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    const-string v1, "DROPBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getOrientation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getOrientation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V
    .locals 3
    .param p1, "sortType"    # Lcom/oculus/localmedia/MediaSort;
    .param p2, "ascendingOrder"    # Z
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
    .line 712
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/MediaItem;>;"
    sget-object v1, Lcom/oculus/localmedia/MediaItem$5;->$SwitchMap$com$oculus$localmedia$MediaSort:[I

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaSort;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 726
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 729
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    :goto_0
    if-eqz p2, :cond_0

    .line 730
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 732
    :cond_0
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 733
    return-void

    .line 714
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    :pswitch_0
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 715
    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    goto :goto_0

    .line 717
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    :pswitch_1
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    .line 718
    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    goto :goto_0

    .line 720
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    :pswitch_2
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->DURATION_COMPARATOR:Ljava/util/Comparator;

    .line 721
    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    goto :goto_0

    .line 723
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    :pswitch_3
    sget-object v0, Lcom/oculus/localmedia/MediaItem;->FILE_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 724
    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/MediaItem;>;"
    goto :goto_0

    .line 712
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
.method public deleteMedia(Landroid/content/ContentResolver;)I
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 771
    :try_start_0
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 772
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 777
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v0

    .line 775
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public ensureThumbnailPath(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 788
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v4

    if-nez v4, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 795
    invoke-direct {p0, v0}, Lcom/oculus/localmedia/MediaItem;->getMediaId(Landroid/content/ContentResolver;)J

    move-result-wide v2

    .line 796
    .local v2, "mediaId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 797
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/MediaItem;->generateThumbnail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "thumbnailPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {p0, v1}, Lcom/oculus/localmedia/MediaItem;->setThumbnailFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    .end local v1    # "thumbnailPath":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0, v2, v3}, Lcom/oculus/localmedia/MediaItem;->getThumbnailPath(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 805
    .restart local v1    # "thumbnailPath":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 806
    invoke-virtual {p0, v1}, Lcom/oculus/localmedia/MediaItem;->setThumbnailFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_3
    invoke-direct {p0, v0, v2, v3}, Lcom/oculus/localmedia/MediaItem;->generateThumbnail(Landroid/content/ContentResolver;J)V

    .line 809
    invoke-direct {p0, v0, v2, v3}, Lcom/oculus/localmedia/MediaItem;->getThumbnailPath(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {p0, v1}, Lcom/oculus/localmedia/MediaItem;->setThumbnailFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudioFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mAudioFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mAuthHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mName:Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationSecs()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    return v0
.end method

.method public getExternalFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mExternalFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mExternalFilePath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalThumbnailFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mExternalThumbnailFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mExternalThumbnailFilePath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    return-wide v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSidecarMetadata:Lcom/oculus/localmedia/metadata/SidecarMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
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

    .line 375
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_3
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public getFovX()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v1}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFovX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getFovX()F

    move-result v0

    .line 406
    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/oculus/localmedia/MediaItem;->shouldSwapDimensions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    goto :goto_0
.end method

.method public getId()J
    .locals 8

    .prologue
    .line 277
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteFileId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteFileId:Ljava/lang/String;

    .line 278
    .local v0, "key":Ljava/lang/String;
    :goto_0
    iget-wide v4, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    .line 279
    .local v2, "sizeOrTime":J
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v2

    or-long/2addr v4, v6

    return-wide v4

    .line 277
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "sizeOrTime":J
    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 278
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    goto :goto_1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->getOrientation()I

    move-result v0

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->isSpherical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->is180()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VR180"

    .line 396
    :goto_0
    return-object v0

    .line 388
    :cond_0
    const-string v0, "SPHERICAL"

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->isSpherical()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->is180()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VR180"

    goto :goto_0

    :cond_2
    const-string v0, "SPHERICAL"

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getPresentationFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mFilenameMetadata:Lcom/oculus/localmedia/metadata/FilenameMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->getPresentationFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_4
    const-string v0, "RECT"

    goto :goto_0
.end method

.method public getRemoteDeviceId()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteDeviceId:I

    return v0
.end method

.method public getRemoteFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mRemoteFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
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
    .line 258
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/oculus/localmedia/MediaType;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mType:Lcom/oculus/localmedia/MediaType;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mIsPrivate:Z

    if-eqz v0, :cond_0

    const-string v0, "private"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "public"

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/oculus/localmedia/MediaItem;->shouldSwapDimensions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    goto :goto_0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->hasAudio()Z

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCamera()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    invoke-static {}, Lcom/oculus/localmedia/MediaProviderUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "directory":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isExternalStorage()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    const-string v1, "external_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mType:Lcom/oculus/localmedia/MediaType;

    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocal()Z
    .locals 2

    .prologue
    .line 178
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
    .line 164
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

.method public prepare(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;Lcom/oculus/localmedia/MediaQuery;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/oculus/localmedia/LocalMediaConfig;
    .param p3, "query"    # Lcom/oculus/localmedia/MediaQuery;

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/localmedia/MediaItem;->prepare(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;Lcom/oculus/localmedia/MediaQuery;Z)V

    .line 737
    return-void
.end method

.method public prepare(Landroid/content/Context;Lcom/oculus/localmedia/LocalMediaConfig;Lcom/oculus/localmedia/MediaQuery;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/oculus/localmedia/LocalMediaConfig;
    .param p3, "query"    # Lcom/oculus/localmedia/MediaQuery;
    .param p4, "complete"    # Z

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/MediaItem;->ensureThumbnailPath(Landroid/content/Context;)V

    .line 742
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    if-nez v1, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/oculus/localmedia/MediaItem;->getSphericalVideoMetadata()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mSphericalVideoMetadata:Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    if-nez v1, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/oculus/localmedia/MediaItem;->getPanoImageMetadata()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mImageHeaderMetadata:Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    .line 748
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/oculus/localmedia/LocalMediaConfig;->getMediaUriManager()Lcom/oculus/localmedia/MediaUriManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 749
    invoke-virtual {p2}, Lcom/oculus/localmedia/LocalMediaConfig;->getMediaUriManager()Lcom/oculus/localmedia/MediaUriManager;

    move-result-object v1

    iget-object v2, p3, Lcom/oculus/localmedia/MediaQuery;->ExternalHost:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lcom/oculus/localmedia/MediaUriManager;->getThumbnailUrl(Lcom/oculus/localmedia/MediaItem;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mExternalThumbnailFilePath:Ljava/lang/String;

    .line 750
    invoke-virtual {p2}, Lcom/oculus/localmedia/LocalMediaConfig;->getMediaUriManager()Lcom/oculus/localmedia/MediaUriManager;

    move-result-object v1

    iget-object v2, p3, Lcom/oculus/localmedia/MediaQuery;->ExternalHost:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lcom/oculus/localmedia/MediaUriManager;->getMediaUrl(Lcom/oculus/localmedia/MediaItem;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mExternalFilePath:Ljava/lang/String;

    .line 751
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "PHONE"

    :goto_0
    iput-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    .line 755
    :cond_2
    if-eqz p4, :cond_3

    .line 756
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 758
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/localmedia/MediaProviderUtils;->extractAudioFromXMPHeader(Ljava/lang/String;)[B

    move-result-object v0

    .line 759
    .local v0, "audioData":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/oculus/localmedia/MediaProviderUtils;->saveToCache(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mAudioFilePath:Ljava/lang/String;

    .line 762
    .end local v0    # "audioData":[B
    :cond_3
    return-void

    .line 751
    :cond_4
    iget-object v1, p0, Lcom/oculus/localmedia/MediaItem;->mSource:Ljava/lang/String;

    goto :goto_0
.end method

.method protected requiresHydration()Z
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/MediaItem;->mAudioFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oculus/localmedia/MediaItem;->mRequiresHydration:Z

    goto :goto_0
.end method

.method protected setThumbnailFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailFilePath"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem;->mThumbnailFilePath:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 455
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 457
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getType()Lcom/oculus/localmedia/MediaType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "path"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getExternalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getRemoteFileId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "remoteFileId"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getRemoteFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :cond_1
    const-string v2, "remoteDeviceId"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getRemoteDeviceId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    const-string v2, "thumb"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getExternalThumbnailFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string v2, "mimeType"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v2, "source"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string v2, "visibility"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getVisibility()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v2, "isDeletable"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->isDeletable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 468
    const-string v2, "isDownloadable"

    iget-boolean v3, p0, Lcom/oculus/localmedia/MediaItem;->mIsDownloadable:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 469
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "downloadUrl"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getAuthHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "authHeader"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    :cond_3
    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    const-string v2, "date"

    iget-wide v4, p0, Lcom/oculus/localmedia/MediaItem;->mDateAdded:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 472
    :cond_4
    iget v2, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    if-eqz v2, :cond_5

    const-string v2, "duration"

    iget v3, p0, Lcom/oculus/localmedia/MediaItem;->mDurationSecs:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    :cond_5
    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    const-string v2, "size"

    iget-wide v4, p0, Lcom/oculus/localmedia/MediaItem;->mFileSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 474
    :cond_6
    iget v2, p0, Lcom/oculus/localmedia/MediaItem;->mHeight:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/oculus/localmedia/MediaItem;->mWidth:I

    if-lez v2, :cond_7

    .line 475
    const-string v2, "height"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    const-string v2, "width"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    :cond_7
    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mLatitude:D

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_8

    const-string v2, "latitude"

    iget-wide v4, p0, Lcom/oculus/localmedia/MediaItem;->mLatitude:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 479
    :cond_8
    iget-wide v2, p0, Lcom/oculus/localmedia/MediaItem;->mLongitude:D

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_9

    const-string v2, "longitude"

    iget-wide v4, p0, Lcom/oculus/localmedia/MediaItem;->mLongitude:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 480
    :cond_9
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getOrientation()I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "orientation"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 481
    :cond_a
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v2, "presentationFormat"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getPresentationFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFovX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    const-string v2, "fovX"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getFovX()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 484
    :cond_b
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->requiresHydration()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "requiresHydration"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 485
    :cond_c
    iget v2, p0, Lcom/oculus/localmedia/MediaItem;->mThumbOrientation:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_d

    const-string v2, "thumbOrientation"

    iget v3, p0, Lcom/oculus/localmedia/MediaItem;->mThumbOrientation:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    :cond_d
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getAudioFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v2, "audioPath"

    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->getAudioFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_e
    :goto_0
    return-object v1

    .line 487
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not serialize to JSON media with path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/localmedia/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
