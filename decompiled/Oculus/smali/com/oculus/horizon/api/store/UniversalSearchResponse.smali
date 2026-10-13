.class public Lcom/oculus/horizon/api/store/UniversalSearchResponse;
.super Ljava/lang/Object;
.source "UniversalSearchResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchResultItem;,
        Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;,
        Lcom/oculus/horizon/api/store/UniversalSearchResponse$Results;
    }
.end annotation


# instance fields
.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field public results:Lcom/oculus/horizon/api/store/UniversalSearchResponse$Results;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->adjustCounts()V

    return-void
.end method

.method private adjustCounts()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->filters:Ljava/util/List;

    new-instance v1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/api/store/UniversalSearchResponse$2;-><init>(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V

    invoke-static {v0, v1}, Lcom/oculus/util/collection/CollectionUtil;->mapList(Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Predicate;)Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->results:Lcom/oculus/horizon/api/store/UniversalSearchResponse$Results;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$Results;->nodes:Ljava/util/List;

    new-instance v1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/api/store/UniversalSearchResponse$1;-><init>(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V

    .line 35
    invoke-static {v0, v1}, Lcom/oculus/util/collection/CollectionUtil;->mapList(Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Predicate;)Ljava/util/List;

    move-result-object v0

    .line 47
    return-object v0
.end method
