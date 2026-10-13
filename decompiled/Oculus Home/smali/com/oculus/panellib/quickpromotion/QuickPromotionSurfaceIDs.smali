.class public Lcom/oculus/panellib/quickpromotion/QuickPromotionSurfaceIDs;
.super Ljava/lang/Object;
.source "QuickPromotionSurfaceIDs.java"


# static fields
.field public static final OCULUS_HOME_GDPR_INTERSTITIAL:I = 0x160b

.field public static final OCULUS_HOME_INTERSTITIAL:I = 0x148b

.field public static final OCULUS_HOME_TOAST_QP:I = 0x18f2

.field public static final OCULUS_HOME_TOOLTIP:I = 0x15fc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSurfacePriorityList(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;)Ljava/util/List;
    .locals 3
    .param p0, "application"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/oculus/panellib/quickpromotion/QuickPromotionSurfaceIDs$1;->$SwitchMap$com$oculus$modules$codegen$QuickPromotionModule$QPApplication:[I

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 28
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x160b

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x148b

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x18f2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x15fc

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
