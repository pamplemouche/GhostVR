.class Lcom/oculus/horizon/store/SearchFilterHelper$3;
.super Ljava/lang/Object;
.source "SearchFilterHelper.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SearchFilterHelper;->getDefaultSortOptionModel()Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;
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
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/SearchFilterHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SearchFilterHelper;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oculus/horizon/store/SearchFilterHelper$3;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->display_name:Ljava/lang/String;

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 140
    check-cast p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/SearchFilterHelper$3;->function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)Z

    move-result v0

    return v0
.end method
