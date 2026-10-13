.class public Lcom/facebook/quicklog/identifiers/Hermes;
.super Ljava/lang/Object;
.source "Hermes.java"


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
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 60
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "GC Benchmarks"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "HERMES_LINK_HERMES"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "HERMES_INITIALIZE_VM"

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v0, "HERMES_EXECUTE_BYTECODE"

    goto :goto_0

    .line 55
    :pswitch_4
    const-string v0, "HERMES_INITIALIZE_VM2"

    goto :goto_0

    .line 57
    :pswitch_5
    const-string v0, "HERMES_LINK_JAVA2JS"

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
