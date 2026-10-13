.class Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;
.super Ljava/lang/Object;
.source "StoreMethods.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemResponseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppInternalConverterLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/library/utils/AppInternalConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegate:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/api/store/UniversalSearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/libraryapi/OVRLibraryInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit/Callback;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/api/store/UniversalSearchResponse;",
            ">;",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/libraryapi/OVRLibraryInternal;",
            ">;",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/library/utils/AppInternalConverter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->mDelegate:Lretrofit/Callback;

    .line 115
    iput-object p2, p0, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;

    .line 116
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->mAppInternalConverterLazy:Lcom/facebook/inject/Lazy;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Callback;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;Lcom/oculus/horizon/store/StoreMethods$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;-><init>(Lretrofit/Callback;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;)V

    return-void
.end method

.method private updateItemIfNeeded(Lcom/oculus/horizon/api/common/Item;)V
    .locals 7

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getEntitlementHash()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 141
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v6

    .line 142
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->mAppInternalConverterLazy:Lcom/facebook/inject/Lazy;

    .line 144
    invoke-interface {v1}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/utils/AppInternalConverter;

    .line 145
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getLastUsed()J

    move-result-wide v4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oculus/library/utils/AppInternalConverter;->toApp(Lcom/oculus/horizon/api/common/Item;Ljava/lang/String;JLcom/oculus/library/model/App;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->insertApp(Lcom/oculus/library/model/App;)V

    goto :goto_0
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->mDelegate:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->failure(Lretrofit/RetrofitError;)V

    .line 132
    return-void
.end method

.method public success(Lcom/oculus/horizon/api/store/UniversalSearchResponse;Lretrofit/client/Response;)V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 123
    invoke-direct {p0, v0}, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->updateItemIfNeeded(Lcom/oculus/horizon/api/common/Item;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->mDelegate:Lretrofit/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit/Callback;->success(Ljava/lang/Object;Lretrofit/client/Response;)V

    .line 127
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/store/StoreMethods$ItemResponseCallback;->success(Lcom/oculus/horizon/api/store/UniversalSearchResponse;Lretrofit/client/Response;)V

    return-void
.end method
