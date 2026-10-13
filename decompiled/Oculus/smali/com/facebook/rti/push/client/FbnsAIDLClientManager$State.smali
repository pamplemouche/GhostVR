.class final enum Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
.super Ljava/lang/Enum;
.source "FbnsAIDLClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/push/client/FbnsAIDLClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

.field public static final enum BINDING:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

.field public static final enum BOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

.field public static final enum UNBOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    const-string v1, "UNBOUND"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->UNBOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    .line 55
    new-instance v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    const-string v1, "BINDING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BINDING:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    .line 61
    new-instance v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    const-string v1, "BOUND"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->UNBOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BINDING:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->BOUND:Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->$VALUES:[Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->$VALUES:[Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    invoke-virtual {v0}, [Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/push/client/FbnsAIDLClientManager$State;

    return-object v0
.end method
