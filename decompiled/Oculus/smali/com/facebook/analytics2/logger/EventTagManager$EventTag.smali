.class final enum Lcom/facebook/analytics2/logger/EventTagManager$EventTag;
.super Ljava/lang/Enum;
.source "EventTagManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/EventTagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/analytics2/logger/EventTagManager$EventTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum IS_EVENT_IN_DOWNLOADED_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum IS_EVENT_IN_SESSIONLESS_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum IS_EVENT_LOGGED_DURING_STARTUP:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum IS_EVENT_LOGGED_UNSAMPLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum IS_NT_EVENTS:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum LOGGED_FROM_COMPONENT_SCRIPT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum LOGGED_FROM_VIEWPOINT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum LOGGED_THROUGH_REACT_NATIVE:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum LOGGED_THROUGH_XPLAT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

.field public static final enum USL_ENABLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;


# instance fields
.field private final mVal:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "USL_ENABLED"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->USL_ENABLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 64
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "LOGGED_THROUGH_REACT_NATIVE"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_REACT_NATIVE:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 65
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "IS_NT_EVENTS"

    const-wide/16 v2, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_NT_EVENTS:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 66
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "LOGGED_FROM_COMPONENT_SCRIPT"

    const-wide/16 v2, 0x8

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_COMPONENT_SCRIPT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 67
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "LOGGED_THROUGH_XPLAT"

    const-wide/16 v2, 0x10

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_XPLAT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 68
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "LOGGED_FROM_VIEWPOINT"

    const/4 v2, 0x5

    const-wide/16 v4, 0x20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_VIEWPOINT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 69
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "HAS_DOWNLOADED_SAMPLING_POLICY"

    const/4 v2, 0x6

    const-wide/16 v4, 0x40

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 70
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "IS_EVENT_IN_DOWNLOADED_SAMPLING_CONFIG"

    const/4 v2, 0x7

    const-wide/16 v4, 0x80

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_IN_DOWNLOADED_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 71
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "IS_EVENT_IN_SESSIONLESS_SAMPLING_CONFIG"

    const/16 v2, 0x8

    const-wide/16 v4, 0x100

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_IN_SESSIONLESS_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 72
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "IS_EVENT_LOGGED_DURING_STARTUP"

    const/16 v2, 0x9

    const-wide/16 v4, 0x200

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_LOGGED_DURING_STARTUP:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 73
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const-string v1, "IS_EVENT_LOGGED_UNSAMPLED"

    const/16 v2, 0xa

    const-wide/16 v4, 0x400

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_LOGGED_UNSAMPLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 61
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->USL_ENABLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_REACT_NATIVE:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_NT_EVENTS:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_COMPONENT_SCRIPT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_XPLAT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_VIEWPOINT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_IN_DOWNLOADED_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_IN_SESSIONLESS_SAMPLING_CONFIG:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_LOGGED_DURING_STARTUP:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_EVENT_LOGGED_UNSAMPLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->$VALUES:[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-wide p3, p0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->mVal:J

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventTagManager$EventTag;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    return-object v0
.end method

.method public static values()[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->$VALUES:[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, [Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    return-object v0
.end method


# virtual methods
.method getTag()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->mVal:J

    return-wide v0
.end method
