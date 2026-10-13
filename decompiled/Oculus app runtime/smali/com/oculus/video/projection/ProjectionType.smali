.class public final enum Lcom/oculus/video/projection/ProjectionType;
.super Ljava/lang/Enum;
.source "ProjectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/video/projection/ProjectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/video/projection/ProjectionType;

.field public static final enum BARREL:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum FISHEYE:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum FLAT_LEGACY_DEPRECATED:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum HALF_EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum MIXED360:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum RECT:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum ROTATED_CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum UNPADDED_CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

.field public static final enum VR180:Lcom/oculus/video/projection/ProjectionType;


# instance fields
.field public final key:Ljava/lang/String;

.field public final videoLayout:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 8
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v1, 0x0

    const-string v2, "RECT"

    const-string v3, "rect"

    invoke-direct {v0, v2, v1, v3, v2}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    .line 9
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v2, 0x1

    const-string v3, "CUBEMAP"

    const-string v4, "cubemap"

    const-string v5, "CUBEMAP_32"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    .line 10
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v3, 0x2

    const-string v4, "UNPADDED_CUBEMAP"

    const-string v5, "unpadded_cubemap"

    const-string v6, "UNPADDED_CUBEMAP_32"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->UNPADDED_CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    .line 11
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v4, 0x3

    const-string v5, "ROTATED_CUBEMAP"

    const-string v6, "rotated_cubemap"

    const-string v7, "ROTATED_CUBEMAP_23"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->ROTATED_CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    .line 12
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v5, 0x4

    const-string v6, "SPHERICAL"

    const-string v7, "EQUIRECTANGULAR"

    const-string v8, "equirectangular"

    invoke-direct {v0, v7, v5, v8, v6}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    .line 13
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v7, 0x5

    const-string v8, "HALF_EQUIRECTANGULAR"

    const-string v9, "half_equirectangular"

    invoke-direct {v0, v8, v7, v9, v6}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->HALF_EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    .line 14
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v8, 0x6

    const-string v9, "BARREL"

    const-string v10, "barrel"

    invoke-direct {v0, v9, v8, v10, v9}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->BARREL:Lcom/oculus/video/projection/ProjectionType;

    .line 15
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/4 v9, 0x7

    const-string v10, "VR180"

    const-string v11, "vr180"

    invoke-direct {v0, v10, v9, v11, v10}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->VR180:Lcom/oculus/video/projection/ProjectionType;

    .line 16
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const/16 v10, 0x8

    const-string v11, "FISHEYE"

    const-string v12, "fisheye"

    invoke-direct {v0, v11, v10, v12, v11}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->FISHEYE:Lcom/oculus/video/projection/ProjectionType;

    .line 17
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const-string v11, "MIXED360"

    const/16 v12, 0x9

    const-string v13, "mixed360"

    invoke-direct {v0, v11, v12, v13, v11}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->MIXED360:Lcom/oculus/video/projection/ProjectionType;

    .line 18
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const-string v11, "UNKNOWN"

    const/16 v12, 0xa

    const-string v13, "unknown"

    const-string v14, "UNKNOWN"

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    .line 20
    new-instance v0, Lcom/oculus/video/projection/ProjectionType;

    const-string v11, "FLAT_LEGACY_DEPRECATED"

    const/16 v12, 0xb

    const-string v13, "flat"

    invoke-direct {v0, v11, v12, v13, v6}, Lcom/oculus/video/projection/ProjectionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->FLAT_LEGACY_DEPRECATED:Lcom/oculus/video/projection/ProjectionType;

    const/16 v0, 0xc

    .line 6
    new-array v0, v0, [Lcom/oculus/video/projection/ProjectionType;

    sget-object v6, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->UNPADDED_CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->ROTATED_CUBEMAP:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->HALF_EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->BARREL:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->VR180:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->FISHEYE:Lcom/oculus/video/projection/ProjectionType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->MIXED360:Lcom/oculus/video/projection/ProjectionType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->FLAT_LEGACY_DEPRECATED:Lcom/oculus/video/projection/ProjectionType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/video/projection/ProjectionType;->$VALUES:[Lcom/oculus/video/projection/ProjectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/oculus/video/projection/ProjectionType;->key:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/oculus/video/projection/ProjectionType;->videoLayout:Ljava/lang/String;

    return-void
.end method

.method public static fromFBProjection(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;
    .locals 5

    if-nez p0, :cond_0

    .line 34
    sget-object p0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    return-object p0

    .line 36
    :cond_0
    invoke-static {}, Lcom/oculus/video/projection/ProjectionType;->values()[Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 37
    iget-object v4, v3, Lcom/oculus/video/projection/ProjectionType;->key:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_2
    sget-object p0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    return-object p0
.end method

.method public static fromVideoLayout(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;
    .locals 5

    if-nez p0, :cond_0

    .line 46
    sget-object p0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    return-object p0

    .line 48
    :cond_0
    invoke-static {}, Lcom/oculus/video/projection/ProjectionType;->values()[Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 49
    iget-object v4, v3, Lcom/oculus/video/projection/ProjectionType;->videoLayout:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    sget-object p0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;
    .locals 1

    .line 6
    const-class v0, Lcom/oculus/video/projection/ProjectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/projection/ProjectionType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/video/projection/ProjectionType;
    .locals 1

    .line 6
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->$VALUES:[Lcom/oculus/video/projection/ProjectionType;

    invoke-virtual {v0}, [Lcom/oculus/video/projection/ProjectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/video/projection/ProjectionType;

    return-object v0
.end method


# virtual methods
.method public getLayoutID()I
    .locals 2

    .line 59
    sget-object v0, Lcom/oculus/video/projection/ProjectionType$1;->$SwitchMap$com$oculus$video$projection$ProjectionType:[I

    invoke-virtual {p0}, Lcom/oculus/video/projection/ProjectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xf

    return v0

    :pswitch_0
    const/16 v0, 0x8

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/4 v0, 0x5

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_8
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oculus/video/projection/ProjectionType;->key:Ljava/lang/String;

    return-object v0
.end method
