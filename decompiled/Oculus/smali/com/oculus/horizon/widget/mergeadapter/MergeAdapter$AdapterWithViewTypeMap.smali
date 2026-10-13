.class Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;
.super Ljava/lang/Object;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterWithViewTypeMap"
.end annotation


# instance fields
.field final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final mViewTypeExternalToLocalMap:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 292
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mViewTypeExternalToLocalMap:Landroid/util/SparseIntArray;

    .line 293
    return-void
.end method
