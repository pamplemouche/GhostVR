.class public Lcom/oculus/localmedia/filters/AlphaFilter;
.super Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;
.source "AlphaFilter.java"


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .param p2, "letter"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;-><init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/Comparable;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getValue(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "item"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    goto :goto_0
.end method
