.class public Lcom/oculus/localmedia/filters/FieldOfViewFilter;
.super Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;
.source "FieldOfViewFilter.java"


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V
    .locals 1
    .param p1, "operator"    # Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .param p2, "fovX"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/Comparable;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getValue(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "item"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getFovX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
