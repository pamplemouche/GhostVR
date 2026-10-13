.class public final enum Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;
.super Ljava/lang/Enum;
.source "RemoteWipeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/remotewipe/RemoteWipeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteWipeRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

.field public static final enum COLD_START:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

.field public static final enum PUSH_NOTIFICATION:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    const-string v1, "COLD_START"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->COLD_START:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    .line 69
    new-instance v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    const-string v1, "PUSH_NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->PUSH_NOTIFICATION:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    sget-object v1, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->COLD_START:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->PUSH_NOTIFICATION:Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->$VALUES:[Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->$VALUES:[Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    invoke-virtual {v0}, [Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    return-object v0
.end method
