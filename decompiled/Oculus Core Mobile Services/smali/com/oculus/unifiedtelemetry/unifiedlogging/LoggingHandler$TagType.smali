.class final enum Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;
.super Ljava/lang/Enum;
.source "LoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

.field public static final enum EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

.field public static final enum HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

.field public static final enum IS_NT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

.field public static final enum LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

.field public static final enum LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

.field public static final enum LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

.field public static final enum USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    const-string v1, "USL_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    .line 63
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    const-string v1, "LOGGED_THROUGH_REACT_NATIVE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    .line 64
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    const-string v1, "IS_NT_EVENTS"

    invoke-direct {v0, v1, v5}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->IS_NT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    .line 65
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    const-string v1, "LOGGED_THROUGH_XPLAT"

    invoke-direct {v0, v1, v6}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    .line 66
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    const-string v1, "HAS_DOWNLOADED_SAMPLING_POLICY"

    invoke-direct {v0, v1, v7}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    .line 67
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    const-string v1, "EVENT_IN_SAMPLING_CONFIG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    .line 68
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    const-string v1, "LOCAL_PROFILING_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->IS_NT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    invoke-virtual {v0}, [Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$TagType;

    return-object v0
.end method
