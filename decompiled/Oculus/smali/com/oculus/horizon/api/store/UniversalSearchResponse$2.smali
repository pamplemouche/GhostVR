.class Lcom/oculus/horizon/api/store/UniversalSearchResponse$2;
.super Ljava/lang/Object;
.source "UniversalSearchResponse.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/api/store/UniversalSearchResponse;->adjustCounts()V
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
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/api/store/UniversalSearchResponse;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$2;->this$0:Lcom/oculus/horizon/api/store/UniversalSearchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->name:Ljava/lang/String;

    const-string v1, "cinema_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget v0, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->count:I

    .line 59
    :cond_0
    return-object p1
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/api/store/UniversalSearchResponse$2;->function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    move-result-object v0

    return-object v0
.end method
