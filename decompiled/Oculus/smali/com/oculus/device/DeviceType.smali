.class public final enum Lcom/oculus/device/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/device/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/device/DeviceType;

.field public static final enum Monterey:Lcom/oculus/device/DeviceType;

.field private static final PART_CODE_OFFSET:I = 0x3

.field public static final enum Pacific:Lcom/oculus/device/DeviceType;

.field public static final enum Unknown:Lcom/oculus/device/DeviceType;


# instance fields
.field public final hmdType:Ljava/lang/String;

.field public final partCode:Ljava/lang/String;

.field public final publicName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/oculus/device/DeviceType;

    const-string v1, "Unknown"

    const-string v3, ""

    const-string v4, "Unknown Device"

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/oculus/device/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/device/DeviceType;->Unknown:Lcom/oculus/device/DeviceType;

    .line 12
    new-instance v3, Lcom/oculus/device/DeviceType;

    const-string v4, "Pacific"

    const-string v6, "PH"

    const-string v7, "Oculus Go"

    const-string v8, "PACIFIC"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/device/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/oculus/device/DeviceType;->Pacific:Lcom/oculus/device/DeviceType;

    .line 13
    new-instance v3, Lcom/oculus/device/DeviceType;

    const-string v4, "Monterey"

    const-string v6, "SH"

    const-string v7, "Oculus Quest"

    const-string v8, "MONTEREY"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/oculus/device/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/oculus/device/DeviceType;->Monterey:Lcom/oculus/device/DeviceType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/device/DeviceType;

    sget-object v1, Lcom/oculus/device/DeviceType;->Unknown:Lcom/oculus/device/DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/device/DeviceType;->Pacific:Lcom/oculus/device/DeviceType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/device/DeviceType;->Monterey:Lcom/oculus/device/DeviceType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/oculus/device/DeviceType;->$VALUES:[Lcom/oculus/device/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/oculus/device/DeviceType;->partCode:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/oculus/device/DeviceType;->publicName:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/oculus/device/DeviceType;->hmdType:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static current()Lcom/oculus/device/DeviceType;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/device/DeviceType;->fromDeviceModel(Ljava/lang/String;)Lcom/oculus/device/DeviceType;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/oculus/device/DeviceType;->Unknown:Lcom/oculus/device/DeviceType;

    if-ne v0, v1, :cond_0

    .line 33
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/device/DeviceType;->fromSerialNumber(Ljava/lang/String;)Lcom/oculus/device/DeviceType;

    move-result-object v0

    .line 35
    :cond_0
    return-object v0
.end method

.method static fromDeviceModel(Ljava/lang/String;)Lcom/oculus/device/DeviceType;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 57
    sget-object v0, Lcom/oculus/device/DeviceType;->Unknown:Lcom/oculus/device/DeviceType;

    :goto_1
    return-object v0

    .line 45
    :sswitch_0
    const-string v1, "pacific"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "go"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "monterey_proto0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "monterey_proto1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "monterey"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 49
    :pswitch_0
    sget-object v0, Lcom/oculus/device/DeviceType;->Pacific:Lcom/oculus/device/DeviceType;

    goto :goto_1

    .line 55
    :pswitch_1
    sget-object v0, Lcom/oculus/device/DeviceType;->Monterey:Lcom/oculus/device/DeviceType;

    goto :goto_1

    .line 45
    :sswitch_data_0
    .sparse-switch
        -0x4f3744c2 -> :sswitch_2
        -0x4f3744c1 -> :sswitch_3
        -0x301ba177 -> :sswitch_0
        -0x1304d6f7 -> :sswitch_4
        0xce8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static fromSerialNumber(Ljava/lang/String;)Lcom/oculus/device/DeviceType;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 66
    sget-object v0, Lcom/oculus/device/DeviceType;->Unknown:Lcom/oculus/device/DeviceType;

    .line 78
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/oculus/device/DeviceType;->Pacific:Lcom/oculus/device/DeviceType;

    iget-object v1, v1, Lcom/oculus/device/DeviceType;->partCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PP"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    :cond_1
    sget-object v0, Lcom/oculus/device/DeviceType;->Pacific:Lcom/oculus/device/DeviceType;

    goto :goto_0

    .line 75
    :cond_2
    sget-object v1, Lcom/oculus/device/DeviceType;->Monterey:Lcom/oculus/device/DeviceType;

    iget-object v1, v1, Lcom/oculus/device/DeviceType;->partCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sget-object v0, Lcom/oculus/device/DeviceType;->Monterey:Lcom/oculus/device/DeviceType;

    goto :goto_0

    .line 78
    :cond_3
    sget-object v0, Lcom/oculus/device/DeviceType;->Unknown:Lcom/oculus/device/DeviceType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/device/DeviceType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/device/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/device/DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/device/DeviceType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/device/DeviceType;->$VALUES:[Lcom/oculus/device/DeviceType;

    invoke-virtual {v0}, [Lcom/oculus/device/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/device/DeviceType;

    return-object v0
.end method
