.class public Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lcom/facebook/common/objectpool/ObjectPool$Allocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/objectpool/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicAllocator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/objectpool/ObjectPool$Allocator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;, "Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;->mClazz:Ljava/lang/Class;

    .line 85
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;, "Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;->mClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/facebook/common/objectpool/ObjectPool;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Couldn\'t instantiate object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/facebook/common/objectpool/ObjectPool;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Couldn\'t instantiate object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onAllocate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;, "Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onRelease(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;, "Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    return-void
.end method
