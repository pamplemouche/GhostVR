.class public Lcom/oculus/horizon/store/impression/StoreImpressionDetector;
.super Ljava/lang/Object;
.source "StoreImpressionDetector.java"


# instance fields
.field private final mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/facebook/crudolib/view/impression/ImpressionListener;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    invoke-direct {v0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    .line 15
    iput-object p1, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    invoke-virtual {v0, p2}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->registerListener(Lcom/facebook/crudolib/view/impression/ImpressionListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method public isTracking()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    invoke-virtual {v0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->isTracking()Z

    move-result v0

    return v0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    iget-object v1, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->startTracking(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 25
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    iget-object v1, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->stopTracking(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 29
    return-void
.end method

.method public triggerImpressionDetection()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    iget-object v1, p0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 33
    return-void
.end method
