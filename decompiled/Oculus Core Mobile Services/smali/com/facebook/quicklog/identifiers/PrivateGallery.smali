.class public Lcom/facebook/quicklog/identifiers/PrivateGallery;
.super Ljava/lang/Object;
.source "PrivateGallery.java"


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
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 45
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string v0, "PRIVATE_GALLERY_GALLERY_TAB_TTI"

    goto :goto_0

    .line 40
    :pswitch_1
    const-string v0, "PRIVATE_GALLERY_THUMBNAIL_TTI"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v0, "PRIVATE_GALLERY_PAGINATION_TTI"

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
