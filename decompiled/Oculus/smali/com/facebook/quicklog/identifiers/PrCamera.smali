.class public Lcom/facebook/quicklog/identifiers/PrCamera;
.super Ljava/lang/Object;
.source "PrCamera.java"


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
    .line 204
    packed-switch p0, :pswitch_data_0

    .line 377
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 206
    :pswitch_1
    const-string v0, "PR_CAMERA_CACHE_LOAD_TIME"

    goto :goto_0

    .line 208
    :pswitch_2
    const-string v0, "PR_CAMERA_COLD_START_TTI"

    goto :goto_0

    .line 210
    :pswitch_3
    const-string v0, "PR_CAMERA_WARM_START_TTI"

    goto :goto_0

    .line 212
    :pswitch_4
    const-string v0, "PR_CAMERA_NETWORK_LOAD_TIME"

    goto :goto_0

    .line 214
    :pswitch_5
    const-string v0, "PR_CAMERA_APPLY_EFFECT_TTI"

    goto :goto_0

    .line 216
    :pswitch_6
    const-string v0, "PR_CAMERA_VIDEO_PROCESSING_TIME"

    goto :goto_0

    .line 218
    :pswitch_7
    const-string v0, "PR_CAMERA_PHOTO_PROCESSING_TIME"

    goto :goto_0

    .line 220
    :pswitch_8
    const-string v0, "PR_CAMERA_PAGE_TRANSITION_TIME"

    goto :goto_0

    .line 222
    :pswitch_9
    const-string v0, "PR_CAMERA_EFFECT_STARTUP_TIME"

    goto :goto_0

    .line 224
    :pswitch_a
    const-string v0, "PR_CAMERA_INSPIRATION_UPDATE"

    goto :goto_0

    .line 226
    :pswitch_b
    const-string v0, "PR_CAMERA_CAMERA_FIRST_FRAME_TTI"

    goto :goto_0

    .line 228
    :pswitch_c
    const-string v0, "PR_CAMERA_PR_CAMERA_EFFECT_TRAY_TTI"

    goto :goto_0

    .line 230
    :pswitch_d
    const-string v0, "PR_CAMERA_PHOTO_CAPTURE"

    goto :goto_0

    .line 232
    :pswitch_e
    const-string v0, "PR_CAMERA_TIME_TO_START_CAPTURE_VIDEO"

    goto :goto_0

    .line 234
    :pswitch_f
    const-string v0, "PR_CAMERA_TIME_TO_END_CAPTURE_VIDEO"

    goto :goto_0

    .line 236
    :pswitch_10
    const-string v0, "PR_CAMERA_CAMERA_INITIAL_PHOTO_TTI"

    goto :goto_0

    .line 238
    :pswitch_11
    const-string v0, "PR_CAMERA_CAMERA_INITIAL_VIDEO_TTI"

    goto :goto_0

    .line 240
    :pswitch_12
    const-string v0, "PR_CAMERA_SIMPLE_METRIC"

    goto :goto_0

    .line 242
    :pswitch_13
    const-string v0, "PR_CAMERA_CAMERA_INITIAL_MEDIAS_TTI"

    goto :goto_0

    .line 244
    :pswitch_14
    const-string v0, "PR_CAMERA_CAMERA_ROLL_PHOTO_PICKING_TTI"

    goto :goto_0

    .line 246
    :pswitch_15
    const-string v0, "PR_CAMERA_CAMERA_ROLL_VIDEO_PICKING_TTI"

    goto :goto_0

    .line 248
    :pswitch_16
    const-string v0, "PR_CAMERA_CAMERA_BOOMERANG_PROCESSING_TIME"

    goto :goto_0

    .line 250
    :pswitch_17
    const-string v0, "PR_CAMERA_CAMERA_FIRST_FRAME_TTRC"

    goto :goto_0

    .line 252
    :pswitch_18
    const-string v0, "PR_CAMERA_CAMERA_INITIAL_PHOTO_TTRC"

    goto :goto_0

    .line 254
    :pswitch_19
    const-string v0, "PR_CAMERA_CAMERA_INITIAL_VIDEO_TTRC"

    goto :goto_0

    .line 256
    :pswitch_1a
    const-string v0, "PR_CAMERA_CAMERA_INITIAL_MEDIAS_TTRC"

    goto :goto_0

    .line 258
    :pswitch_1b
    const-string v0, "PR_CAMERA_MUSIC_PICKER_LAUNCH_TTI"

    goto :goto_0

    .line 260
    :pswitch_1c
    const-string v0, "PR_CAMERA_MUSIC_PICKER_PREVIEW_TTI"

    goto :goto_0

    .line 262
    :pswitch_1d
    const-string v0, "PR_CAMERA_MUSIC_PICKER_SELECT_SONG_TTI"

    goto :goto_0

    .line 264
    :pswitch_1e
    const-string v0, "PR_CAMERA_DOODLE_TOOL_LAUNCH_TTI"

    goto :goto_0

    .line 266
    :pswitch_1f
    const-string v0, "PR_CAMERA_CAPTURE_MODE_TTI"

    goto :goto_0

    .line 268
    :pswitch_20
    const-string v0, "PR_CAMERA_TEXT_TOOL_OPEN_TTI"

    goto :goto_0

    .line 270
    :pswitch_21
    const-string v0, "PR_CAMERA_TEXT_TOOL_CLOSE_TTI"

    goto :goto_0

    .line 272
    :pswitch_22
    const-string v0, "PR_CAMERA_TEXT_TOOL_ADJUSTING_TTI"

    goto :goto_0

    .line 274
    :pswitch_23
    const-string v0, "PR_CAMERA_STICKER_CHANGE_STYLE_TTI"

    goto :goto_0

    .line 276
    :pswitch_24
    const-string v0, "PR_CAMERA_STICKER_CLICKED_IN_TRAY_TTI"

    goto :goto_0

    .line 278
    :pswitch_25
    const-string v0, "PR_CAMERA_STICKER_ADJUSTING_TTI"

    goto :goto_0

    .line 280
    :pswitch_26
    const-string v0, "PR_CAMERA_STICKER_REACTION_ANIMATION_TTI"

    goto :goto_0

    .line 282
    :pswitch_27
    const-string v0, "PR_CAMERA_STICKER_TRAY_SCROLL_TTI"

    goto :goto_0

    .line 284
    :pswitch_28
    const-string v0, "PR_CAMERA_STICKER_TRAY_OPEN_TTI"

    goto :goto_0

    .line 286
    :pswitch_29
    const-string v0, "PR_CAMERA_STICKER_TRAY_CLOSE_TTI"

    goto :goto_0

    .line 288
    :pswitch_2a
    const-string v0, "PR_CAMERA_LOAD_PHOTO_FROM_GALLERY_TIME"

    goto :goto_0

    .line 290
    :pswitch_2b
    const-string v0, "PR_CAMERA_START_IN_TEXT_MODE"

    goto/16 :goto_0

    .line 292
    :pswitch_2c
    const-string v0, "PR_CAMERA_ADD_TO_POST_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 294
    :pswitch_2d
    const-string v0, "PR_CAMERA_ADD_TO_POST_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 296
    :pswitch_2e
    const-string v0, "PR_CAMERA_CAMERA_ROLL_OPEN_TTI"

    goto/16 :goto_0

    .line 298
    :pswitch_2f
    const-string v0, "PR_CAMERA_CAMERA_ROLL_CLOSE_TTI"

    goto/16 :goto_0

    .line 300
    :pswitch_30
    const-string v0, "PR_CAMERA_CAPTIONS_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 302
    :pswitch_31
    const-string v0, "PR_CAMERA_CAPTIONS_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 304
    :pswitch_32
    const-string v0, "PR_CAMERA_CHECKIN_ROLL_OPEN_TTI"

    goto/16 :goto_0

    .line 306
    :pswitch_33
    const-string v0, "PR_CAMERA_CHECKIN_ROLL_CLOSE_TTI"

    goto/16 :goto_0

    .line 308
    :pswitch_34
    const-string v0, "PR_CAMERA_EDIT_GALLERY_OPEN_TTI"

    goto/16 :goto_0

    .line 310
    :pswitch_35
    const-string v0, "PR_CAMERA_EDIT_GALLERY_CLOSE_TTI"

    goto/16 :goto_0

    .line 312
    :pswitch_36
    const-string v0, "PR_CAMERA_EFFECTS_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 314
    :pswitch_37
    const-string v0, "PR_CAMERA_EFFECTS_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 316
    :pswitch_38
    const-string v0, "PR_CAMERA_SHARED_CLIP_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 318
    :pswitch_39
    const-string v0, "PR_CAMERA_SHARED_CLIP_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 320
    :pswitch_3a
    const-string v0, "PR_CAMERA_START_IN_TEXT_MODE_TTI"

    goto/16 :goto_0

    .line 322
    :pswitch_3b
    const-string v0, "PR_CAMERA_TAG_FRIENDS_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 324
    :pswitch_3c
    const-string v0, "PR_CAMERA_TAG_FRIENDS_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 326
    :pswitch_3d
    const-string v0, "PR_CAMERA_TEXT_STYLE_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 328
    :pswitch_3e
    const-string v0, "PR_CAMERA_TEXT_STYLE_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 330
    :pswitch_3f
    const-string v0, "PR_CAMERA_VIDEO_TAGGING_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 332
    :pswitch_40
    const-string v0, "PR_CAMERA_VIDEO_TAGGING_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 334
    :pswitch_41
    const-string v0, "PR_CAMERA_VIDEO_TRIMMING_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 336
    :pswitch_42
    const-string v0, "PR_CAMERA_VIDEO_TRIMMING_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 338
    :pswitch_43
    const-string v0, "PR_CAMERA_MUSIC_PICKER_EDITING_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 340
    :pswitch_44
    const-string v0, "PR_CAMERA_MUSIC_PICKER_EDITING_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 342
    :pswitch_45
    const-string v0, "PR_CAMERA_MUSIC_PICKER_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 344
    :pswitch_46
    const-string v0, "PR_CAMERA_MUSIC_PICKER_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 346
    :pswitch_47
    const-string v0, "PR_CAMERA_MUSIC_PICKER_TRAY_SCROLL_TTI"

    goto/16 :goto_0

    .line 348
    :pswitch_48
    const-string v0, "PR_CAMERA_FORM_CHANGE_TTI"

    goto/16 :goto_0

    .line 350
    :pswitch_49
    const-string v0, "PR_CAMERA_DUMMY_MUTATION_TTI"

    goto/16 :goto_0

    .line 352
    :pswitch_4a
    const-string v0, "PR_CAMERA_TIME_TO_OPEN_SHARE_SHEET"

    goto/16 :goto_0

    .line 354
    :pswitch_4b
    const-string v0, "PR_CAMERA_DOODLE_TOOL_DRAWING_TTI"

    goto/16 :goto_0

    .line 356
    :pswitch_4c
    const-string v0, "PR_CAMERA_START_IN_SINGLE_MEDIA_PREVIEW_FROM_LANDING"

    goto/16 :goto_0

    .line 358
    :pswitch_4d
    const-string v0, "PR_CAMERA_TEXT_MODE_CONTENT_READY"

    goto/16 :goto_0

    .line 360
    :pswitch_4e
    const-string v0, "PR_CAMERA_START_IN_MULTI_MEDIA_PREVIEW_FROM_LANDING"

    goto/16 :goto_0

    .line 362
    :pswitch_4f
    const-string v0, "PR_CAMERA_SAVE_MEDIA_TO_DISK"

    goto/16 :goto_0

    .line 364
    :pswitch_50
    const-string v0, "PR_CAMERA_INIT_UEG_WITH_DOWNLOAD"

    goto/16 :goto_0

    .line 366
    :pswitch_51
    const-string v0, "PR_CAMERA_BOOMERANG_TRAY_OPEN_TTI"

    goto/16 :goto_0

    .line 368
    :pswitch_52
    const-string v0, "PR_CAMERA_BOOMERANG_TRAY_CLOSE_TTI"

    goto/16 :goto_0

    .line 370
    :pswitch_53
    const-string v0, "PR_CAMERA_POST_CAPTURE_BOOMERANG_GENERATION_TIME"

    goto/16 :goto_0

    .line 372
    :pswitch_54
    const-string v0, "PR_CAMERA_TONE_FILTER_TTI"

    goto/16 :goto_0

    .line 374
    :pswitch_55
    const-string v0, "PR_CAMERA_PHOTO_ANALYSIS_PROCESSING_TIME"

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
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
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_54
        :pswitch_55
    .end packed-switch
.end method
