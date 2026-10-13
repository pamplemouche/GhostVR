.class public Lcom/oculus/horizon/store/impression/StoreImpressionListener;
.super Ljava/lang/Object;
.source "StoreImpressionListener.java"

# interfaces
.implements Lcom/facebook/crudolib/view/impression/ImpressionListener;


# instance fields
.field private mLoggingHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

.field private final mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

.field private mStoreSection:Lcom/oculus/horizon/store/StoreSection;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/store/StoreItemAdapter;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/impression/StoreLoggingHandler;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 44
    iput-object p2, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    .line 45
    iput-object p3, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mLoggingHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    .line 46
    return-void
.end method

.method private concealItem(Lcom/oculus/horizon/store/StoreItemModel;I)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 135
    invoke-static {}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->now()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 136
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mLoggingHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    iget-object v3, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    long-to-int v0, v0

    invoke-virtual {v2, p1, v3, p2, v0}, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;->sendVPVDurationLog(Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/StoreSection;II)V

    .line 140
    :cond_0
    return-void
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onConcealed(II)V
    .locals 3

    .prologue
    .line 81
    :goto_0
    if-gt p1, p2, :cond_3

    .line 83
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 84
    :cond_0
    const-string v0, "impression_logging_onConcealed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds 0 -> "

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 90
    invoke-virtual {v2}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoreItemAdapter;->isStoreItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItem(I)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->concealItem(Lcom/oculus/horizon/store/StoreItemModel;I)V

    .line 101
    iget-object v1, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_3
    return-void
.end method

.method public onDataChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v2}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 107
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItem(I)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-direct {p0, v2, v0}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->concealItem(Lcom/oculus/horizon/store/StoreItemModel;I)V

    .line 117
    iget-object v3, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v2, v1

    .line 120
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreItemModel;

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->concealItem(Lcom/oculus/horizon/store/StoreItemModel;I)V

    .line 120
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 126
    return-void
.end method

.method public onRevealed(II)V
    .locals 4

    .prologue
    .line 50
    :goto_0
    if-gt p1, p2, :cond_3

    .line 52
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 53
    :cond_0
    const-string v0, "impression_logging_onRevealed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds 0 -> "

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 59
    invoke-virtual {v2}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoreItemAdapter;->isStoreItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItem(I)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->mRevealedItemsTimestamps:Landroidx/collection/SimpleArrayMap;

    invoke-static {}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;->now()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 77
    :cond_3
    return-void
.end method
