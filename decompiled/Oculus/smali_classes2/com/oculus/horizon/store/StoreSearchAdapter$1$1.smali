.class Lcom/oculus/horizon/store/StoreSearchAdapter$1$1;
.super Ljava/lang/Object;
.source "StoreSearchAdapter.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSearchAdapter$1;->onResponse(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Filter",
        "<",
        "Lcom/oculus/horizon/api/common/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/store/StoreSearchAdapter$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSearchAdapter$1;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1$1;->this$1:Lcom/oculus/horizon/store/StoreSearchAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/common/Item;)Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 291
    check-cast p1, Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreSearchAdapter$1$1;->function(Lcom/oculus/horizon/api/common/Item;)Z

    move-result v0

    return v0
.end method
