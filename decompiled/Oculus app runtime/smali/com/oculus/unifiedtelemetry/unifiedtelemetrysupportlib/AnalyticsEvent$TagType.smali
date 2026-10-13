.class final enum Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

.field public static final enum EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

.field public static final enum HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

.field public static final enum LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

.field public static final enum LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

.field public static final enum LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

.field public static final enum NT_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

.field public static final enum USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v1, 0x0

    const-string v2, "USL_ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    .line 22
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v2, 0x1

    const-string v3, "LOGGED_THROUGH_REACT_NATIVE"

    invoke-direct {v0, v3, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    .line 23
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v3, 0x2

    const-string v4, "NT_EVENT"

    invoke-direct {v0, v4, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->NT_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    .line 24
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v4, 0x3

    const-string v5, "LOGGED_THROUGH_XPLAT"

    invoke-direct {v0, v5, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    .line 25
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v5, 0x4

    const-string v6, "HAS_DOWNLOADED_SAMPLING_POLICY"

    invoke-direct {v0, v6, v5}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    .line 26
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v6, 0x5

    const-string v7, "EVENT_IN_SAMPLING_CONFIG"

    invoke-direct {v0, v7, v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    .line 27
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v7, 0x6

    const-string v8, "LOCAL_PROFILING_EVENT"

    invoke-direct {v0, v8, v7}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    const/4 v0, 0x7

    .line 20
    new-array v0, v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    sget-object v8, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->NT_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;
    .locals 1

    .line 20
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v0}, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    return-object v0
.end method
