.class public Lcom/oculus/horizon/spherical/RenderThreadUtil;
.super Ljava/lang/Object;
.source "RenderThreadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineMappedAxes(I[I)V
    .locals 5

    .prologue
    const/16 v4, 0x82

    const/16 v3, 0x81

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 19
    packed-switch p0, :pswitch_data_0

    .line 22
    aput v0, p1, v1

    .line 23
    aput v2, p1, v0

    .line 38
    :goto_0
    return-void

    .line 26
    :pswitch_0
    aput v2, p1, v1

    .line 27
    aput v3, p1, v0

    goto :goto_0

    .line 30
    :pswitch_1
    aput v3, p1, v1

    .line 31
    aput v4, p1, v0

    goto :goto_0

    .line 34
    :pswitch_2
    aput v4, p1, v1

    .line 35
    aput v0, p1, v0

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static normalizeYaw(FZ)F
    .locals 3

    .prologue
    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x43b40000    # 360.0f

    .line 92
    rem-float v0, p0, v2

    .line 93
    if-eqz p1, :cond_0

    .line 94
    add-float/2addr v0, v1

    .line 96
    :cond_0
    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 97
    sub-float/2addr v0, v2

    .line 101
    :cond_1
    :goto_0
    return v0

    .line 98
    :cond_2
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 99
    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public static pixelsToDegrees(FIF)F
    .locals 2

    .prologue
    .line 49
    mul-float v0, p0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    return v0
.end method
