.class public Lcom/oculus/localmedia/filters/VisibilityFilter;
.super Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;
.source "VisibilityFilter.java"


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .param p2, "format"    # Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getVisibility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public includePrivate()Z
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/localmedia/filters/VisibilityFilter;->mOperator:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    sget-object v1, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/localmedia/filters/VisibilityFilter;->mFormat:Ljava/lang/Comparable;

    const-string v1, "private"

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oculus/localmedia/filters/VisibilityFilter;->mOperator:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    sget-object v1, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->DIFFERENT:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oculus/localmedia/filters/VisibilityFilter;->mFormat:Ljava/lang/Comparable;

    const-string v1, "public"

    .line 20
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
