.class public final enum Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;
.super Ljava/lang/Enum;
.source "FunnelEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

.field public static final enum ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

.field public static final enum END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

.field public static final enum REGISTER:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

.field public static final enum START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->REGISTER:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    .line 26
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    .line 27
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    const-string v1, "ACTION"

    invoke-direct {v0, v1, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    .line 28
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->REGISTER:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    invoke-virtual {v0}, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    return-object v0
.end method
