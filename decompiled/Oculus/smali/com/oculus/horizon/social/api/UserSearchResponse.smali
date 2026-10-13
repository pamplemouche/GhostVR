.class public Lcom/oculus/horizon/social/api/UserSearchResponse;
.super Ljava/lang/Object;
.source "UserSearchResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;
    }
.end annotation


# instance fields
.field public results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid UserSearchResponse. Response didn\'t have a results object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;->nodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid UserSearchResponse. SearchResults had no nodes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;->page_info:Lcom/oculus/horizon/api/common/PageInfo;

    if-nez v0, :cond_2

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid UserSearchResponse. SearchResults didn\'t have a page_info"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/social/api/UserSearchResponse;->results:Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/UserSearchResponse$SearchResults;->result_mode:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received an invalid UserSearchResponse. SearchResults didn\'t have a result_mode"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3
    return-void
.end method
