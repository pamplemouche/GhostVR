.class Lcom/oculus/horizon/store/StoreSectionCache$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "StoreSectionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSectionCache;->fetchMoreItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/oculus/horizon/api/store/SectionItemsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSectionCache;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSectionCache;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionCache$1;->this$0:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache$1;->this$0:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->access$200(Lcom/oculus/horizon/store/StoreSectionCache;)V

    .line 210
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreSectionCache$1;->onResponse(Ljava/util/Map;)V

    return-void
.end method

.method public onResponse(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/store/SectionItemsResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache$1;->this$0:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->access$000(Lcom/oculus/horizon/store/StoreSectionCache;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/store/SectionItemsResponse;

    .line 204
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache$1;->this$0:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-static {v1, v0}, Lcom/oculus/horizon/store/StoreSectionCache;->access$100(Lcom/oculus/horizon/store/StoreSectionCache;Lcom/oculus/horizon/api/store/SectionItemsResponse;)V

    .line 205
    return-void
.end method
