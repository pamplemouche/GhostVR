.class final enum Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;
.super Ljava/lang/Enum;
.source "PlatformActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/systemactivities/PlatformActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

.field public static final enum CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

.field public static final enum CONNECTING:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

.field public static final enum NOT_CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 106
    new-instance v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    .line 107
    new-instance v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    const-string v1, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTING:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    .line 108
    new-instance v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    const-string v1, "NOT_CONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    const/4 v0, 0x3

    .line 105
    new-array v0, v0, [Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTING:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->$VALUES:[Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;
    .locals 1

    .line 105
    const-class v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;
    .locals 1

    .line 105
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->$VALUES:[Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    invoke-virtual {v0}, [Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    return-object v0
.end method
