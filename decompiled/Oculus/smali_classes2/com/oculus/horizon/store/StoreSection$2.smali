.class synthetic Lcom/oculus/horizon/store/StoreSection$2;
.super Ljava/lang/Object;
.source "StoreSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$horizon$store$StoreSection$StoreSectionLayout:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->values()[Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/horizon/store/StoreSection$2;->$SwitchMap$com$oculus$horizon$store$StoreSection$StoreSectionLayout:[I

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/store/StoreSection$2;->$SwitchMap$com$oculus$horizon$store$StoreSection$StoreSectionLayout:[I

    sget-object v1, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_SQUARE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oculus/horizon/store/StoreSection$2;->$SwitchMap$com$oculus$horizon$store$StoreSection$StoreSectionLayout:[I

    sget-object v1, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->HORIZON_LANDSCAPE_TILES:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->ordinal()I

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
