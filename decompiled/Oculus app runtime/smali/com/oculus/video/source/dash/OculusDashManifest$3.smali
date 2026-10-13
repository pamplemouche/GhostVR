.class final Lcom/oculus/video/source/dash/OculusDashManifest$3;
.super Ljava/lang/Object;
.source "OculusDashManifest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/source/dash/OculusDashManifest;->highQualityBlendRepresentations(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;)I
    .locals 5

    .line 395
    iget-wide v0, p1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    iget-wide v2, p2, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 398
    :cond_0
    iget-wide v0, p2, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    iget-wide p1, p1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    sub-double/2addr v0, p1

    const-wide/16 p1, 0x0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 392
    check-cast p1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    check-cast p2, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/source/dash/OculusDashManifest$3;->compare(Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;)I

    move-result p1

    return p1
.end method
