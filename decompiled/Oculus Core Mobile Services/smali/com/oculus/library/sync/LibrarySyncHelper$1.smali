.class Lcom/oculus/library/sync/LibrarySyncHelper$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LibrarySyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/sync/LibrarySyncHelper;->syncLibrary(Lcom/google/common/collect/ImmutableList;Lcom/oculus/library/sync/LibrarySyncHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/library/sync/LibrarySyncMutationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/sync/LibrarySyncHelper;

.field final synthetic val$apps:Lcom/google/common/collect/ImmutableList;

.field final synthetic val$callback:Lcom/oculus/library/sync/LibrarySyncHelper$Callback;


# direct methods
.method constructor <init>(Lcom/oculus/library/sync/LibrarySyncHelper;Lcom/oculus/library/sync/LibrarySyncHelper$Callback;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/library/sync/LibrarySyncHelper$1;->this$0:Lcom/oculus/library/sync/LibrarySyncHelper;

    iput-object p2, p0, Lcom/oculus/library/sync/LibrarySyncHelper$1;->val$callback:Lcom/oculus/library/sync/LibrarySyncHelper$Callback;

    iput-object p3, p0, Lcom/oculus/library/sync/LibrarySyncHelper$1;->val$apps:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Lcom/oculus/library/sync/LibrarySyncHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload library app statuses: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public onResponse(Lcom/oculus/library/sync/LibrarySyncMutationResponse;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/library/sync/LibrarySyncHelper$1;->val$callback:Lcom/oculus/library/sync/LibrarySyncHelper$Callback;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oculus/library/sync/LibrarySyncHelper$1;->val$callback:Lcom/oculus/library/sync/LibrarySyncHelper$Callback;

    invoke-interface {v0}, Lcom/oculus/library/sync/LibrarySyncHelper$Callback;->onSuccess()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oculus/library/sync/LibrarySyncHelper$1;->this$0:Lcom/oculus/library/sync/LibrarySyncHelper;

    invoke-static {v0}, Lcom/oculus/library/sync/LibrarySyncHelper;->access$000(Lcom/oculus/library/sync/LibrarySyncHelper;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    const-string v1, "library_app_status_upload"

    .line 81
    invoke-interface {v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v1, "library_app_statuses_uploaded"

    iget-object v2, p0, Lcom/oculus/library/sync/LibrarySyncHelper$1;->val$apps:Lcom/google/common/collect/ImmutableList;

    .line 82
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;I)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 84
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lcom/oculus/library/sync/LibrarySyncMutationResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/library/sync/LibrarySyncHelper$1;->onResponse(Lcom/oculus/library/sync/LibrarySyncMutationResponse;)V

    return-void
.end method
