.class final Lcom/oculus/localmedia/MediaItem$3;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/localmedia/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/localmedia/MediaItem;Lcom/oculus/localmedia/MediaItem;)I
    .locals 4
    .param p1, "mediaItem1"    # Lcom/oculus/localmedia/MediaItem;
    .param p2, "mediaItem2"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 60
    invoke-static {p2}, Lcom/oculus/localmedia/MediaItem;->access$200(Lcom/oculus/localmedia/MediaItem;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/oculus/localmedia/MediaItem;->access$200(Lcom/oculus/localmedia/MediaItem;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lcom/oculus/localmedia/MediaItem;

    check-cast p2, Lcom/oculus/localmedia/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/localmedia/MediaItem$3;->compare(Lcom/oculus/localmedia/MediaItem;Lcom/oculus/localmedia/MediaItem;)I

    move-result v0

    return v0
.end method
