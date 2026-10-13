.class public Lcom/facebook/quicklog/identifiers/ImagesFetch;
.super Ljava/lang/Object;
.source "ImagesFetch.java"


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
    .line 80
    packed-switch p0, :pswitch_data_0

    .line 135
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    const-string v0, "IMAGES_FETCH_URLIMAGE_BINDMODEL_TO_RENDER"

    goto :goto_0

    .line 84
    :pswitch_1
    const-string v0, "IMAGES_FETCH_URLIMAGE_PIPELINE_EXPERIMENT"

    goto :goto_0

    .line 86
    :pswitch_2
    const-string v0, "IMAGES_FETCH_URLIMAGE_PREFETCH"

    goto :goto_0

    .line 88
    :pswitch_3
    const-string v0, "IMAGES_FETCH_URLIMAGE_NETWORK_FETCH"

    goto :goto_0

    .line 90
    :pswitch_4
    const-string v0, "IMAGES_FETCH_URLIMAGE_DOWNLOAD_AND_INSERT_INTO_CACHE"

    goto :goto_0

    .line 92
    :pswitch_5
    const-string v0, "IMAGES_FETCH_URLIMAGE_IMAGE_PROCESSING"

    goto :goto_0

    .line 94
    :pswitch_6
    const-string v0, "IMAGES_FETCH_URLIMAGE_IMAGE_PARSING"

    goto :goto_0

    .line 96
    :pswitch_7
    const-string v0, "IMAGES_FETCH_URLIMAGE_UNDERLYING_IMAGE_PARSING"

    goto :goto_0

    .line 98
    :pswitch_8
    const-string v0, "IMAGES_FETCH_URLIMAGE_BITMAP_FROM_FILE"

    goto :goto_0

    .line 100
    :pswitch_9
    const-string v0, "IMAGES_FETCH_URLIMAGE_NULL_OR_EMPTY_URI"

    goto :goto_0

    .line 102
    :pswitch_a
    const-string v0, "IMAGES_FETCH_URLIMAGE_LOG_MODE"

    goto :goto_0

    .line 104
    :pswitch_b
    const-string v0, "IMAGES_FETCH_URLIMAGE_UPDATE_IMAGE_VIEW"

    goto :goto_0

    .line 106
    :pswitch_c
    const-string v0, "IMAGES_FETCH_LOG_PARAM_NETWORK_FETCH_REQUEST_START_DELAY"

    goto :goto_0

    .line 108
    :pswitch_d
    const-string v0, "IMAGES_FETCH_LOG_PARAM_RETRY_NUMBER"

    goto :goto_0

    .line 110
    :pswitch_e
    const-string v0, "IMAGES_FETCH_LOG_PARAM_URL_BEING_FETCHED"

    goto :goto_0

    .line 112
    :pswitch_f
    const-string v0, "IMAGES_FETCH_LOG_PARAM_IMAGE_SOURCE"

    goto :goto_0

    .line 114
    :pswitch_10
    const-string v0, "IMAGES_FETCH_LOG_PARAM_IMAGE_FETCH_EXCEPTION"

    goto :goto_0

    .line 116
    :pswitch_11
    const-string v0, "IMAGES_FETCH_LOG_PARAM_OPERATION_RESULT"

    goto :goto_0

    .line 118
    :pswitch_12
    const-string v0, "IMAGES_FETCH_LOG_PARAM_STACKTRACE"

    goto :goto_0

    .line 120
    :pswitch_13
    const-string v0, "IMAGES_FETCH_LOG_PARAM_IS_SHOWN_IN_GALLERY"

    goto :goto_0

    .line 122
    :pswitch_14
    const-string v0, "IMAGES_FETCH_LOG_PARAM_IS_IMAGEVIEW_VISIBLE"

    goto :goto_0

    .line 124
    :pswitch_15
    const-string v0, "IMAGES_FETCH_LOG_PARAM_BACKGROUND_RESOURCE_ID_EXISTS"

    goto :goto_0

    .line 126
    :pswitch_16
    const-string v0, "IMAGES_FETCH_LOG_PARAM_IMAGESPEC_DRAWABLE_EXISTS"

    goto :goto_0

    .line 128
    :pswitch_17
    const-string v0, "IMAGES_FETCH_LOG_PARAM_DRAWABLE_FROM_FETCH_IMAGE_PARAMS"

    goto :goto_0

    .line 130
    :pswitch_18
    const-string v0, "IMAGES_FETCH_LOG_PARAM_IMAGESPEC_RESOURCE_ID_EXISTS"

    goto :goto_0

    .line 132
    :pswitch_19
    const-string v0, "IMAGES_FETCH_LOG_PARAM_URI_KEY"

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
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
    .end packed-switch
.end method
