.class Lcom/oculus/horizon/libraryui/SavedPresenter$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SavedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedPresenter;->fetchSavedHomeFeedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedPresenter;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedPresenter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/oculus/horizon/libraryui/SavedPresenter;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedPresenter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedPresenter;->access$200(Lcom/oculus/horizon/libraryui/SavedPresenter;)Lcom/oculus/horizon/libraryui/SavedPresenter$View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedPresenter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedPresenter;->access$200(Lcom/oculus/horizon/libraryui/SavedPresenter;)Lcom/oculus/horizon/libraryui/SavedPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/libraryui/SavedPresenter$View;->showHomeFeedItemsFetchError()V

    .line 185
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedPresenter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/SavedPresenter;->access$000(Lcom/oculus/horizon/libraryui/SavedPresenter;Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse;)V

    .line 177
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/libraryui/SavedPresenter$1;->onResponse(Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse;)V

    return-void
.end method
