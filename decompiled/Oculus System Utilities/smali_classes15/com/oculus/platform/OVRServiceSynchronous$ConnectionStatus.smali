.class final enum Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
.super Ljava/lang/Enum;
.source "OVRServiceSynchronous.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVRServiceSynchronous;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

.field public static final enum CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

.field public static final enum CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

.field public static final enum NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 38
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 39
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTING:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->$VALUES:[Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->$VALUES:[Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-virtual {v0}, [Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    return-object v0
.end method
