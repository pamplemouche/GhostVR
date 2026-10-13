.class final enum Lcom/oculus/horizon/bluetooth/UpdateService$Reason;
.super Ljava/lang/Enum;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/bluetooth/UpdateService$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

.field public static final enum UNABLE_TO_CONNECT:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

.field public static final enum UNABLE_TO_VERIFY:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

.field public static final enum UPDATE_STILL_AVAILABLE:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    const-string v1, "UNABLE_TO_CONNECT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UNABLE_TO_CONNECT:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    .line 90
    new-instance v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    const-string v1, "UPDATE_STILL_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UPDATE_STILL_AVAILABLE:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    .line 91
    new-instance v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    const-string v1, "UNABLE_TO_VERIFY"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UNABLE_TO_VERIFY:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    sget-object v1, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UNABLE_TO_CONNECT:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UPDATE_STILL_AVAILABLE:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UNABLE_TO_VERIFY:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->$VALUES:[Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/bluetooth/UpdateService$Reason;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/bluetooth/UpdateService$Reason;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->$VALUES:[Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    invoke-virtual {v0}, [Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
