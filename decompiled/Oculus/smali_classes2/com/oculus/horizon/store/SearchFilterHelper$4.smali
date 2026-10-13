.class Lcom/oculus/horizon/store/SearchFilterHelper$4;
.super Ljava/lang/Object;
.source "SearchFilterHelper.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Folder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SearchFilterHelper;->addAllModel(Ljava/util/List;)Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Folder",
        "<",
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/SearchFilterHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SearchFilterHelper;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/oculus/horizon/store/SearchFilterHelper$4;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->count:I

    add-int/2addr v0, v1

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic function(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    check-cast p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/store/SearchFilterHelper$4;->function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
