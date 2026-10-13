.class public Lcom/oculus/localmedia/filters/FileSizeFilter;
.super Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;
.source "FileSizeFilter.java"


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V
    .locals 2
    .param p1, "operator"    # Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .param p2, "size"    # Ljava/lang/String;

    .prologue
    .line 10
    const/16 v0, 0xa

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/Comparable;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getValue(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "item"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
