.class Lcom/oculus/horizon/store/StoreSearchFragment$2;
.super Ljava/lang/Object;
.source "StoreSearchFragment.java"

# interfaces
.implements Lcom/oculus/horizon/store/StoreSearchAdapter$SearchFilterUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSearchFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFiltersUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$2;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSearchFragment;->access$100(Lcom/oculus/horizon/store/StoreSearchFragment;)Lcom/oculus/horizon/store/SearchFilterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/SearchFilterHelper;->setUniversalSearchFilters(Ljava/util/List;)V

    .line 120
    return-void
.end method
