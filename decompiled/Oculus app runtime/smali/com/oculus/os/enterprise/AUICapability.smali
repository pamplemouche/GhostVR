.class public final enum Lcom/oculus/os/enterprise/AUICapability;
.super Ljava/lang/Enum;
.source "AUICapability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/os/enterprise/AUICapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum CASTING:Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum EXPLORE:Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum NOTIFICATIONS:Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum NUX:Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum SEE_ALL_SETTINGS:Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum SHARE:Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum SOCIAL:Lcom/oculus/os/enterprise/AUICapability;

.field public static final enum WIFI:Lcom/oculus/os/enterprise/AUICapability;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v1, 0x0

    const-string v2, "CASTING"

    invoke-direct {v0, v2, v1}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->CASTING:Lcom/oculus/os/enterprise/AUICapability;

    .line 7
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x1

    const-string v3, "EXPLORE"

    invoke-direct {v0, v3, v2}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->EXPLORE:Lcom/oculus/os/enterprise/AUICapability;

    .line 8
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v3, 0x2

    const-string v4, "NOTIFICATIONS"

    invoke-direct {v0, v4, v3}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->NOTIFICATIONS:Lcom/oculus/os/enterprise/AUICapability;

    .line 9
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v4, 0x3

    const-string v5, "NUX"

    invoke-direct {v0, v5, v4}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->NUX:Lcom/oculus/os/enterprise/AUICapability;

    .line 10
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v5, 0x4

    const-string v6, "SEE_ALL_SETTINGS"

    invoke-direct {v0, v6, v5}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->SEE_ALL_SETTINGS:Lcom/oculus/os/enterprise/AUICapability;

    .line 11
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v6, 0x5

    const-string v7, "SHARE"

    invoke-direct {v0, v7, v6}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->SHARE:Lcom/oculus/os/enterprise/AUICapability;

    .line 12
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v7, 0x6

    const-string v8, "SOCIAL"

    invoke-direct {v0, v8, v7}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->SOCIAL:Lcom/oculus/os/enterprise/AUICapability;

    .line 13
    new-instance v0, Lcom/oculus/os/enterprise/AUICapability;

    const/4 v8, 0x7

    const-string v9, "WIFI"

    invoke-direct {v0, v9, v8}, Lcom/oculus/os/enterprise/AUICapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->WIFI:Lcom/oculus/os/enterprise/AUICapability;

    const/16 v0, 0x8

    .line 5
    new-array v0, v0, [Lcom/oculus/os/enterprise/AUICapability;

    sget-object v9, Lcom/oculus/os/enterprise/AUICapability;->CASTING:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v9, v0, v1

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->EXPLORE:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->NOTIFICATIONS:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->NUX:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->SEE_ALL_SETTINGS:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->SHARE:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->SOCIAL:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->WIFI:Lcom/oculus/os/enterprise/AUICapability;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oculus/os/enterprise/AUICapability;->$VALUES:[Lcom/oculus/os/enterprise/AUICapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/AUICapability;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/os/enterprise/AUICapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/os/enterprise/AUICapability;

    return-object p0
.end method

.method public static values()[Lcom/oculus/os/enterprise/AUICapability;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/os/enterprise/AUICapability;->$VALUES:[Lcom/oculus/os/enterprise/AUICapability;

    invoke-virtual {v0}, [Lcom/oculus/os/enterprise/AUICapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/enterprise/AUICapability;

    return-object v0
.end method
