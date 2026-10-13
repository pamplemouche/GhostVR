.class public Lcom/facebook/quicklog/identifiers/Components;
.super Ljava/lang/Object;
.source "Components.java"


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
    .line 83
    packed-switch p0, :pswitch_data_0

    .line 130
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 85
    :pswitch_1
    const-string v0, "COMPONENTS_CALCULATE_LAYOUT"

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v0, "COMPONENTS_CREATE_LAYOUT"

    goto :goto_0

    .line 89
    :pswitch_3
    const-string v0, "COMPONENTS_CSS_LAYOUT"

    goto :goto_0

    .line 91
    :pswitch_4
    const-string v0, "COMPONENTS_COLLECT_RESULTS"

    goto :goto_0

    .line 93
    :pswitch_5
    const-string v0, "COMPONENTS_PREPARE_MOUNT"

    goto :goto_0

    .line 95
    :pswitch_6
    const-string v0, "COMPONENTS_MOUNT"

    goto :goto_0

    .line 97
    :pswitch_7
    const-string v0, "COMPONENTS_SHOULD_UPDATE_REFERENCE_LAYOUT_MISMATCH"

    goto :goto_0

    .line 99
    :pswitch_8
    const-string v0, "COMPONENTS_PRE_ALLOCATE_MOUNT_CONTENT"

    goto :goto_0

    .line 101
    :pswitch_9
    const-string v0, "COMPONENTS_SECTIONS_INITIAL_TTI"

    goto :goto_0

    .line 103
    :pswitch_a
    const-string v0, "COMPONENTS_STETHO_UPDATE_COMPONENT"

    goto :goto_0

    .line 105
    :pswitch_b
    const-string v0, "COMPONENTS_STETHO_INSPECT_COMPONENT"

    goto :goto_0

    .line 107
    :pswitch_c
    const-string v0, "COMPONENTS_FETCH_GRAPHQL"

    goto :goto_0

    .line 109
    :pswitch_d
    const-string v0, "COMPONENTS_DUPLICATE_KEY"

    goto :goto_0

    .line 111
    :pswitch_e
    const-string v0, "COMPONENTS_SECTIONS_DATA_DIFF_CALCULATE_DIFF"

    goto :goto_0

    .line 113
    :pswitch_f
    const-string v0, "COMPONENTS_SECTIONS_SET_ROOT"

    goto :goto_0

    .line 115
    :pswitch_10
    const-string v0, "COMPONENTS_SECTIONS_ON_CREATE_CHILDREN"

    goto :goto_0

    .line 117
    :pswitch_11
    const-string v0, "COMPONENTS_SECTIONS_CREATE_NEW_TREE"

    goto :goto_0

    .line 119
    :pswitch_12
    const-string v0, "COMPONENTS_SECTIONS_GENERATE_CHANGESET"

    goto :goto_0

    .line 121
    :pswitch_13
    const-string v0, "COMPONENTS_CALCULATE_LAYOUT_STATE"

    goto :goto_0

    .line 123
    :pswitch_14
    const-string v0, "COMPONENTS_DRAW"

    goto :goto_0

    .line 125
    :pswitch_15
    const-string v0, "COMPONENTS_BENCHMARK_RUN"

    goto :goto_0

    .line 127
    :pswitch_16
    const-string v0, "COMPONENTS_RESUME_CALCULATE_LAYOUT_STATE"

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method
