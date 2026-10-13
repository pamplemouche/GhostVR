.class public final enum Lcom/oculus/video/projection/ImageStereoMode;
.super Ljava/lang/Enum;
.source "ImageStereoMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/video/projection/ImageStereoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/video/projection/ImageStereoMode;

.field public static final enum SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

.field public static final enum SM_BOTTOM_TOP_3D:Lcom/oculus/video/projection/ImageStereoMode;

.field public static final enum SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

.field public static final enum SM_RIGHT_LEFT_3D:Lcom/oculus/video/projection/ImageStereoMode;

.field public static final enum SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

.field public static final enum UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v1, 0x0

    const-string v2, "SM_2D"

    invoke-direct {v0, v2, v1}, Lcom/oculus/video/projection/ImageStereoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    .line 11
    new-instance v0, Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v2, 0x1

    const-string v3, "SM_LEFT_RIGHT_3D"

    invoke-direct {v0, v3, v2}, Lcom/oculus/video/projection/ImageStereoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    .line 12
    new-instance v0, Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v3, 0x2

    const-string v4, "SM_RIGHT_LEFT_3D"

    invoke-direct {v0, v4, v3}, Lcom/oculus/video/projection/ImageStereoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_RIGHT_LEFT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    .line 13
    new-instance v0, Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v4, 0x3

    const-string v5, "SM_TOP_BOTTOM_3D"

    invoke-direct {v0, v5, v4}, Lcom/oculus/video/projection/ImageStereoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    .line 14
    new-instance v0, Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v5, 0x4

    const-string v6, "SM_BOTTOM_TOP_3D"

    invoke-direct {v0, v6, v5}, Lcom/oculus/video/projection/ImageStereoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/projection/ImageStereoMode;->SM_BOTTOM_TOP_3D:Lcom/oculus/video/projection/ImageStereoMode;

    .line 15
    new-instance v0, Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN"

    invoke-direct {v0, v7, v6}, Lcom/oculus/video/projection/ImageStereoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    const/4 v0, 0x6

    .line 9
    new-array v0, v0, [Lcom/oculus/video/projection/ImageStereoMode;

    sget-object v7, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_RIGHT_LEFT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_BOTTOM_TOP_3D:Lcom/oculus/video/projection/ImageStereoMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/video/projection/ImageStereoMode;->$VALUES:[Lcom/oculus/video/projection/ImageStereoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromExoPlayer(I)Lcom/oculus/video/projection/ImageStereoMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 28
    sget-object p0, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    return-object p0

    .line 25
    :cond_2
    sget-object p0, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/video/projection/ImageStereoMode;
    .locals 1

    .line 9
    const-class v0, Lcom/oculus/video/projection/ImageStereoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/projection/ImageStereoMode;

    return-object p0
.end method

.method public static values()[Lcom/oculus/video/projection/ImageStereoMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/oculus/video/projection/ImageStereoMode;->$VALUES:[Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v0}, [Lcom/oculus/video/projection/ImageStereoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/video/projection/ImageStereoMode;

    return-object v0
.end method
