.class final Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;
.super Ljava/lang/Object;
.source "OculusFrameworkSourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackInfo"
.end annotation


# instance fields
.field public final durationUs:J

.field public forceSyncFrame:Z

.field public final mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

.field public final trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

.field public waitFirstSample:Z


# direct methods
.method public constructor <init>(Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;Ljava/lang/String;JLcom/oculus/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->this$0:Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->mimeType:Ljava/lang/String;

    .line 313
    iput-wide p3, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->durationUs:J

    .line 314
    iput-object p5, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    const/4 p1, 0x0

    .line 315
    iput-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->forceSyncFrame:Z

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor$TrackInfo;->waitFirstSample:Z

    return-void
.end method
