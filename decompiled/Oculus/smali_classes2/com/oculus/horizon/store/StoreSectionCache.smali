.class public Lcom/oculus/horizon/store/StoreSectionCache;
.super Ljava/lang/Object;
.source "StoreSectionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPIRATION_TIME:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

.field private final mContext:Landroid/content/Context;

.field private final mControllerFilter:Ljava/lang/String;

.field private mCursor:Ljava/lang/String;

.field private mGeneration:Ljava/lang/String;

.field private final mGenreFilter:Ljava/lang/String;

.field private mIsErrorOnInitialSearch:Z

.field private mLastUpdated:J

.field private final mModelIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriceFilter:Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private final mStoreSection:Lcom/oculus/horizon/store/StoreSection;

.field private final mStoresManager:Lcom/oculus/horizon/store/StoresManager;

.field private mUpdateListener:Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-class v0, Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/store/StoreSectionCache;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/horizon/store/StoreSectionCache;->DEFAULT_EXPIRATION_TIME:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/api/ApiRequestManager;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoresManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGeneration:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    .line 88
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    .line 89
    iput-object p4, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    .line 90
    iput-object p5, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mSortOrder:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mPriceFilter:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGenreFilter:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mControllerFilter:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->resetIfExpired()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/store/StoreSectionCache;)Lcom/oculus/horizon/store/StoreSection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/store/StoreSectionCache;Lcom/oculus/horizon/api/store/SectionItemsResponse;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreSectionCache;->onSectionItemsResponse(Lcom/oculus/horizon/api/store/SectionItemsResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/store/StoreSectionCache;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->onSectionItemsError()V

    return-void
.end method

.method private fetchMoreItems()V
    .locals 9

    .prologue
    .line 191
    iget-object v8, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v0, Lcom/oculus/horizon/api/store/SectionItemsRequest;

    const/16 v1, 0xa

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v3, v3, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mSortOrder:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGenreFilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mPriceFilter:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mControllerFilter:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/api/store/SectionItemsRequest;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oculus/horizon/store/StoreSectionCache$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreSectionCache$1;-><init>(Lcom/oculus/horizon/store/StoreSectionCache;)V

    .line 191
    invoke-virtual {v8, v0, v1}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 212
    return-void
.end method

.method private getModels()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/store/StoresManager;->getModel(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    return-object v1
.end method

.method private notifyUpdateError()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mUpdateListener:Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mUpdateListener:Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->getModels()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGeneration:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;->onUpdateError(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSectionItemsError()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mCursor:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mIsErrorOnInitialSearch:Z

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->notifyUpdateError()V

    .line 260
    return-void
.end method

.method private onSectionItemsResponse(Lcom/oculus/horizon/api/store/SectionItemsResponse;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/oculus/horizon/api/store/SectionItemsResponse;->getPageInfo()Lcom/oculus/horizon/api/common/PageInfo;

    move-result-object v0

    .line 220
    :goto_0
    if-nez v0, :cond_1

    .line 221
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionCache;->TAG:Ljava/lang/String;

    const-string v1, "Got a SectionItemsResponse with a null page_info"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->onSectionItemsError()V

    .line 250
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 216
    goto :goto_0

    .line 225
    :cond_1
    iget-boolean v2, v0, Lcom/oculus/horizon/api/common/PageInfo;->has_next_page:Z

    if-eqz v2, :cond_3

    .line 226
    iget-object v0, v0, Lcom/oculus/horizon/api/common/PageInfo;->end_cursor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mCursor:Ljava/lang/String;

    .line 231
    :goto_2
    iget-object v0, p1, Lcom/oculus/horizon/api/store/SectionItemsResponse;->all_items:Lcom/oculus/horizon/api/store/SectionItemsResponse$Items;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/SectionItemsResponse$Items;->nodes:Ljava/util/ArrayList;

    sget-object v1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->ALL:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    .line 232
    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->filterForSupportedItems(Ljava/util/List;Lcom/oculus/horizon/store/StoreUtils$FilteringSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 235
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/store/StoresManager;->remove(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionCache;

    .line 237
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 238
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    .line 240
    invoke-static {v4, v0, v5}, Lcom/oculus/horizon/store/StoreUtils;->createStoreItemModel(Landroid/content/Context;Lcom/oculus/horizon/api/common/Item;Lcom/oculus/horizon/store/StoreSection;)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    .line 239
    invoke-virtual {v2, v3, v0}, Lcom/oculus/horizon/store/StoresManager;->putModel(Ljava/lang/String;Lcom/oculus/horizon/store/StoreItemModel;)Lcom/oculus/horizon/store/StoreItemModel;

    goto :goto_3

    .line 228
    :cond_3
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mCursor:Ljava/lang/String;

    goto :goto_2

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mSortOrder:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGenreFilter:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mPriceFilter:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mControllerFilter:Ljava/lang/String;

    .line 244
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/store/StoresManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/store/StoresManager;->get(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionCache;

    move-result-object v1

    if-nez v1, :cond_5

    .line 247
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v1, v0, p0}, Lcom/oculus/horizon/store/StoresManager;->put(Ljava/lang/String;Lcom/oculus/horizon/store/StoreSectionCache;)Lcom/oculus/horizon/store/StoreSectionCache;

    .line 249
    :cond_5
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->notifyUpdate()V

    goto :goto_1
.end method

.method private resetIfExpired()V
    .locals 6

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    iget-wide v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mLastUpdated:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mLastUpdated:J

    sget-wide v4, Lcom/oculus/horizon/store/StoreSectionCache;->DEFAULT_EXPIRATION_TIME:J

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mIsErrorOnInitialSearch:Z

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->forceReset()V

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public clearUpdateListener()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mUpdateListener:Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;

    .line 140
    return-void
.end method

.method public forceReset()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mCursor:Ljava/lang/String;

    .line 117
    iput-wide v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mLastUpdated:J

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mIsErrorOnInitialSearch:Z

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGeneration:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public getGeneration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGeneration:Ljava/lang/String;

    return-object v0
.end method

.method public loadNext(I)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->notifyUpdate()V

    .line 188
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mCursor:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->notifyUpdate()V

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->fetchMoreItems()V

    goto :goto_0
.end method

.method notifyUpdate()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mUpdateListener:Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mUpdateListener:Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->getModels()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mGeneration:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;->onUpdate(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reload(I)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->resetIfExpired()V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->fetchMoreItems()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->notifyUpdate()V

    goto :goto_0
.end method

.method public setUpdateListener(Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionCache;->resetIfExpired()V

    .line 134
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mUpdateListener:Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;

    .line 135
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionCache;->mModelIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
