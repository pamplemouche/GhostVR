.class public Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;
.super Ljava/util/HashMap;
.source "CloudStorage2ActionMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public sizeAddedAndUpdatedFileActions()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 20
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->ADD:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 21
    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->UPDATE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 25
    if-eqz v0, :cond_0

    array-length v0, v0

    :goto_0
    add-int v3, v2, v0

    .line 26
    if-eqz v1, :cond_1

    array-length v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 28
    return v0

    :cond_0
    move v0, v2

    .line 25
    goto :goto_0

    :cond_1
    move v0, v2

    .line 26
    goto :goto_1
.end method

.method public sizeTotalFileActions()I
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->REMOVE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->sizeAddedAndUpdatedFileActions()I

    move-result v1

    .line 14
    if-eqz v0, :cond_0

    array-length v0, v0

    :goto_0
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
