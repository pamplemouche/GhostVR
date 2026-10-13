.class public Lcom/facebook/quicklog/identifiers/MediaGallery;
.super Ljava/lang/Object;
.source "MediaGallery.java"


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
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 43
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 36
    :pswitch_1
    const-string v0, "MEDIA_GALLERY_LOAD_PHOTO_GALLERY_FROM_GALLERY_LAUNCHER"

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "MEDIA_GALLERY_LOAD_PHOTO_GALLERY_WITH_PHOTO_FROM_GALLERY_LAUNCHER"

    goto :goto_0

    .line 40
    :pswitch_3
    const-string v0, "MEDIA_GALLERY_LOAD_PHOTO_BY_SWIPING"

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
