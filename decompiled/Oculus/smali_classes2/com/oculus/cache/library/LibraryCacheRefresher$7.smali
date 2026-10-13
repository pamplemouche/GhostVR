.class Lcom/oculus/cache/library/LibraryCacheRefresher$7;
.super Ljava/lang/Object;
.source "LibraryCacheRefresher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/cache/library/LibraryCacheRefresher;->fetchEntitlements()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/oculus/library/model/App;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;


# direct methods
.method constructor <init>(Lcom/oculus/cache/library/LibraryCacheRefresher;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$7;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$7;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-static {v0}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$800(Lcom/oculus/cache/library/LibraryCacheRefresher;)Lcom/oculus/library/net/LibraryMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/library/net/LibraryMethods;->getActiveEntitlements()Lcom/oculus/library/net/ActiveEntitlementsResponse;
    :try_end_0
    .catch Lcom/oculus/http/core/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    if-nez v0, :cond_2

    .line 315
    const-string v0, "server response is null while updating entitlements"

    .line 316
    invoke-static {}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$7;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-static {v1}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$100(Lcom/oculus/cache/library/LibraryCacheRefresher;)V

    .line 319
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 301
    invoke-virtual {v2}, Lcom/oculus/http/core/base/ApiException;->getApiError()Lcom/oculus/http/core/base/ApiError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v2}, Lcom/oculus/http/core/base/ApiException;->getApiError()Lcom/oculus/http/core/base/ApiError;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError;->httpStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v2}, Lcom/oculus/http/core/base/ApiException;->getApiError()Lcom/oculus/http/core/base/ApiError;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError;->httpStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$7;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-static {v0}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$1000(Lcom/oculus/cache/library/LibraryCacheRefresher;)Lcom/oculus/auth/credentials/CredentialsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 305
    :goto_0
    const/4 v0, 0x2

    sget v3, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$7;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-static {v4}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$700(Lcom/oculus/cache/library/LibraryCacheRefresher;)Lcom/facebook/inject/InjectionContext;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    const-string v3, "library_unauthorized"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hit 401 when trying to refresh the library. hasCreds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    :cond_0
    invoke-static {}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to refresh library in LibraryCacheRefresher."

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 311
    throw v2

    .line 304
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$7;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-static {v1, v0}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$1100(Lcom/oculus/cache/library/LibraryCacheRefresher;Lcom/oculus/library/net/ActiveEntitlementsResponse;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/oculus/cache/library/LibraryCacheRefresher$7;->call()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
