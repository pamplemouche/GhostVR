.class Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;
.super Ljava/lang/Object;
.source "BalancedIntKeyObjectTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field mKey:I

.field mLeft:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

.field mRight:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;


# direct methods
.method constructor <init>(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor<",
            "TF;>;TF;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-interface {p1, p2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;->getIntKey(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mKey:I

    .line 126
    iput-object p2, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mItem:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mLeft:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    .line 128
    iput-object p1, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mRight:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    return-void
.end method
