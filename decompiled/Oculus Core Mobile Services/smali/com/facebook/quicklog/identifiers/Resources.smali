.class public Lcom/facebook/quicklog/identifiers/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


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
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 67
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 48
    :pswitch_1
    const-string v0, "RESOURCES_FB_RESOURCES_LOADING_ASSET_STRINGS"

    goto :goto_0

    .line 50
    :pswitch_2
    const-string v0, "RESOURCES_FB_RESOURCES_LOADING_DOWNLOADED_STRINGS"

    goto :goto_0

    .line 52
    :pswitch_3
    const-string v0, "RESOURCES_FB_RESOURCES_DOWNLOAD_FILE"

    goto :goto_0

    .line 54
    :pswitch_4
    const-string v0, "RESOURCES_FB_RESOURCES_WAITING_ACTIVITY"

    goto :goto_0

    .line 56
    :pswitch_5
    const-string v0, "RESOURCES_FB_QT_RESOURCES_DOWNLOAD"

    goto :goto_0

    .line 58
    :pswitch_6
    const-string v0, "RESOURCES_FB_QT_RESOURCES_LOADING"

    goto :goto_0

    .line 60
    :pswitch_7
    const-string v0, "RESOURCES_FB_QT_RESOURCES_PROCESS_NEW"

    goto :goto_0

    .line 62
    :pswitch_8
    const-string v0, "RESOURCES_FB_REACT_NATIVE_RESOURCES_DOWNLOAD_FILE"

    goto :goto_0

    .line 64
    :pswitch_9
    const-string v0, "RESOURCES_FBT_LANGPACK_DOD_FETCH_ANDROID"

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
