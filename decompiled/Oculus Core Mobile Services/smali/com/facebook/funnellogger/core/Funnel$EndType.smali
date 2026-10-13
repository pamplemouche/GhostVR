.class public final enum Lcom/facebook/funnellogger/core/Funnel$EndType;
.super Ljava/lang/Enum;
.source "Funnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/funnellogger/core/Funnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/funnellogger/core/Funnel$EndType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/funnellogger/core/Funnel$EndType;

.field public static final enum ACTIONS_FULL:Lcom/facebook/funnellogger/core/Funnel$EndType;

.field public static final enum EXPLICIT:Lcom/facebook/funnellogger/core/Funnel$EndType;

.field public static final enum RESTART:Lcom/facebook/funnellogger/core/Funnel$EndType;

.field public static final enum SESSION_END:Lcom/facebook/funnellogger/core/Funnel$EndType;

.field public static final enum TIMEOUT:Lcom/facebook/funnellogger/core/Funnel$EndType;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$EndType;

    const-string v1, "EXPLICIT"

    const-string v2, "explicit"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/funnellogger/core/Funnel$EndType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->EXPLICIT:Lcom/facebook/funnellogger/core/Funnel$EndType;

    .line 225
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$EndType;

    const-string v1, "TIMEOUT"

    const-string v2, "timeout"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/funnellogger/core/Funnel$EndType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->TIMEOUT:Lcom/facebook/funnellogger/core/Funnel$EndType;

    .line 226
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$EndType;

    const-string v1, "SESSION_END"

    const-string v2, "session_end"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/funnellogger/core/Funnel$EndType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->SESSION_END:Lcom/facebook/funnellogger/core/Funnel$EndType;

    .line 227
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$EndType;

    const-string v1, "RESTART"

    const-string v2, "restart"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/funnellogger/core/Funnel$EndType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->RESTART:Lcom/facebook/funnellogger/core/Funnel$EndType;

    .line 228
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$EndType;

    const-string v1, "ACTIONS_FULL"

    const-string v2, "actions_full"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/funnellogger/core/Funnel$EndType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->ACTIONS_FULL:Lcom/facebook/funnellogger/core/Funnel$EndType;

    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/funnellogger/core/Funnel$EndType;

    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->EXPLICIT:Lcom/facebook/funnellogger/core/Funnel$EndType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->TIMEOUT:Lcom/facebook/funnellogger/core/Funnel$EndType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->SESSION_END:Lcom/facebook/funnellogger/core/Funnel$EndType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->RESTART:Lcom/facebook/funnellogger/core/Funnel$EndType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->ACTIONS_FULL:Lcom/facebook/funnellogger/core/Funnel$EndType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->$VALUES:[Lcom/facebook/funnellogger/core/Funnel$EndType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput-object p3, p0, Lcom/facebook/funnellogger/core/Funnel$EndType;->mType:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/funnellogger/core/Funnel$EndType;
    .locals 1

    .prologue
    .line 223
    const-class v0, Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel$EndType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/funnellogger/core/Funnel$EndType;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->$VALUES:[Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-virtual {v0}, [Lcom/facebook/funnellogger/core/Funnel$EndType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/funnellogger/core/Funnel$EndType;

    return-object v0
.end method


# virtual methods
.method tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$EndType;->mType:Ljava/lang/String;

    return-object v0
.end method
