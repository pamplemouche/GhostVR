.class public final Lcom/facebook/common/util/SparseArrayUtil;
.super Ljava/lang/Object;
.source "SparseArrayUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeys(Landroid/util/SparseArray;)[I
    .locals 4
    .param p0, "array"    # Landroid/util/SparseArray;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 14
    .local v2, "size":I
    new-array v1, v2, [I

    .line 15
    .local v1, "keys":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return-object v1
.end method
