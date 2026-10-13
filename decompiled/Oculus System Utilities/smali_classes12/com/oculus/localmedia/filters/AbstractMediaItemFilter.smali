.class public abstract Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;
.super Ljava/lang/Object;
.source "AbstractMediaItemFilter.java"

# interfaces
.implements Lcom/oculus/localmedia/filters/MediaItemFilter;


# instance fields
.field protected mFormat:Ljava/lang/Comparable;

.field protected mOperator:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/Comparable;)V
    .locals 0
    .param p1, "operator"    # Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .param p2, "format"    # Ljava/lang/Comparable;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;->mOperator:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 14
    iput-object p2, p0, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;->mFormat:Ljava/lang/Comparable;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract getValue(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/Comparable;
.end method

.method public match(Lcom/oculus/localmedia/MediaItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;->mOperator:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;->getValue(Lcom/oculus/localmedia/MediaItem;)Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/localmedia/filters/AbstractMediaItemFilter;->mFormat:Ljava/lang/Comparable;

    invoke-static {v0, v1, v2}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->evaluate(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method
