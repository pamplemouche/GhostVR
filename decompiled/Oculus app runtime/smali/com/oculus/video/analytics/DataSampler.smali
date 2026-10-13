.class Lcom/oculus/video/analytics/DataSampler;
.super Ljava/lang/Object;
.source "DataSampler.java"


# static fields
.field private static final SUFFIX_AVG:Ljava/lang/String; = "_avg"

.field private static final SUFFIX_COUNT:Ljava/lang/String; = "_count"

.field private static final SUFFIX_MAX:Ljava/lang/String; = "_max"

.field private static final SUFFIX_MIN:Ljava/lang/String; = "_min"

.field private static final SUFFIX_P_50:Ljava/lang/String; = "_p_50"

.field private static final SUFFIX_SAMPLE:Ljava/lang/String; = "_sample"

.field private static final SUFFIX_SUM:Ljava/lang/String; = "_sum"


# instance fields
.field private final eventPrefix:Ljava/lang/String;

.field private max:J

.field private min:J

.field private final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sum:J

.field private totalWeight:D

.field private weightedSum:D


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->weightedSum:D

    .line 23
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->totalWeight:D

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->sum:J

    .line 26
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->max:J

    .line 27
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->min:J

    .line 30
    iput-object p1, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/oculus/video/analytics/DataSampler;->getCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_count"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/oculus/video/analytics/DataSampler;->getCount()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_avg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/oculus/video/analytics/DataSampler;->getAverage()D

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/oculus/video/analytics/DataSampler;->getMin()J

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_max"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/oculus/video/analytics/DataSampler;->getMax()J

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    iget-object p3, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_1

    .line 98
    iget-object p3, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 100
    iget-object p3, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 101
    iget-object p3, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 103
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_sample"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_p_50"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/oculus/video/analytics/DataSampler;->eventPrefix:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_sum"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oculus/video/analytics/DataSampler;->getSum()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method getAverage()D
    .locals 6

    .line 72
    iget-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->weightedSum:D

    iget-wide v2, p0, Lcom/oculus/video/analytics/DataSampler;->totalWeight:D

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getMax()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->max:J

    return-wide v0
.end method

.method getMin()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->min:J

    return-wide v0
.end method

.method getSum()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->sum:J

    return-wide v0
.end method

.method sample(J)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 34
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    return-void
.end method

.method sample(JD)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-wide p1, p0, Lcom/oculus/video/analytics/DataSampler;->min:J

    .line 41
    iput-wide p1, p0, Lcom/oculus/video/analytics/DataSampler;->max:J

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->totalWeight:D

    .line 44
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->weightedSum:D

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->sum:J

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->totalWeight:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->totalWeight:D

    .line 49
    iget-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->weightedSum:D

    long-to-double v2, p1

    mul-double v2, v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oculus/video/analytics/DataSampler;->weightedSum:D

    .line 50
    iget-wide p3, p0, Lcom/oculus/video/analytics/DataSampler;->sum:J

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/oculus/video/analytics/DataSampler;->sum:J

    .line 52
    iget-wide p3, p0, Lcom/oculus/video/analytics/DataSampler;->max:J

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    .line 53
    iput-wide p1, p0, Lcom/oculus/video/analytics/DataSampler;->max:J

    .line 56
    :cond_1
    iget-wide p3, p0, Lcom/oculus/video/analytics/DataSampler;->min:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_2

    .line 57
    iput-wide p1, p0, Lcom/oculus/video/analytics/DataSampler;->min:J

    .line 60
    :cond_2
    iget-object p3, p0, Lcom/oculus/video/analytics/DataSampler;->samples:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
