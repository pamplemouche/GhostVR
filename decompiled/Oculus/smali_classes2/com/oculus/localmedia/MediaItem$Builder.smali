.class public Lcom/oculus/localmedia/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDateAdded:J

.field private mDownloadUrl:Ljava/lang/String;

.field private mDurationSecs:I

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mHeight:I

.field private mMimeType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mThumbnailFilePath:Ljava/lang/String;

.field private mType:Lcom/oculus/localmedia/MediaType;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/MediaItem;
    .locals 18

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 437
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "FilePath is mandatory to build a media item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v2, 0x0

    .line 448
    :goto_0
    return-object v2

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 441
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "MimeType is mandatory to build a media item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x0

    goto :goto_0

    .line 444
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 445
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "FileSize is mandatory to build a media item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v2, 0x0

    goto :goto_0

    .line 448
    :cond_2
    new-instance v2, Lcom/oculus/localmedia/MediaItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbnailFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDateAdded:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDurationSecs:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v17}, Lcom/oculus/localmedia/MediaItem;-><init>(Lcom/oculus/localmedia/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/MediaItem$1;)V

    goto :goto_0
.end method

.method public setDateAdded(J)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1

    .prologue
    .line 386
    iput-wide p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mDateAdded:J

    .line 387
    return-object p0
.end method

.method public setDurationSecs(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0

    .prologue
    .line 381
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mDurationSecs:I

    .line 382
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public setFileSize(J)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1

    .prologue
    .line 391
    iput-wide p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    .line 392
    return-object p0
.end method

.method public setHeight(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0

    .prologue
    .line 416
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mHeight:I

    .line 417
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    .line 422
    return-object p0
.end method

.method public setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 377
    return-object p0
.end method

.method public setWidth(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0

    .prologue
    .line 411
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mWidth:I

    .line 412
    return-object p0
.end method
