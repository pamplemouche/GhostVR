.class public Lcom/facebook/quicklog/identifiers/AndroidImagesInfra;
.super Ljava/lang/Object;
.source "AndroidImagesInfra.java"


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

    .line 107
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "ANDROID_IMAGES_INFRA_UNKNOWN"

    goto :goto_0

    .line 72
    :pswitch_2
    const-string v0, "ANDROID_IMAGES_INFRA_NATIVE_NEWSFEED"

    goto :goto_0

    .line 74
    :pswitch_3
    const-string v0, "ANDROID_IMAGES_INFRA_PROFILE_IMAGE_LOAD"

    goto :goto_0

    .line 76
    :pswitch_4
    const-string v0, "ANDROID_IMAGES_INFRA_STORY_IMAGE_LOAD"

    goto :goto_0

    .line 78
    :pswitch_5
    const-string v0, "ANDROID_IMAGES_INFRA_GROUP_IMAGE_LOAD"

    goto :goto_0

    .line 80
    :pswitch_6
    const-string v0, "ANDROID_IMAGES_INFRA_PAGES_IMAGE_LOAD"

    goto :goto_0

    .line 82
    :pswitch_7
    const-string v0, "ANDROID_IMAGES_INFRA_STORY_VIEWER_IMAGE_LOAD"

    goto :goto_0

    .line 84
    :pswitch_8
    const-string v0, "ANDROID_IMAGES_INFRA_NATIVE_TEMPLATES_IMAGE_LOAD"

    goto :goto_0

    .line 86
    :pswitch_9
    const-string v0, "ANDROID_IMAGES_INFRA_ACTOR_GATEWAY_IMAGE_LOAD"

    goto :goto_0

    .line 88
    :pswitch_a
    const-string v0, "ANDROID_IMAGES_INFRA_MESSENGER_STORY_PHOTO_LOAD"

    goto :goto_0

    .line 90
    :pswitch_b
    const-string v0, "ANDROID_IMAGES_INFRA_MESSENGER_THREAD_PHOTO_LOAD"

    goto :goto_0

    .line 92
    :pswitch_c
    const-string v0, "ANDROID_IMAGES_INFRA_GROUP_INTEREST_WIZARD_IMAGE_LOAD"

    goto :goto_0

    .line 94
    :pswitch_d
    const-string v0, "ANDROID_IMAGES_INFRA_CAMERA_ROLL_IMAGE_LOAD"

    goto :goto_0

    .line 96
    :pswitch_e
    const-string v0, "ANDROID_IMAGES_INFRA_SEARCH_VOYAGER_IMAGE_LOAD"

    goto :goto_0

    .line 98
    :pswitch_f
    const-string v0, "ANDROID_IMAGES_INFRA_IMAGE_FETCH"

    goto :goto_0

    .line 100
    :pswitch_10
    const-string v0, "ANDROID_IMAGES_INFRA_SEARCH_IMAGE_LOAD"

    goto :goto_0

    .line 102
    :pswitch_11
    const-string v0, "ANDROID_IMAGES_INFRA_PHOTOS_FEED_IMAGE_LOAD"

    goto :goto_0

    .line 104
    :pswitch_12
    const-string v0, "ANDROID_IMAGES_INFRA_GEMSTONE_PROFILE_IMAGE_LOAD_ANDROID"

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method
