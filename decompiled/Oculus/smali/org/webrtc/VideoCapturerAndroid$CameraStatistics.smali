.class Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;
.super Ljava/lang/Object;
.source "VideoCapturerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoCapturerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraStatistics"
.end annotation


# instance fields
.field private frameCount:I

.field private final threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->frameCount:I

    .line 142
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 145
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 146
    return-void
.end method


# virtual methods
.method public addFrame()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 150
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->frameCount:I

    .line 151
    return-void
.end method

.method public getAndResetFrameCount()I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 155
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->frameCount:I

    .line 156
    const/4 v1, 0x0

    iput v1, p0, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->frameCount:I

    .line 157
    return v0
.end method
