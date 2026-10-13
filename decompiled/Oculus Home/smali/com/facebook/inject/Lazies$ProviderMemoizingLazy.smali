.class final Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;
.super Ljava/lang/Object;
.source "Lazies.java"

# interfaces
.implements Lcom/facebook/inject/Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/Lazies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderMemoizingLazy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/Lazy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;, "Lcom/facebook/inject/Lazies$ProviderMemoizingLazy<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;->mProvider:Ljavax/inject/Provider;

    .line 45
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;, "Lcom/facebook/inject/Lazies$ProviderMemoizingLazy<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;->mProvider:Ljavax/inject/Provider;

    if-eqz v0, :cond_1

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;->mProvider:Ljavax/inject/Provider;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;->mProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;->mValue:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;->mProvider:Ljavax/inject/Provider;

    .line 55
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;->mValue:Ljava/lang/Object;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
