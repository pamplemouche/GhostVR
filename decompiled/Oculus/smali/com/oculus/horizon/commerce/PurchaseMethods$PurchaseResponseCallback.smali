.class Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;
.super Ljava/lang/Object;
.source "PurchaseMethods.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/PurchaseMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurchaseResponseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/oculus/horizon/commerce/GrantEntitlementResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<TT;>;"
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

.field private final mCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<TT;>;"
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
.method constructor <init>(Lretrofit/Callback;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<TT;>;",
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
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->mCallback:Lretrofit/Callback;

    .line 138
    iput-object p2, p0, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;

    .line 139
    iput-object p3, p0, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->mAppInternalConverterLazy:Lcom/facebook/inject/Lazy;

    .line 140
    return-void
.end method

.method private insertEntitlement(Lcom/oculus/horizon/api/common/Item;JLjava/lang/String;)V
    .locals 8

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 159
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v6

    .line 160
    iget-object v1, p0, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->mAppInternalConverterLazy:Lcom/facebook/inject/Lazy;

    .line 162
    invoke-interface {v1}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/utils/AppInternalConverter;

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    .line 163
    invoke-virtual/range {v1 .. v6}, Lcom/oculus/library/utils/AppInternalConverter;->toApp(Lcom/oculus/horizon/api/common/Item;Ljava/lang/String;JLcom/oculus/library/model/App;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->insertApp(Lcom/oculus/library/model/App;)V

    .line 166
    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->mCallback:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->failure(Lretrofit/RetrofitError;)V

    .line 155
    return-void
.end method

.method public success(Lcom/oculus/horizon/commerce/GrantEntitlementResponse;Lretrofit/client/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/GrantEntitlementResponse;->getAppEntitlements()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Entitlement;

    .line 145
    iget-object v2, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Entitlement;->signed_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    iget-wide v4, v0, Lcom/oculus/horizon/api/common/Entitlement;->last_used:J

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->signed_token:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5, v0}, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->insertEntitlement(Lcom/oculus/horizon/api/common/Item;JLjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->mCallback:Lretrofit/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit/Callback;->success(Ljava/lang/Object;Lretrofit/client/Response;)V

    .line 150
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Lcom/oculus/horizon/commerce/GrantEntitlementResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/commerce/PurchaseMethods$PurchaseResponseCallback;->success(Lcom/oculus/horizon/commerce/GrantEntitlementResponse;Lretrofit/client/Response;)V

    return-void
.end method
