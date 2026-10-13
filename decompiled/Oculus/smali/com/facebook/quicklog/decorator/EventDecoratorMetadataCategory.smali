.class public Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;
.super Ljava/lang/Object;
.source "EventDecoratorMetadataCategory.java"


# static fields
.field public static final CPU_STATS:J

.field public static final CS_STATS:J

.field public static final DATA_USAGE:J

.field public static final DETAILED_MEMORY_STATS:J

.field public static final DEX_INFO:J

.field public static final IO_STATS:J

.field public static final LITHO_STATS:J

.field public static final MCC_STATS:J

.field public static final MEMORY_STATS:J

.field public static final MOBILEBOOST_USAGE:J

.field public static final NETWORK_DETAILED_INFO:J

.field public static final NETWORK_STATS:J

.field public static final NT_STATS:J

.field public static final STALL_TIME:J

.field public static final STARTUP_STATS:J

.field public static final THERMAL_STATS:J

.field public static final YOGA_STATS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->NETWORK_STATS:J

    .line 12
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->MEMORY_STATS:J

    .line 13
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->STALL_TIME:J

    .line 14
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->CPU_STATS:J

    .line 15
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->IO_STATS:J

    .line 16
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->DATA_USAGE:J

    .line 17
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->STARTUP_STATS:J

    .line 18
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->NETWORK_DETAILED_INFO:J

    .line 19
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->DETAILED_MEMORY_STATS:J

    .line 20
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->LITHO_STATS:J

    .line 21
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->CS_STATS:J

    .line 22
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->DEX_INFO:J

    .line 23
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->NT_STATS:J

    .line 24
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->THERMAL_STATS:J

    .line 25
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->YOGA_STATS:J

    .line 26
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->MCC_STATS:J

    .line 27
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->id(I)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->MOBILEBOOST_USAGE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final id(I)J
    .locals 3

    .prologue
    .line 30
    const-wide/16 v0, 0x1

    add-int/lit8 v2, p0, -0x1

    shl-long/2addr v0, v2

    return-wide v0
.end method
