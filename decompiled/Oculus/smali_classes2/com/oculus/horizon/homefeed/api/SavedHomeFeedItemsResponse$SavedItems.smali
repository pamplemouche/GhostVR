.class public Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse$SavedItems;
.super Ljava/lang/Object;
.source "SavedHomeFeedItemsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedItems"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse$SavedItems$SavedItemEdge;
    }
.end annotation


# instance fields
.field public edges:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "edges"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse$SavedItems$SavedItemEdge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
