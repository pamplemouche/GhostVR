.class public Lcom/facebook/quicklog/identifiers/NativeTemplates;
.super Ljava/lang/Object;
.source "NativeTemplates.java"


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
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 137
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 84
    :pswitch_1
    const-string v0, "NATIVE_TEMPLATES_PARSE"

    goto :goto_0

    .line 86
    :pswitch_2
    const-string v0, "NATIVE_TEMPLATES_NT_SCREEN_TTI"

    goto :goto_0

    .line 88
    :pswitch_3
    const-string v0, "NATIVE_TEMPLATES_NT_QPL_EXAMPLE_EVENT"

    goto :goto_0

    .line 90
    :pswitch_4
    const-string v0, "NATIVE_TEMPLATES_NT_VC_TTI"

    goto :goto_0

    .line 92
    :pswitch_5
    const-string v0, "NATIVE_TEMPLATES_NT_FLEXBOX_LAYOUT_ANDROID"

    goto :goto_0

    .line 94
    :pswitch_6
    const-string v0, "NATIVE_TEMPLATES_LITHO_RENDER"

    goto :goto_0

    .line 96
    :pswitch_7
    const-string v0, "NATIVE_TEMPLATES_PARSE_SINGLE_BUNDLE"

    goto :goto_0

    .line 98
    :pswitch_8
    const-string v0, "NATIVE_TEMPLATES_RENDER_PERF_FOR_MEASURE_RENDER_PERF_STYLE"

    goto :goto_0

    .line 100
    :pswitch_9
    const-string v0, "NATIVE_TEMPLATES_SEARCH_COMPONENT_CREATION"

    goto :goto_0

    .line 102
    :pswitch_a
    const-string v0, "NATIVE_TEMPLATES_NT_CONVERT_TEMPLATE"

    goto :goto_0

    .line 104
    :pswitch_b
    const-string v0, "NATIVE_TEMPLATES_CALCULATE_LAYOUT"

    goto :goto_0

    .line 106
    :pswitch_c
    const-string v0, "NATIVE_TEMPLATES_CREATE_LAYOUT"

    goto :goto_0

    .line 108
    :pswitch_d
    const-string v0, "NATIVE_TEMPLATES_CSS_LAYOUT"

    goto :goto_0

    .line 110
    :pswitch_e
    const-string v0, "NATIVE_TEMPLATES_COLLECT_RESULTS"

    goto :goto_0

    .line 112
    :pswitch_f
    const-string v0, "NATIVE_TEMPLATES_MOUNT"

    goto :goto_0

    .line 114
    :pswitch_10
    const-string v0, "NATIVE_TEMPLATES_PRE_ALLOCATE_MOUNT_CONTENT"

    goto :goto_0

    .line 116
    :pswitch_11
    const-string v0, "NATIVE_TEMPLATES_SECTIONS_CREATE_NEW_TREE"

    goto :goto_0

    .line 118
    :pswitch_12
    const-string v0, "NATIVE_TEMPLATES_SECTIONS_DATA_DIFF_CALCULATE_DIFF"

    goto :goto_0

    .line 120
    :pswitch_13
    const-string v0, "NATIVE_TEMPLATES_SECTIONS_GENERATE_CHANGESET"

    goto :goto_0

    .line 122
    :pswitch_14
    const-string v0, "NATIVE_TEMPLATES_SECTIONS_ON_CREATE_CHILDREN"

    goto :goto_0

    .line 124
    :pswitch_15
    const-string v0, "NATIVE_TEMPLATES_SECTIONS_SET_ROOT"

    goto :goto_0

    .line 126
    :pswitch_16
    const-string v0, "NATIVE_TEMPLATES_CALCULATE_LAYOUT_STATE"

    goto :goto_0

    .line 128
    :pswitch_17
    const-string v0, "NATIVE_TEMPLATES_DRAW"

    goto :goto_0

    .line 130
    :pswitch_18
    const-string v0, "NATIVE_TEMPLATES_NT_LITHO_CONVERTER"

    goto :goto_0

    .line 132
    :pswitch_19
    const-string v0, "NATIVE_TEMPLATES_NT_SCREEN_TTRC"

    goto :goto_0

    .line 134
    :pswitch_1a
    const-string v0, "NATIVE_TEMPLATES_RESUME_CALCULATE_LAYOUT_STATE"

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
