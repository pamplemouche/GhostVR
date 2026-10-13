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
.field private mAuthHeader:Ljava/lang/String;

.field private mDateAdded:J

.field private mDownloadUrl:Ljava/lang/String;

.field private mDurationSecs:I

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mHeight:I

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

.field private mSource:Ljava/lang/String;

.field private mThumbOrientation:I

.field private mThumbnailFilePath:Ljava/lang/String;

.field private mType:Lcom/oculus/localmedia/MediaType;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const v0, 0x7fffffff

    iput v0, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbOrientation:I

    return-void
.end method

.method public static from(Lcom/oculus/localmedia/MediaItem;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 4
    .param p0, "item"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 525
    new-instance v0, Lcom/oculus/localmedia/MediaItem$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$Builder;-><init>()V

    .line 526
    .local v0, "builder":Lcom/oculus/localmedia/MediaItem$Builder;
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$300(Lcom/oculus/localmedia/MediaItem;)Lcom/oculus/localmedia/MediaType;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 527
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$100(Lcom/oculus/localmedia/MediaItem;)I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDurationSecs:I

    .line 528
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$000(Lcom/oculus/localmedia/MediaItem;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDateAdded:J

    .line 529
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$200(Lcom/oculus/localmedia/MediaItem;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    .line 530
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$400(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    .line 531
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$500(Lcom/oculus/localmedia/MediaItem;)I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mInternalId:I

    .line 532
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$600(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbnailFilePath:Ljava/lang/String;

    .line 533
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$700(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteFileId:Ljava/lang/String;

    .line 534
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$800(Lcom/oculus/localmedia/MediaItem;)I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteDeviceId:I

    .line 535
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$900(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mName:Ljava/lang/String;

    .line 536
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1000(Lcom/oculus/localmedia/MediaItem;)I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mWidth:I

    .line 537
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1100(Lcom/oculus/localmedia/MediaItem;)I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mHeight:I

    .line 538
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1200(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    .line 539
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1300(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mSource:Ljava/lang/String;

    .line 540
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1400(Lcom/oculus/localmedia/MediaItem;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mIsDownloadable:Z

    .line 541
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1500(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDownloadUrl:Ljava/lang/String;

    .line 542
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1600(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mAuthHeader:Ljava/lang/String;

    .line 543
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1700(Lcom/oculus/localmedia/MediaItem;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mLatitude:D

    .line 544
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1800(Lcom/oculus/localmedia/MediaItem;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mLongitude:D

    .line 545
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$1900(Lcom/oculus/localmedia/MediaItem;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mIsPrivate:Z

    .line 546
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$2000(Lcom/oculus/localmedia/MediaItem;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRequiresHydration:Z

    .line 547
    invoke-static {p0}, Lcom/oculus/localmedia/MediaItem;->access$2100(Lcom/oculus/localmedia/MediaItem;)I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbOrientation:I

    .line 548
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 6
    .param p0, "jsonItem"    # Ljava/lang/String;

    .prologue
    .line 552
    new-instance v0, Lcom/oculus/localmedia/MediaItem$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaItem$Builder;-><init>()V

    .line 554
    .local v0, "builder":Lcom/oculus/localmedia/MediaItem$Builder;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 555
    .local v2, "queryObject":Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/localmedia/MediaType;->parse(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 556
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mName:Ljava/lang/String;

    .line 557
    const-string v3, "path"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    .line 558
    const-string v3, "remoteFileId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteFileId:Ljava/lang/String;

    .line 559
    const-string v3, "downloadUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDownloadUrl:Ljava/lang/String;

    .line 560
    const-string v3, "mimeType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    .line 561
    const-string v3, "size"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    .line 562
    const-string v3, "date"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDateAdded:J

    .line 563
    const-string v3, "source"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mSource:Ljava/lang/String;

    .line 564
    const-string v3, "requiresHydration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRequiresHydration:Z

    .line 565
    const-string v3, "thumbOrientation"

    const v4, 0x7fffffff

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbOrientation:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    return-object v0

    .line 566
    .end local v2    # "queryObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid item json : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/MediaItem;
    .locals 30

    .prologue
    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteFileId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 684
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "Either FilePath or mRemoteFileId must be supplied to build a media item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v2, 0x0

    .line 696
    :goto_0
    return-object v2

    .line 687
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 688
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "MimeType is mandatory to build a media item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v2, 0x0

    goto :goto_0

    .line 692
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDateAdded:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 693
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "FileSize or DateAdded (timestamp) is mandatory to build a media item id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v2, 0x0

    goto :goto_0

    .line 696
    :cond_2
    new-instance v2, Lcom/oculus/localmedia/MediaItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mInternalId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbnailFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteFileId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteDeviceId:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDateAdded:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDurationSecs:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mSource:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mIsDownloadable:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mAuthHeader:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mLatitude:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mLongitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mIsPrivate:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mRequiresHydration:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbOrientation:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-direct/range {v2 .. v29}, Lcom/oculus/localmedia/MediaItem;-><init>(Lcom/oculus/localmedia/MediaType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JIJIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;DDZZILcom/oculus/localmedia/MediaItem$1;)V

    goto/16 :goto_0
.end method

.method public setAuthHeader(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "authHeader"    # Ljava/lang/String;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mAuthHeader:Ljava/lang/String;

    .line 655
    return-object p0
.end method

.method public setDateAdded(J)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1
    .param p1, "dateAdded"    # J

    .prologue
    .line 583
    iput-wide p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mDateAdded:J

    .line 584
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mDownloadUrl:Ljava/lang/String;

    .line 649
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mIsDownloadable:Z

    .line 650
    return-object p0

    .line 649
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDurationSecs(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "durationSecs"    # I

    .prologue
    .line 578
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mDurationSecs:I

    .line 579
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mFilePath:Ljava/lang/String;

    .line 594
    return-object p0
.end method

.method public setFileSize(J)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 588
    iput-wide p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mFileSize:J

    .line 589
    return-object p0
.end method

.method public setHeight(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 628
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mHeight:I

    .line 629
    return-object p0
.end method

.method public setInternalId(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "internalId"    # I

    .prologue
    .line 598
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mInternalId:I

    .line 599
    return-object p0
.end method

.method public setIsDownloadable(Z)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "isDownloadable"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mIsDownloadable:Z

    .line 644
    return-object p0
.end method

.method public setIsPrivate(Z)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "isPrivate"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mIsPrivate:Z

    .line 670
    return-object p0
.end method

.method public setLatitude(D)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 659
    iput-wide p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mLatitude:D

    .line 660
    return-object p0
.end method

.method public setLongitude(D)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 664
    iput-wide p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mLongitude:D

    .line 665
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mMimeType:Ljava/lang/String;

    .line 634
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mName:Ljava/lang/String;

    .line 619
    return-object p0
.end method

.method public setRemoteDeviceId(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 613
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteDeviceId:I

    .line 614
    return-object p0
.end method

.method public setRemoteFileId(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mRemoteFileId:Ljava/lang/String;

    .line 609
    return-object p0
.end method

.method public setRequiresHydration(Z)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "requiresHydration"    # Z

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mRequiresHydration:Z

    .line 675
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mSource:Ljava/lang/String;

    .line 639
    return-object p0
.end method

.method public setThumbOrientation(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "thumbOrientation"    # I

    .prologue
    .line 678
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbOrientation:I

    .line 679
    return-object p0
.end method

.method public setThumbnailFilePath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mThumbnailFilePath:Ljava/lang/String;

    .line 604
    return-object p0
.end method

.method public setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mType:Lcom/oculus/localmedia/MediaType;

    .line 574
    return-object p0
.end method

.method public setWidth(I)Lcom/oculus/localmedia/MediaItem$Builder;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 623
    iput p1, p0, Lcom/oculus/localmedia/MediaItem$Builder;->mWidth:I

    .line 624
    return-object p0
.end method
