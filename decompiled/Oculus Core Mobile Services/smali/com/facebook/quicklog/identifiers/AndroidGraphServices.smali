.class public Lcom/facebook/quicklog/identifiers/AndroidGraphServices;
.super Ljava/lang/Object;
.source "AndroidGraphServices.java"


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
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 73
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    const-string v0, "ANDROID_GRAPH_SERVICES_EARLY_INIT"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "ANDROID_GRAPH_SERVICES_INITIALIZE_GRAPHQLSERVICEJNI"

    goto :goto_0

    .line 58
    :pswitch_3
    const-string v0, "ANDROID_GRAPH_SERVICES_INITIALIZE_GRAPHQLCONSISTENCYJNI"

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "ANDROID_GRAPH_SERVICES_INITIALIZE_GRAPHSERVICEASSET"

    goto :goto_0

    .line 62
    :pswitch_5
    const-string v0, "ANDROID_GRAPH_SERVICES_INITIALIZE_GRAPHQLSERVICEFACTORY"

    goto :goto_0

    .line 64
    :pswitch_6
    const-string v0, "ANDROID_GRAPH_SERVICES_FEED_TREE_DESERIALIZE"

    goto :goto_0

    .line 66
    :pswitch_7
    const-string v0, "ANDROID_GRAPH_SERVICES_FEED_TREE_SERIALIZE"

    goto :goto_0

    .line 68
    :pswitch_8
    const-string v0, "ANDROID_GRAPH_SERVICES_FEED_TREE_DESERIALIZE_WITH_CONSISTENCY"

    goto :goto_0

    .line 70
    :pswitch_9
    const-string v0, "ANDROID_GRAPH_SERVICES_INITIALIZE_QUERY_METADATA_ASSET"

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
