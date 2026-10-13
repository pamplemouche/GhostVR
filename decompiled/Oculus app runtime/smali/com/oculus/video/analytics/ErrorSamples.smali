.class Lcom/oculus/video/analytics/ErrorSamples;
.super Ljava/lang/Object;
.source "ErrorSamples.java"


# static fields
.field private static final SUFFIX_AVG:Ljava/lang/String; = "_avg"

.field private static final SUFFIX_COUNT:Ljava/lang/String; = "_count"

.field private static final SUFFIX_STD_DEV:Ljava/lang/String; = "_std_dev"


# instance fields
.field private final average:D

.field private final count:J

.field private final eventPrefix:Ljava/lang/String;

.field private final stdDev:D


# direct methods
.method constructor <init>(Ljava/lang/String;JDD)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/video/analytics/ErrorSamples;->eventPrefix:Ljava/lang/String;

    .line 21
    iput-wide p2, p0, Lcom/oculus/video/analytics/ErrorSamples;->count:J

    .line 22
    iput-wide p4, p0, Lcom/oculus/video/analytics/ErrorSamples;->average:D

    .line 23
    iput-wide p6, p0, Lcom/oculus/video/analytics/ErrorSamples;->stdDev:D

    return-void
.end method


# virtual methods
.method appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/video/analytics/ErrorSamples;->eventPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/ErrorSamples;->count:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/video/analytics/ErrorSamples;->eventPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_avg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/ErrorSamples;->average:D

    .line 28
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/video/analytics/ErrorSamples;->eventPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_std_dev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/ErrorSamples;->stdDev:D

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-void
.end method
