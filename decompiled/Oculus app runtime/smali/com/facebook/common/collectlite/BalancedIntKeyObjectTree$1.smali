.class Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$1;
.super Ljava/lang/Object;
.source "BalancedIntKeyObjectTree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->getComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;


# direct methods
.method constructor <init>(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$1;->this$0:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;)I
    .locals 0

    .line 113
    iget p1, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mKey:I

    iget p2, p2, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mKey:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 110
    check-cast p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    check-cast p2, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$1;->compare(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;)I

    move-result p1

    return p1
.end method
