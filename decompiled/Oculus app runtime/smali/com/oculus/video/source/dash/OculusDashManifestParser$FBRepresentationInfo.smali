.class Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;
.super Ljava/lang/Object;
.source "OculusDashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/source/dash/OculusDashManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FBRepresentationInfo"
.end annotation


# instance fields
.field final baseUrl:Ljava/lang/String;

.field final drmSchemeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field final format:Lcom/oculus/android/exoplayer2/Format;

.field final inbandEventStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field final segmentBase:Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/Format;Ljava/lang/String;Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)V"
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 509
    iput-object p2, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->baseUrl:Ljava/lang/String;

    .line 510
    iput-object p3, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->segmentBase:Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;

    .line 511
    iput-object p4, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 512
    iput-object p5, p0, Lcom/oculus/video/source/dash/OculusDashManifestParser$FBRepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    return-void
.end method
