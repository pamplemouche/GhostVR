.class public Lcom/facebook/common/util/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs isValid([Ljava/lang/String;)Z
    .locals 5
    .param p0, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 12
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 13
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    .end local v0    # "string":Ljava/lang/String;
    :goto_1
    return v1

    .line 12
    .restart local v0    # "string":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
