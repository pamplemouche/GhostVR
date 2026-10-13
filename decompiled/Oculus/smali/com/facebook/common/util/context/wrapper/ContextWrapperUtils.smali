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

.method public static findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroid/content/Context;
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
    const/4 v2, 0x0

    move-object v1, p0

    .line 38
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    instance-of v0, v1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 40
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 41
    if-ne v1, p0, :cond_1

    move-object v1, v2

    .line 50
    :cond_0
    :goto_1
    return-object v1

    :cond_1
    move-object v1, p0

    .line 46
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 47
    goto :goto_1
.end method
