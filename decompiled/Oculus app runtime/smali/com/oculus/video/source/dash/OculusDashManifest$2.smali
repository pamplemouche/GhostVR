.class final Lcom/oculus/video/source/dash/OculusDashManifest$2;
.super Ljava/lang/Object;
.source "OculusDashManifest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/source/dash/OculusDashManifest;->highResolutionBlendRepresentations(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)I
    .locals 2

    .line 296
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v0, v0, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget-object v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v1, v1, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-ne v0, v1, :cond_0

    .line 297
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p2, p2, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    :goto_0
    sub-int/2addr p2, p1

    return p2

    .line 299
    :cond_0
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p2, p2, Lcom/oculus/android/exoplayer2/Format;->width:I

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 293
    check-cast p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    check-cast p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/source/dash/OculusDashManifest$2;->compare(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)I

    move-result p1

    return p1
.end method
