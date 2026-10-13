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
        "Ljava/lang/Enum<",
        "Lcom/facebook/analytics2/logger/EventTagManager$EventTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

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
    .locals 10

    .line 38
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const/4 v1, 0x0

    const-string v2, "USL_ENABLED"

    const-wide/16 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->USL_ENABLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 39
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const/4 v2, 0x1

    const-string v3, "LOGGED_THROUGH_REACT_NATIVE"

    const-wide/16 v4, 0x2

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_REACT_NATIVE:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 40
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const/4 v3, 0x2

    const-string v4, "IS_NT_EVENTS"

    const-wide/16 v5, 0x4

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_NT_EVENTS:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 41
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const/4 v4, 0x3

    const-string v5, "LOGGED_FROM_COMPONENT_SCRIPT"

    const-wide/16 v6, 0x8

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_COMPONENT_SCRIPT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 42
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const/4 v5, 0x4

    const-string v6, "LOGGED_THROUGH_XPLAT"

    const-wide/16 v7, 0x10

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_XPLAT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    .line 43
    new-instance v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const/4 v6, 0x5

    const-string v7, "LOGGED_FROM_VIEWPOINT"

    const-wide/16 v8, 0x20

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_VIEWPOINT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    const/4 v0, 0x6

    .line 36
    new-array v0, v0, [Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    sget-object v7, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->USL_ENABLED:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v7, v0, v1

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_REACT_NATIVE:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->IS_NT_EVENTS:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_COMPONENT_SCRIPT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_THROUGH_XPLAT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->LOGGED_FROM_VIEWPOINT:Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->$VALUES:[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-wide p3, p0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->mVal:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventTagManager$EventTag;
    .locals 1

    .line 36
    const-class v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    return-object p0
.end method

.method public static values()[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;
    .locals 1

    .line 36
    sget-object v0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->$VALUES:[Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    invoke-virtual {v0}, [Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/analytics2/logger/EventTagManager$EventTag;

    return-object v0
.end method


# virtual methods
.method getTag()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventTagManager$EventTag;->mVal:J

    return-wide v0
.end method
