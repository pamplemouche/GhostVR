.class public Lcom/oculus/horizon/store/SearchTypeaheadQuery$TypeaheadCallback;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SearchTypeaheadQuery.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/SearchTypeaheadQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TypeaheadCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/SearchTypeaheadQuery;


# direct methods
.method protected constructor <init>(Lcom/oculus/horizon/store/SearchTypeaheadQuery;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oculus/horizon/store/SearchTypeaheadQuery$TypeaheadCallback;->this$0:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received an error response from the server for typeahead. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 134
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;)V
    .locals 3

    .prologue
    .line 122
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->getCompletions()Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oculus/horizon/store/SearchTypeaheadQuery$TypeaheadCallback;->this$0:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    invoke-static {v2}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->access$000(Lcom/oculus/horizon/store/SearchTypeaheadQuery;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/oculus/horizon/store/SearchTypeaheadQuery$TypeaheadCallback;->this$0:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->createTypeaheadWindow(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/SearchTypeaheadQuery$TypeaheadCallback;->onResponse(Lcom/oculus/horizon/api/store/SearchTypeaheadResponse;)V

    return-void
.end method
