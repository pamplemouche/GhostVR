.class Lcom/oculus/horizon/legacy/social/SocialManager$18;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->doSearch(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/UserSearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

.field final synthetic val$sequenceNumber:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;I)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$18;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$18;->val$sequenceNumber:I

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$18;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1700(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;

    .line 1064
    iget v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$18;->val$sequenceNumber:I

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;->onSearchSkipped(I)V

    goto :goto_0

    .line 1066
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/UserSearchResponse;)V
    .locals 7

    .prologue
    .line 1050
    invoke-static {}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1600()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Received search results for sequence number [%d]"

    iget v2, p0, Lcom/oculus/horizon/legacy/social/SocialManager$18;->val$sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1051
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$18;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$1700(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;

    .line 1052
    iget v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$18;->val$sequenceNumber:I

    iget-object v2, p1, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    iget-object v2, v2, Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;->nodes:Ljava/util/List;

    .line 1054
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v3, p1, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;->result_mode:Ljava/lang/String;

    .line 1055
    invoke-static {v3}, Lcom/oculus/horizon/social/SocialUtils;->searchResultMode(Ljava/lang/String;)Lcom/oculus/horizon/social/api/SearchResultMode;

    move-result-object v3

    iget-object v4, p1, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    iget-object v4, v4, Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;->page_info:Lcom/oculus/horizon/api/common/PageInfo;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/PageInfo;->end_cursor:Ljava/lang/String;

    iget-object v5, p1, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    iget-object v5, v5, Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;->page_info:Lcom/oculus/horizon/api/common/PageInfo;

    iget-boolean v5, v5, Lcom/oculus/horizon/api/common/PageInfo;->has_next_page:Z

    .line 1052
    invoke-interface/range {v0 .. v5}, Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;->onSearchResults(ILjava/util/List;Lcom/oculus/horizon/social/api/SearchResultMode;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1059
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1047
    check-cast p1, Lcom/oculus/horizon/social/api/UserSearchResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$18;->onResponse(Lcom/oculus/horizon/social/api/UserSearchResponse;)V

    return-void
.end method
