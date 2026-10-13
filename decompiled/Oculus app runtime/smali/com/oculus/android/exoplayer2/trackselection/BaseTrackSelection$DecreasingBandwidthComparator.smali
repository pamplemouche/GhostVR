.class final Lcom/oculus/android/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/trackselection/BaseTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecreasingBandwidthComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oculus/android/exoplayer2/Format;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/android/exoplayer2/trackselection/BaseTrackSelection$1;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)I
    .locals 0

    .line 204
    iget p2, p2, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 200
    check-cast p1, Lcom/oculus/android/exoplayer2/Format;

    check-cast p2, Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;->compare(Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method
