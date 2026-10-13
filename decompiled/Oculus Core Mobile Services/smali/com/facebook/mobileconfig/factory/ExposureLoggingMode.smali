.class public final enum Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;
.super Ljava/lang/Enum;
.source "ExposureLoggingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

.field public static final enum DISABLED:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

.field public static final enum IMPLICIT:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

.field public static final enum IMPLICIT_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

.field public static final enum MANUAL:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

.field public static final enum MANUAL_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->DISABLED:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    .line 8
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    const-string v1, "IMPLICIT"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->IMPLICIT:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    .line 9
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->MANUAL:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    .line 10
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    const-string v1, "IMPLICIT_CAPTURE_STACK"

    const/16 v2, 0x81

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->IMPLICIT_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    .line 11
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    const-string v1, "MANUAL_CAPTURE_STACK"

    const/16 v2, 0x82

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->MANUAL_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->DISABLED:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->IMPLICIT:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->MANUAL:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->IMPLICIT_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->MANUAL_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->$VALUES:[Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->mValue:I

    .line 17
    return-void
.end method

.method public static valueOf(I)Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;
    .locals 1

    .prologue
    .line 24
    sparse-switch p0, :sswitch_data_0

    .line 34
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->DISABLED:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    :goto_0
    return-object v0

    .line 26
    :sswitch_0
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->IMPLICIT:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    goto :goto_0

    .line 28
    :sswitch_1
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->MANUAL:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    goto :goto_0

    .line 30
    :sswitch_2
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->IMPLICIT_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    goto :goto_0

    .line 32
    :sswitch_3
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->MANUAL_CAPTURE_STACK:Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    goto :goto_0

    .line 24
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->$VALUES:[Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    invoke-virtual {v0}, [Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->mValue:I

    return v0
.end method
