.class public Lcom/facebook/quicklog/identifiers/Photos;
.super Ljava/lang/Object;
.source "Photos.java"


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
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 109
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "PHOTOS_UPLOAD_SEQUENCE"

    goto :goto_0

    .line 72
    :pswitch_2
    const-string v0, "PHOTOS_MEDIA_GALLERY_TTI"

    goto :goto_0

    .line 74
    :pswitch_3
    const-string v0, "PHOTOS_PANDORA_LOADING"

    goto :goto_0

    .line 76
    :pswitch_4
    const-string v0, "PHOTOS_SIMPLE_PICKER_LAUNCH"

    goto :goto_0

    .line 78
    :pswitch_5
    const-string v0, "PHOTOS_LOAD_SNOWFLAKE_PHOTO_GALLERY_WITH_PHOTO"

    goto :goto_0

    .line 80
    :pswitch_6
    const-string v0, "LoadPhotoGallery-MediaGallery"

    goto :goto_0

    .line 82
    :pswitch_7
    const-string v0, "LoadPhotoGalleryWithPhoto-MediaGallery"

    goto :goto_0

    .line 84
    :pswitch_8
    const-string v0, "LoadPhotoBySwiping-MediaGallery"

    goto :goto_0

    .line 86
    :pswitch_9
    const-string v0, "LoadPhotoGalleryWithPhotoFromSource-MediaGallery"

    goto :goto_0

    .line 88
    :pswitch_a
    const-string v0, "PHOTOS_TIME_TO_DISPLAY_FACE_BOXES_MARKER"

    goto :goto_0

    .line 90
    :pswitch_b
    const-string v0, "PHOTOS_PERF_APPLY_TO_FILE"

    goto :goto_0

    .line 92
    :pswitch_c
    const-string v0, "LoadPhotosFeed"

    goto :goto_0

    .line 94
    :pswitch_d
    const-string v0, "PHOTOS_PHOTOS_FEED_TTI"

    goto :goto_0

    .line 96
    :pswitch_e
    const-string v0, "PHOTOS_PROGRESS_SHOWN"

    goto :goto_0

    .line 98
    :pswitch_f
    const-string v0, "PHOTOS_PROGRESS_NOT_SHOWN"

    goto :goto_0

    .line 100
    :pswitch_10
    const-string v0, "PHOTOS_PHOTOS_FEED_INIT_TO_ANIM_END"

    goto :goto_0

    .line 102
    :pswitch_11
    const-string v0, "PHOTOS_MEDIA_FETCHER"

    goto :goto_0

    .line 104
    :pswitch_12
    const-string v0, "PHOTOS_PHOTO_TO_VIDEO_CONVERSTION_TTI_ANDROID"

    goto :goto_0

    .line 106
    :pswitch_13
    const-string v0, "PHOTOS_INITIAL_LOAD_PHOTOS_TTRC_ANDROID"

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method
