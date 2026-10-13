.class public Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;
.super Ljava/lang/Object;
.source "UserSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/UserSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResults"
.end annotation


# instance fields
.field public nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/api/SearchResultUser;",
            ">;"
        }
    .end annotation
.end field

.field public page_info:Lcom/oculus/horizon/api/common/PageInfo;

.field public result_mode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
