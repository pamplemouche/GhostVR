.class public final enum Lcom/facebook/rti/common/util/NetworkCategory$Type;
.super Ljava/lang/Enum;
.source "NetworkCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/util/NetworkCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/common/util/NetworkCategory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum MOBILE_2G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum MOBILE_3G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum MOBILE_4G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum MOBILE_OTHER:Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum NoNetwork:Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum Other:Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum UNKNOWN:Lcom/facebook/rti/common/util/NetworkCategory$Type;

.field public static final enum WIFI:Lcom/facebook/rti/common/util/NetworkCategory$Type;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->UNKNOWN:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 13
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "NoNetwork"

    const-string v2, "NoNetwork"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->NoNetwork:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 14
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "WIFI"

    const-string v2, "Wifi"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->WIFI:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 15
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "MOBILE_2G"

    const-string v2, "Cell_2G"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_2G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 16
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "MOBILE_3G"

    const-string v2, "Cell_3G"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_3G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 17
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "MOBILE_4G"

    const/4 v2, 0x5

    const-string v3, "Cell_4G"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_4G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 18
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "MOBILE_OTHER"

    const/4 v2, 0x6

    const-string v3, "Cell_other"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_OTHER:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 19
    new-instance v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    const-string v1, "Other"

    const/4 v2, 0x7

    const-string v3, "Other"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/common/util/NetworkCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->Other:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/rti/common/util/NetworkCategory$Type;

    sget-object v1, Lcom/facebook/rti/common/util/NetworkCategory$Type;->UNKNOWN:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/common/util/NetworkCategory$Type;->NoNetwork:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/common/util/NetworkCategory$Type;->WIFI:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_2G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_3G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_4G:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/common/util/NetworkCategory$Type;->MOBILE_OTHER:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/common/util/NetworkCategory$Type;->Other:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->$VALUES:[Lcom/facebook/rti/common/util/NetworkCategory$Type;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/common/util/NetworkCategory$Type;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/common/util/NetworkCategory$Type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->$VALUES:[Lcom/facebook/rti/common/util/NetworkCategory$Type;

    invoke-virtual {v0}, [Lcom/facebook/rti/common/util/NetworkCategory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/common/util/NetworkCategory$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->name:Ljava/lang/String;

    return-object v0
.end method
