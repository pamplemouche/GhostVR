.class Lcom/oculus/horizon/api/store/UniversalSearchResponse$1;
.super Ljava/lang/Object;
.source "UniversalSearchResponse.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/api/store/UniversalSearchResponse;->getResults()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Predicate",
        "<",
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchResultItem;",
        "Lcom/oculus/horizon/api/common/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/api/store/UniversalSearchResponse;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$1;->this$0:Lcom/oculus/horizon/api/store/UniversalSearchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchResultItem;)Lcom/oculus/horizon/api/common/Item;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchResultItem;->object:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getItemForUniversalSearch()Lcom/oculus/horizon/api/common/Item;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$1;->this$0:Lcom/oculus/horizon/api/store/UniversalSearchResponse;

    invoke-static {v0}, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->access$000(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchResultItem;->object:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getItemForUniversalSearch()Lcom/oculus/horizon/api/common/Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchResultItem;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/api/store/UniversalSearchResponse$1;->function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchResultItem;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v0

    return-object v0
.end method
