.class Lcom/oculus/panelapp/debug/TrackingDebugInfo;
.super Ljava/lang/Object;
.source "TrackingDebugInfo.java"


# instance fields
.field mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->nativeCreateInstance()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->mPtr:J

    return-void
.end method

.method private native get(J)Ljava/lang/String;
.end method

.method private native getType(J)Ljava/lang/String;
.end method

.method private native nativeCreateInstance()J
.end method

.method private native start(J)Z
.end method

.method private native stop(J)Z
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->mPtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->get(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->mPtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->getType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()Z
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->mPtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->start(J)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->mPtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->stop(J)Z

    move-result v0

    return v0
.end method
