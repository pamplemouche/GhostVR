.class Lcom/oculus/video/source/dash/OculusDashManifest$1;
.super Ljava/lang/Object;
.source "OculusDashManifest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/source/dash/OculusDashManifest;->isValidFbVqmMap(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/oculus/video/source/dash/OculusDashManifest;


# direct methods
.method constructor <init>(Lcom/oculus/video/source/dash/OculusDashManifest;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/oculus/video/source/dash/OculusDashManifest$1;->this$0:Lcom/oculus/video/source/dash/OculusDashManifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)I
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 111
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p2, p2, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    sub-int/2addr p2, p1

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 108
    check-cast p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    check-cast p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/source/dash/OculusDashManifest$1;->compare(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)I

    move-result p1

    return p1
.end method
