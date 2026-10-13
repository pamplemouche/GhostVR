.class public Lcom/facebook/quicklog/identifiers/Pymk;
.super Ljava/lang/Object;
.source "Pymk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    packed-switch p0, :pswitch_data_0

    .line 34
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    const-string v0, "PYMK_PAGINATED_PYMK_TTI"

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
