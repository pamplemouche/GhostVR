.class public Lcom/facebook/common/dextricks/DalvikConstants;
.super Ljava/lang/Object;
.source "DalvikConstants.java"


# static fields
.field public static final FB4A_LINEAR_ALLOC_BUFFER_SIZE:I = 0x800000

.field public static FB_REDEX_COLD_START_SET_DEX_COUNT:I = 0x0

.field public static FB_REDEX_SCROLL_SET_DEX_COUNT:I = 0x0

.field public static FB_REDEX_VERIFY_NONE_ENABLED:Z = false

.field public static final MESSENGER_LINEAR_ALLOC_BUFFER_SIZE:I = 0x400000

.field public static final SAMPLE_APP_LINEAR_ALLOC_BUFFER_SIZE:I = 0x400000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x3e8

    .line 17
    sput v0, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_COLD_START_SET_DEX_COUNT:I

    .line 22
    sput v0, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_SCROLL_SET_DEX_COUNT:I

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_VERIFY_NONE_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
