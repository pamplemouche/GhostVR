.class public Lcom/facebook/quicklog/identifiers/ObjSel;
.super Ljava/lang/Object;
.source "ObjSel.java"


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
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 36
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    const-string v0, "OBJ_SEL_OBJSEL_FETCH"

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
