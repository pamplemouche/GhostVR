.class public Lcom/facebook/quicklog/PerformanceLoggingEvent;
.super Ljava/lang/Object;
.source "PerformanceLoggingEvent.java"

# interfaces
.implements Lcom/facebook/quicklog/ObjectPool$Poolable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/quicklog/ObjectPool$Poolable",
        "<",
        "Lcom/facebook/quicklog/PerformanceLoggingEvent;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final POOL:Lcom/facebook/quicklog/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/quicklog/ObjectPool",
            "<",
            "Lcom/facebook/quicklog/PerformanceLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static VERSION_MASK:I

.field public static VERSION_SHIFT:I


# instance fields
.field mActionId:S

.field mCancelled:Z

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

.field mDurationMs:I

.field mDurationSinceLastNote:I

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

.field mGuessWasStartedInBackground:Lcom/facebook/common/util/TriState;

.field mInstanceId:I

.field mIsAlwaysOn:Z

.field mIsMissingConfig:Z

.field mLegacyMarkerName:Ljava/lang/String;

.field private mLevel:I

.field mLogger:Lcom/facebook/quicklog/HoneyClientLogger;

.field mMetadata:Lcom/facebook/quicklog/MetadataList;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mMonotonicTimestamp:J

.field private mNext:Lcom/facebook/quicklog/PerformanceLoggingEvent;

.field mNote:Z

.field mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mPoints:Lcom/facebook/quicklog/IntermediatePoints;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mPrevActionId:S

.field mQplLibVersion:Ljava/lang/String;

.field mRestarted:I

.field mSampleRate:I

.field private mSubtype:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

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

.field public mThreadId:I

.field mTimestamp:J

.field mUniqueId:I

.field mVersionAndFlags:I

.field public quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const/16 v0, 0xff

    sput v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->VERSION_MASK:I

    .line 31
    const/16 v0, 0x18

    sput v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->VERSION_SHIFT:I

    .line 41
    new-instance v0, Lcom/facebook/quicklog/PerformanceLoggingEvent$1;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/facebook/quicklog/PerformanceLoggingEvent$1;-><init>(I)V

    sput-object v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->VERSION_MASK:I

    and-int/lit8 v0, v0, 0x1

    sget v1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->VERSION_SHIFT:I

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mVersionAndFlags:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mExtra:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mExtraTypes:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mTags:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p0}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->clear()V

    .line 158
    return-void
.end method

.method private addToTagsString(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 245
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 248
    goto :goto_0

    .line 249
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnnotationsAsList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mExtra:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mExtraTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method addTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    iput v2, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mUniqueId:I

    .line 69
    iput-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mLegacyMarkerName:Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mRestarted:I

    .line 71
    iput v2, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mLevel:I

    .line 72
    iput-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mSubtype:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mCancelled:Z

    .line 75
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mExtra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mExtraTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    iput-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mPoints:Lcom/facebook/quicklog/IntermediatePoints;

    .line 79
    iput-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mNext:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    .line 80
    iput-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 81
    iput-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 82
    iput-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    .line 83
    iput-boolean v2, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mNote:Z

    .line 84
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mActionId:S

    .line 85
    iput v2, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDurationMs:I

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mEnabledMetadataCategories:J

    .line 87
    iput v2, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mThreadId:I

    .line 88
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMetadata:Lcom/facebook/quicklog/MetadataList;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMetadata:Lcom/facebook/quicklog/MetadataList;

    invoke-virtual {v0}, Lcom/facebook/quicklog/MetadataList;->clear()V

    .line 91
    :cond_0
    return-void
.end method

.method public getActionId()S
    .locals 1

    .prologue
    .line 330
    iget-short v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mActionId:S

    return v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    iget-short v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mActionId:S

    invoke-interface {v0, v1}, Lcom/facebook/quicklog/QuicklogNameProvider;->getActionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDurationMs:I

    return v0
.end method

.method public getDurationSinceLastNote()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDurationSinceLastNote:I

    return v0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mUniqueId:I

    return v0
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
    .line 257
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mExtra:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGuessWasBackgrounded()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/util/TriState;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getGuessWasStartedInBackground()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasStartedInBackground:Lcom/facebook/common/util/TriState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/util/TriState;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mInstanceId:I

    return v0
.end method

.method public getLegacyMarkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mLegacyMarkerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    iget v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mUniqueId:I

    invoke-interface {v0, v1}, Lcom/facebook/quicklog/QuicklogNameProvider;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/facebook/quicklog/MetadataList;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMetadata:Lcom/facebook/quicklog/MetadataList;

    return-object v0
.end method

.method public getMonotonicTimestamp()J
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMonotonicTimestamp:J

    return-wide v0
.end method

.method public getNext()Lcom/facebook/quicklog/PerformanceLoggingEvent;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mNext:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    return-object v0
.end method

.method public bridge synthetic getNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getNext()Lcom/facebook/quicklog/PerformanceLoggingEvent;

    move-result-object v0

    return-object v0
.end method

.method public getPoints()Lcom/facebook/quicklog/IntermediatePoints;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mPoints:Lcom/facebook/quicklog/IntermediatePoints;

    return-object v0
.end method

.method public getPrevActionId()S
    .locals 1

    .prologue
    .line 346
    iget-short v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mPrevActionId:S

    return v0
.end method

.method public getQplLibVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mQplLibVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mSampleRate:I

    return v0
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
    .line 276
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTagsAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mTags:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->addToTagsString(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mTimestamp:J

    return-wide v0
.end method

.method public isAlwaysOn()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mIsAlwaysOn:Z

    return v0
.end method

.method public isCheckForForegroundLaunch()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mCheckForForegroundLaunch:Z

    return v0
.end method

.method public isGuessWasBackgroundedSet()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    invoke-virtual {v0}, Lcom/facebook/common/util/TriState;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuessWasStartedInBackgroundSet()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasStartedInBackground:Lcom/facebook/common/util/TriState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasStartedInBackground:Lcom/facebook/common/util/TriState;

    invoke-virtual {v0}, Lcom/facebook/common/util/TriState;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissingConfig()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mIsMissingConfig:Z

    return v0
.end method

.method public onStoredForRecycle()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mLogger:Lcom/facebook/quicklog/HoneyClientLogger;

    invoke-interface {v0, p0}, Lcom/facebook/quicklog/HoneyClientLogger;->log(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 163
    sget-object v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/facebook/quicklog/ObjectPool;->free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V

    .line 164
    return-void
.end method

.method public setNext(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mNext:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    .line 56
    return-void
.end method

.method public bridge synthetic setNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;

    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->setNext(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    return-void
.end method

.method setType(I)V
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mVersionAndFlags:I

    const v1, -0xff0001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mVersionAndFlags:I

    .line 285
    iget v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mVersionAndFlags:I

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mVersionAndFlags:I

    .line 286
    return-void
.end method

.method public startMetadataCategory(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMetadata:Lcom/facebook/quicklog/MetadataList;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/facebook/quicklog/MetadataList;

    invoke-direct {v0}, Lcom/facebook/quicklog/MetadataList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMetadata:Lcom/facebook/quicklog/MetadataList;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMetadata:Lcom/facebook/quicklog/MetadataList;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/MetadataList;->startCategory(Ljava/lang/String;)V

    .line 516
    return-void
.end method
