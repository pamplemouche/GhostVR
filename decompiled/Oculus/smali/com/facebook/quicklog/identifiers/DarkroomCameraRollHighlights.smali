.class public Lcom/facebook/quicklog/identifiers/DarkroomCameraRollHighlights;
.super Ljava/lang/Object;
.source "DarkroomCameraRollHighlights.java"


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

    .line 79
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_ANALYZER_INIT_FB4A"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_INDEXER_EXECUTION_FB4A"

    goto :goto_0

    .line 58
    :pswitch_3
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_ANALYZER_IMAGE_LOAD_FB4A"

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_ANALYZER_IMAGE_RESIZING_FB4A"

    goto :goto_0

    .line 62
    :pswitch_5
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_UEG_THUMBNAIL_LOAD"

    goto :goto_0

    .line 64
    :pswitch_6
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_ANALYZER_ON_DEMAND_IMAGE_LOAD"

    goto :goto_0

    .line 66
    :pswitch_7
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_INDEXER_ON_DEMAND_EXECUTION"

    goto :goto_0

    .line 68
    :pswitch_8
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_ANALYZER_IMAGE_GET_BITMAP_NO_RESIZING"

    goto :goto_0

    .line 70
    :pswitch_9
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_UEG_HIGHLIGHT_APPLICATION"

    goto :goto_0

    .line 72
    :pswitch_a
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_MEDIA_ANALYZER_MODEL_LOAD"

    goto :goto_0

    .line 74
    :pswitch_b
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_ON_DEMAND_ANALYZER_OCEAN_FRAME_CONVERSION"

    goto :goto_0

    .line 76
    :pswitch_c
    const-string v0, "DARKROOM_CAMERA_ROLL_HIGHLIGHTS_FOREGROUND_ANALYZER_OCEAN_FRAME_CONVERSION"

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
