.class public Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "OculusExtractorMediaPeriod.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private final extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

.field private seekTimeUs:J

.field final synthetic this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;Lcom/oculus/android/exoplayer2/util/ConditionVariable;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 746
    invoke-static {p3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 747
    invoke-static {p4}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    .line 748
    iput-object p5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    .line 749
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    const/4 p1, 0x1

    .line 750
    iput-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 p1, -0x1

    .line 751
    iput-wide p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 729
    iget-wide v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 762
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_9

    .line 773
    iget-boolean v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 776
    :try_start_0
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    invoke-static {v4}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->access$600(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    iget-wide v4, v4, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 778
    iget-object v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    iget-object v7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v3, v7}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/extractor/Extractor;

    move-result-object v6

    .line 779
    iget-boolean v7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v7, :cond_0

    .line 780
    iget-wide v7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/oculus/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 781
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_0
    :goto_1
    if-nez v1, :cond_5

    .line 783
    iget-boolean v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v4, :cond_5

    .line 784
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/util/ConditionVariable;->block()V

    .line 785
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v6, v3, v4}, Lcom/oculus/android/exoplayer2/extractor/Extractor;->read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I

    move-result v1

    goto :goto_1

    .line 788
    :cond_1
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    iget-wide v12, v4, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 789
    iget-object v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    new-instance v14, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget-object v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v5}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$700(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v14

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v4, v14}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 790
    iget-wide v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 791
    iget-wide v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v4, v12

    iput-wide v4, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 793
    :cond_2
    new-instance v4, Lcom/oculus/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-wide v9, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->length:J

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/oculus/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 794
    :try_start_1
    iget-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-interface {v5}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/extractor/Extractor;

    move-result-object v3

    .line 795
    iget-boolean v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v5, :cond_3

    .line 796
    iget-wide v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v3, v12, v13, v5, v6}, Lcom/oculus/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 797
    iput-boolean v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 799
    iget-boolean v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v5, :cond_4

    .line 800
    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/util/ConditionVariable;->block()V

    .line 801
    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v3, v4, v5}, Lcom/oculus/android/exoplayer2/extractor/Extractor;->read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I

    move-result v1

    .line 802
    invoke-interface {v4}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v7}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$800(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)J

    move-result-wide v7

    add-long/2addr v7, v12

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 803
    invoke-interface {v4}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    .line 804
    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/oculus/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v5}, Lcom/oculus/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 805
    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v5}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$1000(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-static {v6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->access$900(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    move-object v3, v4

    :cond_5
    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 813
    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 815
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lcom/oculus/android/exoplayer2/util/Util;->closeQuietly(Lcom/oculus/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-eq v1, v2, :cond_8

    if-eqz v3, :cond_8

    .line 813
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 815
    :cond_8
    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Util;->closeQuietly(Lcom/oculus/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :cond_9
    return-void
.end method

.method public setLoadPosition(JJ)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/oculus/android/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 756
    iput-wide p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    const/4 p1, 0x1

    .line 757
    iput-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    return-void
.end method
