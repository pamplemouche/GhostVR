.class public final enum Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
.super Ljava/lang/Enum;
.source "OVRServiceSynchronous.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVRServiceSynchronous;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

.field public static final enum NOT_FOUND:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

.field public static final enum SIGNATURE_INVALID:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

.field public static final enum SIGNATURE_VERIFIED:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v2}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->NOT_FOUND:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    .line 102
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    const-string v1, "SIGNATURE_INVALID"

    invoke-direct {v0, v1, v3}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_INVALID:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    .line 103
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    const-string v1, "SIGNATURE_VERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_VERIFIED:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->NOT_FOUND:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_INVALID:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->SIGNATURE_VERIFIED:Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->$VALUES:[Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->$VALUES:[Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    invoke-virtual {v0}, [Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/platform/OVRServiceSynchronous$ServiceState;

    return-object v0
.end method
