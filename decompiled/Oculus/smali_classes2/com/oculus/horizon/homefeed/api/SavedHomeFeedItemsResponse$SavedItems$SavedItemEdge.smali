.class public Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse$SavedItems$SavedItemEdge;
.super Ljava/lang/Object;
.source "SavedHomeFeedItemsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse$SavedItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedItemEdge"
.end annotation


# instance fields
.field public node:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "node"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
