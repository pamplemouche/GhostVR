.class final enum Lcom/oculus/platform/OVRMicrophone$State;
.super Ljava/lang/Enum;
.source "OVRMicrophone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVRMicrophone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/platform/OVRMicrophone$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/platform/OVRMicrophone$State;

.field public static final enum Initialized:Lcom/oculus/platform/OVRMicrophone$State;

.field public static final enum Recording:Lcom/oculus/platform/OVRMicrophone$State;

.field public static final enum Stopping:Lcom/oculus/platform/OVRMicrophone$State;

.field public static final enum Uninitialized:Lcom/oculus/platform/OVRMicrophone$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/oculus/platform/OVRMicrophone$State;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1, v2}, Lcom/oculus/platform/OVRMicrophone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Uninitialized:Lcom/oculus/platform/OVRMicrophone$State;

    .line 26
    new-instance v0, Lcom/oculus/platform/OVRMicrophone$State;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v3}, Lcom/oculus/platform/OVRMicrophone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Initialized:Lcom/oculus/platform/OVRMicrophone$State;

    .line 28
    new-instance v0, Lcom/oculus/platform/OVRMicrophone$State;

    const-string v1, "Recording"

    invoke-direct {v0, v1, v4}, Lcom/oculus/platform/OVRMicrophone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Recording:Lcom/oculus/platform/OVRMicrophone$State;

    .line 32
    new-instance v0, Lcom/oculus/platform/OVRMicrophone$State;

    const-string v1, "Stopping"

    invoke-direct {v0, v1, v5}, Lcom/oculus/platform/OVRMicrophone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Stopping:Lcom/oculus/platform/OVRMicrophone$State;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/platform/OVRMicrophone$State;

    sget-object v1, Lcom/oculus/platform/OVRMicrophone$State;->Uninitialized:Lcom/oculus/platform/OVRMicrophone$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/platform/OVRMicrophone$State;->Initialized:Lcom/oculus/platform/OVRMicrophone$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/platform/OVRMicrophone$State;->Recording:Lcom/oculus/platform/OVRMicrophone$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/platform/OVRMicrophone$State;->Stopping:Lcom/oculus/platform/OVRMicrophone$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/platform/OVRMicrophone$State;->$VALUES:[Lcom/oculus/platform/OVRMicrophone$State;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/platform/OVRMicrophone$State;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/platform/OVRMicrophone$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/platform/OVRMicrophone$State;

    return-object v0
.end method

.method public static values()[Lcom/oculus/platform/OVRMicrophone$State;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/oculus/platform/OVRMicrophone$State;->$VALUES:[Lcom/oculus/platform/OVRMicrophone$State;

    invoke-virtual {v0}, [Lcom/oculus/platform/OVRMicrophone$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/platform/OVRMicrophone$State;

    return-object v0
.end method
