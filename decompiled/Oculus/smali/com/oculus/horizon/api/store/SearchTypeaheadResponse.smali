.class public Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;
.super Ljava/lang/Object;
.source "SearchTypeaheadResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Result;,
        Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;,
        Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;,
        Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;
    }
.end annotation


# instance fields
.field public viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompletions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;->search:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;->search:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;->typeahead_completions:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;->search:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;->typeahead_completions:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;->completions:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 41
    :goto_0
    return-object v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;->search:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;->typeahead_completions:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;->completions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Result;

    .line 39
    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Result;->query_completion:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 41
    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;->search:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;->search:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;->typeahead_completions:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->viewer:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Viewer;->search:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$Search;->typeahead_completions:Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse$TypeaheadCompletions;->prefix:Ljava/lang/String;

    goto :goto_0
.end method
