.class public final enum Lcom/facebook/analytics2/logger/EventLogType;
.super Ljava/lang/Enum;
.source "EventLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/analytics2/logger/EventLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/analytics2/logger/EventLogType;

.field public static final enum CLIENT_EVENT:Lcom/facebook/analytics2/logger/EventLogType;

.field public static final enum EXPERIMENT:Lcom/facebook/analytics2/logger/EventLogType;


# instance fields
.field private final mExtraJsonKey:Ljava/lang/String;

.field private final mProtocolValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/facebook/analytics2/logger/EventLogType;

    const-string v1, "CLIENT_EVENT"

    const-string v2, "client_event"

    const-string v3, "extra"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/analytics2/logger/EventLogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventLogType;->CLIENT_EVENT:Lcom/facebook/analytics2/logger/EventLogType;

    .line 14
    new-instance v0, Lcom/facebook/analytics2/logger/EventLogType;

    const-string v1, "EXPERIMENT"

    const-string v2, "experiment"

    const-string v3, "result"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/analytics2/logger/EventLogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventLogType;->EXPERIMENT:Lcom/facebook/analytics2/logger/EventLogType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/analytics2/logger/EventLogType;

    sget-object v1, Lcom/facebook/analytics2/logger/EventLogType;->CLIENT_EVENT:Lcom/facebook/analytics2/logger/EventLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/analytics2/logger/EventLogType;->EXPERIMENT:Lcom/facebook/analytics2/logger/EventLogType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/analytics2/logger/EventLogType;->$VALUES:[Lcom/facebook/analytics2/logger/EventLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventLogType;->mProtocolValue:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventLogType;->mExtraJsonKey:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventLogType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/facebook/analytics2/logger/EventLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/EventLogType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/analytics2/logger/EventLogType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/analytics2/logger/EventLogType;->$VALUES:[Lcom/facebook/analytics2/logger/EventLogType;

    invoke-virtual {v0}, [Lcom/facebook/analytics2/logger/EventLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/analytics2/logger/EventLogType;

    return-object v0
.end method


# virtual methods
.method getExtraJsonKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventLogType;->mExtraJsonKey:Ljava/lang/String;

    return-object v0
.end method

.method getProtocolValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventLogType;->mProtocolValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventLogType;->mProtocolValue:Ljava/lang/String;

    return-object v0
.end method
