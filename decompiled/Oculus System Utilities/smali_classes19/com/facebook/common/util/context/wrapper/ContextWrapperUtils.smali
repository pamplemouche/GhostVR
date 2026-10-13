.class public Lcom/facebook/common/util/context/wrapper/ContextWrapperUtils;
.super Ljava/lang/Object;
.source "ContextWrapperUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findContextForService(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 59
    check-cast v0, Landroid/app/Activity;

    .line 60
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .line 64
    .end local v0    # "activity":Landroid/app/Activity;
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    return-object p0
.end method

.method public static findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    move-object v1, p0

    .line 40
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "baseContext":Landroid/content/Context;
    if-ne p0, v0, :cond_1

    move-object p0, v2

    .line 50
    .end local v0    # "baseContext":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_1
    return-object p0

    .line 44
    .restart local v0    # "baseContext":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    move-object p0, v0

    .line 46
    goto :goto_0

    .end local v0    # "baseContext":Landroid/content/Context;
    :cond_2
    move-object p0, v2

    .line 47
    goto :goto_1
.end method

.method public static getRootBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    move-object v0, p0

    .line 21
    .local v0, "baseContext":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 22
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "baseContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "baseContext":Landroid/content/Context;
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method
