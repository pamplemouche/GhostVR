.class Lcom/oculus/horizon/store/StoresManager$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "StoresManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoresManager;->fetchStore(Lcom/oculus/horizon/common/UICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/store/StoresResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoresManager;

.field final synthetic val$callback:Lcom/oculus/horizon/common/UICallback;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoresManager;Lcom/oculus/horizon/common/UICallback;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oculus/horizon/store/StoresManager$2;->this$0:Lcom/oculus/horizon/store/StoresManager;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoresManager$2;->val$callback:Lcom/oculus/horizon/common/UICallback;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/store/StoresManager$2;->val$callback:Lcom/oculus/horizon/common/UICallback;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/common/UICallback;->failure(Lcom/oculus/http/core/base/ApiError;)V

    .line 167
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/store/StoresResponse;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/store/StoresManager$2;->this$0:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoresManager;->setStoreModel(Lcom/oculus/horizon/api/store/StoresResponse;)V

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/store/StoresManager$2;->val$callback:Lcom/oculus/horizon/common/UICallback;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/common/UICallback;->success(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Lcom/oculus/horizon/api/store/StoresResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoresManager$2;->onResponse(Lcom/oculus/horizon/api/store/StoresResponse;)V

    return-void
.end method
