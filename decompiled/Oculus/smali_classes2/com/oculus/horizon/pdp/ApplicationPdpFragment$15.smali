.class synthetic Lcom/oculus/horizon/pdp/ApplicationPdpFragment$15;
.super Ljava/lang/Object;
.source "ApplicationPdpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/ApplicationPdpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$model$ProductStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 806
    invoke-static {}, Lcom/oculus/model/ProductStatus;->values()[Lcom/oculus/model/ProductStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$15;->$SwitchMap$com$oculus$model$ProductStatus:[I

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$15;->$SwitchMap$com$oculus$model$ProductStatus:[I

    sget-object v1, Lcom/oculus/model/ProductStatus;->DOWNLOADING:Lcom/oculus/model/ProductStatus;

    invoke-virtual {v1}, Lcom/oculus/model/ProductStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$15;->$SwitchMap$com$oculus$model$ProductStatus:[I

    sget-object v1, Lcom/oculus/model/ProductStatus;->INSTALLING:Lcom/oculus/model/ProductStatus;

    invoke-virtual {v1}, Lcom/oculus/model/ProductStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
