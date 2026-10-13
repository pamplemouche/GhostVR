.class public Lcom/facebook/inject/UltralightLazy;
.super Lcom/facebook/inject/AbstractDefaultScopeLazy;
.source "UltralightLazy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/inject/AbstractDefaultScopeLazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mBindingId:I


# direct methods
.method private constructor <init>(ILcom/facebook/inject/InjectorLike;)V
    .locals 0
    .param p1, "bindingId"    # I
    .param p2, "injector"    # Lcom/facebook/inject/InjectorLike;

    .prologue
    .line 17
    .local p0, "this":Lcom/facebook/inject/UltralightLazy;, "Lcom/facebook/inject/UltralightLazy<TT;>;"
    invoke-direct {p0, p2}, Lcom/facebook/inject/AbstractDefaultScopeLazy;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 18
    iput p1, p0, Lcom/facebook/inject/UltralightLazy;->mBindingId:I

    .line 19
    return-void
.end method

.method public static get(ILcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/UltralightLazy;
    .locals 1
    .param p0, "bindingId"    # I
    .param p1, "injector"    # Lcom/facebook/inject/InjectorLike;

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/inject/UltralightLazy;

    invoke-direct {v0, p0, p1}, Lcom/facebook/inject/UltralightLazy;-><init>(ILcom/facebook/inject/InjectorLike;)V

    return-object v0
.end method


# virtual methods
.method protected onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    .locals 6
    .param p1, "injector"    # Lcom/facebook/inject/InjectorLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/InjectorLike;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/facebook/inject/UltralightLazy;, "Lcom/facebook/inject/UltralightLazy<TT;>;"
    const-string v1, "Lazy_onGetInstance"

    iget v2, p0, Lcom/facebook/inject/UltralightLazy;->mBindingId:I

    invoke-static {v1, v2}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;I)V

    .line 25
    :try_start_0
    iget v1, p0, Lcom/facebook/inject/UltralightLazy;->mBindingId:I

    invoke-static {v1, p1}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid binding id %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/facebook/inject/UltralightLazy;->mBindingId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method
