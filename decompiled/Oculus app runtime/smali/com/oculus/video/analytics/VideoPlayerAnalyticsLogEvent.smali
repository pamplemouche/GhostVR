.class public Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;
.super Lorg/json/JSONObject;
.source "VideoPlayerAnalyticsLogEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayerAnalyticsLogEvent"


# instance fields
.field private final eventName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->eventName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 27
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extra"

    .line 28
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to construct the analyticsLogEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
