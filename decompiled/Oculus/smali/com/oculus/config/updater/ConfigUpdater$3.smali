.class Lcom/oculus/config/updater/ConfigUpdater$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "ConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/updater/ConfigUpdater;->forceUpdateGks(Lcom/oculus/config/updater/ConfigUpdater$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/config/updater/RefreshGatekeepersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/updater/ConfigUpdater;

.field final synthetic val$callback:Lcom/oculus/config/updater/ConfigUpdater$Callback;

.field final synthetic val$gatekeeperNames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oculus/config/updater/ConfigUpdater;Ljava/util/List;Lcom/oculus/config/updater/ConfigUpdater$Callback;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    iput-object p2, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->val$gatekeeperNames:Ljava/util/List;

    iput-object p3, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->val$callback:Lcom/oculus/config/updater/ConfigUpdater$Callback;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    iget-object v1, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->val$callback:Lcom/oculus/config/updater/ConfigUpdater$Callback;

    invoke-static {v0, p1, v1}, Lcom/oculus/config/updater/ConfigUpdater;->access$400(Lcom/oculus/config/updater/ConfigUpdater;Lcom/oculus/http/core/base/ApiError;Lcom/oculus/config/updater/ConfigUpdater$Callback;)V

    .line 181
    return-void
.end method

.method public onResponse(Lcom/oculus/config/updater/RefreshGatekeepersResponse;)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/oculus/config/updater/RefreshGatekeepersResponse;->getGatekeeperValues()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    iget-object v2, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->val$gatekeeperNames:Ljava/util/List;

    iget-object v3, p0, Lcom/oculus/config/updater/ConfigUpdater$3;->val$callback:Lcom/oculus/config/updater/ConfigUpdater$Callback;

    invoke-static {v1, v2, v0, v3}, Lcom/oculus/config/updater/ConfigUpdater;->access$300(Lcom/oculus/config/updater/ConfigUpdater;Ljava/util/List;Ljava/util/List;Lcom/oculus/config/updater/ConfigUpdater$Callback;)V

    .line 176
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p1, Lcom/oculus/config/updater/RefreshGatekeepersResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/config/updater/ConfigUpdater$3;->onResponse(Lcom/oculus/config/updater/RefreshGatekeepersResponse;)V

    return-void
.end method
