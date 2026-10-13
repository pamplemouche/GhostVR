.class public Lcom/facebook/cameracore/muxing/MuxerWrapperManager;
.super Ljava/lang/Object;
.source "MuxerWrapperManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final UNINITIALIZED:I

.field private mFirstAudioEncodedPTSInUs:J

.field private mFirstVideoEncodedPTSInUs:J

.field private mLastAudioEncodedPTSInUs:J

.field private mLastVideoEncodedPTSInUs:J

.field private final mMuxerWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/cameracore/muxing/MuxerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mSlowdownMultiplier:D

.field private silentBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/cameracore/muxing/MuxerWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->UNINITIALIZED:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mMuxerWrappers:Ljava/util/List;

    .line 36
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mSlowdownMultiplier:D

    .line 40
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mMuxerWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    iput-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstAudioEncodedPTSInUs:J

    .line 42
    iput-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastAudioEncodedPTSInUs:J

    .line 43
    iput-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstVideoEncodedPTSInUs:J

    .line 44
    iput-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastVideoEncodedPTSInUs:J

    .line 45
    return-void
.end method

.method private dispatchWritingAudioToMuxerWrappers(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mMuxerWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/muxing/MuxerWrapper;

    .line 192
    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapper;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method private dispatchWritingVideoToMuxerWrappers(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mMuxerWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/muxing/MuxerWrapper;

    .line 199
    invoke-interface {v0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapper;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public setFixedRotationDegreesHint(I)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mMuxerWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/muxing/MuxerWrapper;

    .line 185
    invoke-interface {v0, p1}, Lcom/facebook/cameracore/muxing/MuxerWrapper;->setFixedRotationDegreesHint(I)V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public setSlowdownMultiplier(D)V
    .locals 1

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mSlowdownMultiplier:D

    .line 169
    return-void
.end method

.method public stop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mMuxerWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mMuxerWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/muxing/MuxerWrapper;

    .line 57
    invoke-interface {v0}, Lcom/facebook/cameracore/muxing/MuxerWrapper;->stop()Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 58
    goto :goto_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    return v1
.end method

.method public writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastAudioEncodedPTSInUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mSlowdownMultiplier:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->silentBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->silentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->silentBuffer:Ljava/nio/ByteBuffer;

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->silentBuffer:Ljava/nio/ByteBuffer;

    .line 92
    :cond_4
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastAudioEncodedPTSInUs:J

    .line 93
    iget-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstAudioEncodedPTSInUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 94
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstAudioEncodedPTSInUs:J

    .line 96
    :cond_5
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstAudioEncodedPTSInUs:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mSlowdownMultiplier:D

    mul-double/2addr v0, v2

    double-to-long v4, v0

    .line 98
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->dispatchWritingAudioToMuxerWrappers(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0
.end method

.method public writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 114
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastVideoEncodedPTSInUs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 127
    :cond_2
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 128
    iget-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstVideoEncodedPTSInUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 129
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstVideoEncodedPTSInUs:J

    .line 137
    :cond_3
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 138
    sget-object v1, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "Video PTS negative - current pts %d last pts %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 143
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastVideoEncodedPTSInUs:J

    .line 144
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastVideoEncodedPTSInUs:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastVideoEncodedPTSInUs:J

    .line 150
    :goto_1
    iget-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastVideoEncodedPTSInUs:J

    iget-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mFirstVideoEncodedPTSInUs:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mSlowdownMultiplier:D

    mul-double/2addr v0, v2

    double-to-long v4, v0

    .line 152
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->dispatchWritingVideoToMuxerWrappers(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 147
    :cond_4
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/facebook/cameracore/muxing/MuxerWrapperManager;->mLastVideoEncodedPTSInUs:J

    goto :goto_1
.end method
