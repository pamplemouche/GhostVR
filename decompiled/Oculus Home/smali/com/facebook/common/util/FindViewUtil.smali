.class public Lcom/facebook/common/util/FindViewUtil;
.super Ljava/lang/Object;
.source "FindViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertViewExists(Landroid/view/View;Landroid/content/res/Resources;I)Landroid/view/View;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Landroid/content/res/Resources;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    if-nez p0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required view with ID %s not found. Either your layout is missing the ID you requested, or you want to use getOptionalView. Only use getOptionalView if you\'re sure that you need logic that depends on whether a particular child view exists."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 129
    invoke-static {v1, v2}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-object p0
.end method

.method private static findViewWithTagKey(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "key"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 153
    .end local p0    # "root":Landroid/view/View;
    :goto_0
    return-object p0

    .line 143
    .restart local p0    # "root":Landroid/view/View;
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p0

    .line 144
    check-cast v2, Landroid/view/ViewGroup;

    .line 145
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 146
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/facebook/common/util/FindViewUtil;->findViewWithTagKey(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 148
    goto :goto_0

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "i":I
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static findViewWithTagKeyAndValue(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p0, "root"    # Landroid/view/View;
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "tag":Ljava/lang/Object;
    if-eq v1, p2, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, p0

    .line 172
    :cond_1
    :goto_0
    return-object v2

    .line 162
    :cond_2
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v3, p0

    .line 163
    check-cast v3, Landroid/view/ViewGroup;

    .line 164
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 165
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/facebook/common/util/FindViewUtil;->findViewWithTagKeyAndValue(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_1

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    .end local v0    # "i":I
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getOptionalParentOfType(Landroid/view/View;Ljava/lang/Class;)Lcom/google/common/base/Optional;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 117
    .local v0, "parentView":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    check-cast v0, Landroid/view/View;

    .end local v0    # "parentView":Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static getOptionalView(Landroid/app/Activity;I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getOptionalView(Landroid/view/View;I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getOptionalViewWithTagKey(Landroid/view/View;I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p0, p1}, Lcom/facebook/common/util/FindViewUtil;->findViewWithTagKey(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrThrow(Landroid/app/Activity;I)Landroid/view/View;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/common/util/FindViewUtil;->assertViewExists(Landroid/view/View;Landroid/content/res/Resources;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getViewOrThrow(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/common/util/FindViewUtil;->assertViewExists(Landroid/view/View;Landroid/content/res/Resources;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getViewWithTagKeyAndValueOrThrow(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagKey"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p0, p1, p2}, Lcom/facebook/common/util/FindViewUtil;->findViewWithTagKeyAndValue(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/common/util/FindViewUtil;->assertViewExists(Landroid/view/View;Landroid/content/res/Resources;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getViewWithTagKeyOrThrow(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p0, p1}, Lcom/facebook/common/util/FindViewUtil;->findViewWithTagKey(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/common/util/FindViewUtil;->assertViewExists(Landroid/view/View;Landroid/content/res/Resources;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
