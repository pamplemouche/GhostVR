.class public Lcom/facebook/quicklog/identifiers/Skylight;
.super Ljava/lang/Object;
.source "Skylight.java"


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
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 124
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "SKYLIGHT_STARTUP"

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "SKYLIGHT_RENDER"

    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "SKYLIGHT_PATCH_GRAPH_SYNC"

    goto :goto_0

    .line 83
    :pswitch_4
    const-string v0, "SKYLIGHT_PATCH_LIBRARY_LOAD"

    goto :goto_0

    .line 85
    :pswitch_5
    const-string v0, "SKYLIGHT_ASSET_SUMMARY_UPDATE"

    goto :goto_0

    .line 87
    :pswitch_6
    const-string v0, "SKYLIGHT_PROJECT_OPEN"

    goto :goto_0

    .line 89
    :pswitch_7
    const-string v0, "SKYLIGHT_PROJECT_SAVE"

    goto :goto_0

    .line 91
    :pswitch_8
    const-string v0, "SKYLIGHT_PROJECT_PACKAGE_OPEN"

    goto :goto_0

    .line 93
    :pswitch_9
    const-string v0, "SKYLIGHT_PROJECT_PACKAGE_SAVE"

    goto :goto_0

    .line 95
    :pswitch_a
    const-string v0, "SKYLIGHT_PROJECT_SAVE_AS"

    goto :goto_0

    .line 97
    :pswitch_b
    const-string v0, "SKYLIGHT_PROJECT_CREATE"

    goto :goto_0

    .line 99
    :pswitch_c
    const-string v0, "SKYLIGHT_PROJECT_OPEN_TOTAL"

    goto :goto_0

    .line 101
    :pswitch_d
    const-string v0, "SKYLIGHT_PROJECT_CREATE_TOTAL"

    goto :goto_0

    .line 103
    :pswitch_e
    const-string v0, "SKYLIGHT_PROJECT_WINDOW_CREATE"

    goto :goto_0

    .line 105
    :pswitch_f
    const-string v0, "SKYLIGHT_APP_MOUSE_CLICK"

    goto :goto_0

    .line 107
    :pswitch_10
    const-string v0, "SKYLIGHT_WELCOME_WINDOW_CREATE"

    goto :goto_0

    .line 109
    :pswitch_11
    const-string v0, "SKYLIGHT_MENU_ITEM_CLICK"

    goto :goto_0

    .line 111
    :pswitch_12
    const-string v0, "SKYLIGHT_SAMPLE_PROJECT_OPEN_TOTAL"

    goto :goto_0

    .line 113
    :pswitch_13
    const-string v0, "SKYLIGHT_EFFECT_EXPORT_SETUP"

    goto :goto_0

    .line 115
    :pswitch_14
    const-string v0, "SKYLIGHT_INSPECTOR_UPDATE"

    goto :goto_0

    .line 117
    :pswitch_15
    const-string v0, "SKYLIGHT_ASSETS_TREE_UPDATE"

    goto :goto_0

    .line 119
    :pswitch_16
    const-string v0, "SKYLIGHT_SCENE_TREE_UPDATE"

    goto :goto_0

    .line 121
    :pswitch_17
    const-string v0, "SKYLIGHT_LAYERS_TREE_UPDATE"

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method
