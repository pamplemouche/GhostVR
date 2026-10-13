.class public Lcom/facebook/imagepipeline/producers/InternalProducerListener;
.super Ljava/lang/Object;
.source "InternalProducerListener.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ProducerListener2;


# instance fields
.field private final mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field private final mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ProducerListener;Lcom/facebook/imagepipeline/producers/ProducerListener2;)V
    .locals 0
    .param p2    # Lcom/facebook/imagepipeline/producers/ProducerListener2;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    .line 21
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 22
    return-void
.end method


# virtual methods
.method public onProducerEvent(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerEvent(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    return-void
.end method

.method public onProducerFinishWithCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    :cond_1
    return-void
.end method

.method public onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 76
    :cond_1
    return-void
.end method

.method public onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    :cond_1
    return-void
.end method

.method public onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 41
    :cond_1
    return-void
.end method

.method public onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 98
    :cond_1
    return-void
.end method

.method public requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v0

    .line 106
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    if-eqz v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/InternalProducerListener;->mProducerListener2:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v0

    .line 109
    :cond_1
    return v0
.end method
