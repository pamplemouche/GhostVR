.class final enum Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;
.super Ljava/lang/Enum;
.source "FunnelData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

.field public static final enum ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

.field public static final enum END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

.field public static final enum START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 10
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    const/4 v2, 0x1

    const-string v3, "ACTION"

    invoke-direct {v0, v3, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 11
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    const/4 v3, 0x2

    const-string v4, "END"

    invoke-direct {v0, v4, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    sget-object v4, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;
    .locals 1

    .line 8
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    return-object p0
.end method

.method public static values()[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-virtual {v0}, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    return-object v0
.end method
