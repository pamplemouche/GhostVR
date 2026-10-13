.class public Lcom/facebook/quicklog/QuickEvent;
.super Ljava/lang/Object;
.source "QuickEvent.java"

# interfaces
.implements Lcom/facebook/quicklog/ObjectPool$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/quicklog/ObjectPool$Poolable",
        "<",
        "Lcom/facebook/quicklog/QuickEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final POOL:Lcom/facebook/quicklog/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/quicklog/ObjectPool",
            "<",
            "Lcom/facebook/quicklog/QuickEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCheckForForegroundLaunch:Z

.field mDataProviderStartData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mDataProviderStopData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mDuration:I

.field mEnabledMetadataCategories:J

.field mExtra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExtraTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

.field mInstanceKey:I

.field mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mIsActive:Z

.field mIsAlwaysOn:Z

.field mIsMissingConfig:Z

.field mLastActionId:S

.field mLastNoteTimestamp:J

.field mLegacyIsTagSet:Z

.field mLegacyMarkerName:Ljava/lang/String;

.field mMarkerId:I

.field mMonotonicTimestamp:J

.field private mNext:Lcom/facebook/quicklog/QuickEvent;

.field mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mQplLibVersion:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mQuickStartListenerBitmask:I

.field private mQuickStartListenerStatusIndex:I

.field final mRecycleCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mRestarted:I

.field mRetainOnExit:Z

.field mSampleRate:I

.field mShouldCounterLog:Z

.field mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mThreadId:I

.field mTimestamp:J

.field mUniqueIdentifier:I

.field mUsingAutoTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/quicklog/QuickEvent$1;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/facebook/quicklog/QuickEvent$1;-><init>(I)V

    sput-object v0, Lcom/facebook/quicklog/QuickEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mRecycleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static allocateActiveEvent(IIIIJZZZJZJZZILjava/lang/String;)Lcom/facebook/quicklog/QuickEvent;
    .locals 3

    .prologue
    .line 361
    sget-object v1, Lcom/facebook/quicklog/QuickEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v1}, Lcom/facebook/quicklog/ObjectPool;->allocate()Lcom/facebook/quicklog/ObjectPool$Poolable;

    move-result-object v1

    check-cast v1, Lcom/facebook/quicklog/QuickEvent;

    .line 362
    iput p0, v1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    .line 363
    iput p3, v1, Lcom/facebook/quicklog/QuickEvent;->mSampleRate:I

    .line 364
    iput-wide p4, v1, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    .line 365
    iput-boolean p6, v1, Lcom/facebook/quicklog/QuickEvent;->mIsAlwaysOn:Z

    .line 366
    iput-boolean p7, v1, Lcom/facebook/quicklog/QuickEvent;->mIsMissingConfig:Z

    .line 367
    iput-boolean p8, v1, Lcom/facebook/quicklog/QuickEvent;->mShouldCounterLog:Z

    .line 368
    iput-wide p9, v1, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    .line 369
    iput-boolean p11, v1, Lcom/facebook/quicklog/QuickEvent;->mUsingAutoTime:Z

    .line 370
    iput-wide p9, v1, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 371
    iput-wide p12, v1, Lcom/facebook/quicklog/QuickEvent;->mTimestamp:J

    .line 372
    iput p1, v1, Lcom/facebook/quicklog/QuickEvent;->mInstanceKey:I

    .line 373
    iput p2, v1, Lcom/facebook/quicklog/QuickEvent;->mUniqueIdentifier:I

    .line 374
    const/4 v2, 0x1

    iput-short v2, v1, Lcom/facebook/quicklog/QuickEvent;->mLastActionId:S

    .line 375
    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/facebook/quicklog/QuickEvent;->mCheckForForegroundLaunch:Z

    .line 376
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/facebook/quicklog/QuickEvent;->mIsActive:Z

    .line 377
    move/from16 v0, p15

    iput-boolean v0, v1, Lcom/facebook/quicklog/QuickEvent;->mRetainOnExit:Z

    .line 378
    const/4 v2, 0x0

    iput v2, v1, Lcom/facebook/quicklog/QuickEvent;->mDuration:I

    .line 379
    move/from16 v0, p16

    iput v0, v1, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 380
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/facebook/quicklog/QuickEvent;->mQplLibVersion:Ljava/lang/String;

    .line 381
    return-object v1
.end method

.method public static allocateInactiveEvent(IIJZZIZILjava/lang/String;)Lcom/facebook/quicklog/QuickEvent;
    .locals 2

    .prologue
    .line 394
    sget-object v0, Lcom/facebook/quicklog/QuickEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v0}, Lcom/facebook/quicklog/ObjectPool;->allocate()Lcom/facebook/quicklog/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickEvent;

    .line 395
    iput p0, v0, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    .line 396
    iput p1, v0, Lcom/facebook/quicklog/QuickEvent;->mInstanceKey:I

    .line 397
    iput-wide p2, v0, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    .line 398
    iput-boolean p4, v0, Lcom/facebook/quicklog/QuickEvent;->mUsingAutoTime:Z

    .line 399
    iput-boolean p5, v0, Lcom/facebook/quicklog/QuickEvent;->mShouldCounterLog:Z

    .line 400
    iput p6, v0, Lcom/facebook/quicklog/QuickEvent;->mUniqueIdentifier:I

    .line 401
    iput-boolean p7, v0, Lcom/facebook/quicklog/QuickEvent;->mRetainOnExit:Z

    .line 402
    const/4 v1, 0x0

    iput v1, v0, Lcom/facebook/quicklog/QuickEvent;->mDuration:I

    .line 403
    iput-wide p2, v0, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 404
    iput p8, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 405
    iput-object p9, v0, Lcom/facebook/quicklog/QuickEvent;->mQplLibVersion:Ljava/lang/String;

    .line 406
    return-object v0
.end method

.method private annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtra:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtra:Ljava/util/ArrayList;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtraTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtraTypes:Ljava/util/ArrayList;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtra:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtra:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtraTypes:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method


# virtual methods
.method public addPoint(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V
    .locals 9
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcom/facebook/quicklog/PointData;",
            "Landroid/util/SparseArray",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/facebook/quicklog/IntermediatePoints;

    invoke-direct {v0}, Lcom/facebook/quicklog/IntermediatePoints;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/IntermediatePoints;->add(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V

    .line 266
    iget-wide v0, p0, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 267
    return-void
.end method

.method public annotate(Ljava/lang/String;D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 192
    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    return-object v0
.end method

.method public annotate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    return-object v0
.end method

.method public annotate(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 185
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    return-object v0
.end method

.method public annotate(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 199
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    return-object v0
.end method

.method public annotate(Ljava/lang/String;[D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    invoke-static {p2}, Lcom/facebook/quicklog/AnnotationUtils;->toString([D)Ljava/lang/String;

    move-result-object v0

    .line 227
    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    return-object v0
.end method

.method public annotate(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-static {p2}, Lcom/facebook/quicklog/AnnotationUtils;->toString([I)Ljava/lang/String;

    move-result-object v0

    .line 206
    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    return-object v0
.end method

.method public annotate(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    invoke-static {p2}, Lcom/facebook/quicklog/AnnotationUtils;->toString([J)Ljava/lang/String;

    move-result-object v0

    .line 220
    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    return-object v0
.end method

.method public annotate(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-static {p2}, Lcom/facebook/quicklog/AnnotationUtils;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    return-object v0
.end method

.method public annotate(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    array-length v3, p2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-boolean v4, p2, v1

    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    const-string v4, ",,,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    array-length v3, p2

    if-lez v3, :cond_1

    const-string v0, ",,,"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    return-object v0
.end method

.method public annotate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/quicklog/QuickEvent;->annotateInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    const-string/jumbo v0, "tag_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mLegacyIsTagSet:Z

    .line 173
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mUniqueIdentifier:I

    .line 66
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mInstanceKey:I

    .line 67
    iput-wide v4, p0, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    .line 68
    iput-wide v4, p0, Lcom/facebook/quicklog/QuickEvent;->mTimestamp:J

    .line 69
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mDuration:I

    .line 70
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    .line 71
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mSampleRate:I

    .line 72
    iput-wide v4, p0, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    .line 73
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mIsAlwaysOn:Z

    .line 74
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mIsMissingConfig:Z

    .line 75
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mLegacyIsTagSet:Z

    .line 77
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mShouldCounterLog:Z

    .line 78
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mUsingAutoTime:Z

    .line 79
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 80
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    .line 81
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mExtra:Ljava/util/ArrayList;

    .line 82
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mExtraTypes:Ljava/util/ArrayList;

    .line 83
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mTags:Ljava/util/ArrayList;

    .line 84
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    invoke-virtual {v0}, Lcom/facebook/quicklog/IntermediatePoints;->clear()V

    .line 87
    :cond_0
    iput-short v1, p0, Lcom/facebook/quicklog/QuickEvent;->mLastActionId:S

    .line 88
    iput-wide v4, p0, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 89
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mCheckForForegroundLaunch:Z

    .line 90
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mIsActive:Z

    .line 91
    iput-boolean v1, p0, Lcom/facebook/quicklog/QuickEvent;->mRetainOnExit:Z

    .line 92
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mRestarted:I

    .line 93
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 94
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    .line 95
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 96
    iput-object v2, p0, Lcom/facebook/quicklog/QuickEvent;->mQplLibVersion:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mQuickStartListenerBitmask:I

    .line 98
    iput v1, p0, Lcom/facebook/quicklog/QuickEvent;->mQuickStartListenerStatusIndex:I

    .line 99
    return-void
.end method

.method public detachDataProvidersStartData()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 413
    return-object v0
.end method

.method public detachDataProvidersStopData()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    .line 420
    return-object v0
.end method

.method public detachPoints()Lcom/facebook/quicklog/IntermediatePoints;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    .line 273
    return-object v0
.end method

.method public generateStopPerfStats()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->generateStopPerfStats()V

    .line 298
    :cond_0
    return-void
.end method

.method public getExtra()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtra:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mExtraTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGuessWasBackgrounded()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    return-object v0
.end method

.method public getMarkerId()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    return v0
.end method

.method public getNext()Lcom/facebook/quicklog/QuickEvent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mNext:Lcom/facebook/quicklog/QuickEvent;

    return-object v0
.end method

.method public bridge synthetic getNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickEvent;->getNext()Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method mergeQuickStartListenerBitmask(I)V
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/facebook/quicklog/QuickEvent;->mQuickStartListenerBitmask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/quicklog/QuickEvent;->mQuickStartListenerBitmask:I

    .line 433
    return-void
.end method

.method public onStoredForRecycle()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mRecycleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 61
    return-void
.end method

.method public setGuessWasBackgrounded(Lcom/facebook/common/util/TriState;Z)V
    .locals 2

    .prologue
    .line 335
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/QuickEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-eq v0, v1, :cond_1

    .line 336
    :cond_0
    if-eqz p1, :cond_2

    :goto_0
    iput-object p1, p0, Lcom/facebook/quicklog/QuickEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    .line 338
    :cond_1
    return-void

    .line 336
    :cond_2
    sget-object p1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    goto :goto_0
.end method

.method public setGuessWasBackgrounded(ZZ)V
    .locals 1

    .prologue
    .line 309
    invoke-static {p1}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(Lcom/facebook/common/util/TriState;Z)V

    .line 310
    return-void
.end method

.method public setNext(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/quicklog/QuickEvent;->mNext:Lcom/facebook/quicklog/QuickEvent;

    .line 51
    return-void
.end method

.method public bridge synthetic setNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/facebook/quicklog/QuickEvent;

    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/QuickEvent;->setNext(Lcom/facebook/quicklog/QuickEvent;)V

    return-void
.end method

.method setQuickStartListenerBitmask(I)V
    .locals 0

    .prologue
    .line 428
    iput p1, p0, Lcom/facebook/quicklog/QuickEvent;->mQuickStartListenerBitmask:I

    .line 429
    return-void
.end method

.method setQuickStartListenerStatusIndex(I)V
    .locals 0

    .prologue
    .line 436
    iput p1, p0, Lcom/facebook/quicklog/QuickEvent;->mQuickStartListenerStatusIndex:I

    .line 437
    return-void
.end method

.method public updateUsingAutoTime(Z)V
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/facebook/quicklog/QuickEvent;->mUsingAutoTime:Z

    if-eqz v0, :cond_0

    :goto_0
    iput-boolean p1, p0, Lcom/facebook/quicklog/QuickEvent;->mUsingAutoTime:Z

    .line 343
    return-void

    .line 342
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
