.class public Lcom/facebook/common/util/Optionals;
.super Ljava/lang/Object;
.source "Optionals.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNullOrAbsent(Lcom/google/common/base/Optional;)Z
    .locals 1
    .param p0, "optional"    # Lcom/google/common/base/Optional;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
