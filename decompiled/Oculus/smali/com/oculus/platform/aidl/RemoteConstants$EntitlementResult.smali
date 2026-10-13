.class public final enum Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;
.super Ljava/lang/Enum;
.source "RemoteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/aidl/RemoteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntitlementResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

.field public static final enum ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

.field public static final enum EXCEPTION:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

.field public static final enum NOT_ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

.field public static final enum NOT_LOGGED_IN:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

.field public static final enum NOT_VR_SIGNED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    const-string v1, "EXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->EXCEPTION:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    .line 9
    new-instance v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    const-string v1, "ENTITLED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    .line 10
    new-instance v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    const-string v1, "NOT_ENTITLED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    .line 11
    new-instance v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    const-string v1, "NOT_LOGGED_IN"

    invoke-direct {v0, v1, v5}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_LOGGED_IN:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    .line 12
    new-instance v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    const-string v1, "NOT_VR_SIGNED"

    invoke-direct {v0, v1, v6}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_VR_SIGNED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    sget-object v1, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->EXCEPTION:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_LOGGED_IN:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_VR_SIGNED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->$VALUES:[Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    return-object v0
.end method

.method public static values()[Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->$VALUES:[Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    invoke-virtual {v0}, [Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    return-object v0
.end method
