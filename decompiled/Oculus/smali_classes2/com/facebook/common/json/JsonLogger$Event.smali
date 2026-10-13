.class public final enum Lcom/facebook/common/json/JsonLogger$Event;
.super Ljava/lang/Enum;
.source "JsonLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/json/JsonLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/json/JsonLogger$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/json/JsonLogger$Event;

.field public static final enum DESERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;

.field public static final enum SERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/facebook/common/json/JsonLogger$Event;

    const-string v1, "SERIALIZATION"

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/json/JsonLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/json/JsonLogger$Event;->SERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;

    .line 9
    new-instance v0, Lcom/facebook/common/json/JsonLogger$Event;

    const-string v1, "DESERIALIZATION"

    invoke-direct {v0, v1, v3}, Lcom/facebook/common/json/JsonLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/json/JsonLogger$Event;->DESERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/common/json/JsonLogger$Event;

    sget-object v1, Lcom/facebook/common/json/JsonLogger$Event;->SERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/common/json/JsonLogger$Event;->DESERIALIZATION:Lcom/facebook/common/json/JsonLogger$Event;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/common/json/JsonLogger$Event;->$VALUES:[Lcom/facebook/common/json/JsonLogger$Event;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/json/JsonLogger$Event;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/facebook/common/json/JsonLogger$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/json/JsonLogger$Event;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/json/JsonLogger$Event;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/facebook/common/json/JsonLogger$Event;->$VALUES:[Lcom/facebook/common/json/JsonLogger$Event;

    invoke-virtual {v0}, [Lcom/facebook/common/json/JsonLogger$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/json/JsonLogger$Event;

    return-object v0
.end method
