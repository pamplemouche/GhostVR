.class Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;
.super Ljava/lang/Object;
.source "ParamsMapList.java"

# interfaces
.implements Lcom/facebook/common/cache/CacheLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/mobileconfig/metadata/ParamsMapList;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/cache/CacheLoader",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/mobileconfig/metadata/ParamsMapList;


# direct methods
.method constructor <init>(Lcom/facebook/mobileconfig/metadata/ParamsMapList;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;->this$0:Lcom/facebook/mobileconfig/metadata/ParamsMapList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Integer;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 31
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;->this$0:Lcom/facebook/mobileconfig/metadata/ParamsMapList;

    iget-object v0, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;->this$0:Lcom/facebook/mobileconfig/metadata/ParamsMapList;

    iget-object v0, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;

    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    iget v0, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->configIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_0

    move v2, v1

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_1
    iget v0, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;->configIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 44
    :cond_2
    if-eq v2, v3, :cond_3

    .line 45
    iget-object v0, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;->this$0:Lcom/facebook/mobileconfig/metadata/ParamsMapList;

    iget-object v0, v0, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 47
    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;->load(Ljava/lang/Integer;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
