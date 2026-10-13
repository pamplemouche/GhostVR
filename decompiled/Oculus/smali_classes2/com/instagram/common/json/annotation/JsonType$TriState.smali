.class public final enum Lcom/instagram/common/json/annotation/JsonType$TriState;
.super Ljava/lang/Enum;
.source "JsonType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instagram/common/json/annotation/JsonType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/common/json/annotation/JsonType$TriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/common/json/annotation/JsonType$TriState;

.field public static final enum DEFAULT:Lcom/instagram/common/json/annotation/JsonType$TriState;

.field public static final enum NO:Lcom/instagram/common/json/annotation/JsonType$TriState;

.field public static final enum YES:Lcom/instagram/common/json/annotation/JsonType$TriState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/instagram/common/json/annotation/JsonType$TriState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/json/annotation/JsonType$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/json/annotation/JsonType$TriState;->DEFAULT:Lcom/instagram/common/json/annotation/JsonType$TriState;

    .line 24
    new-instance v0, Lcom/instagram/common/json/annotation/JsonType$TriState;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Lcom/instagram/common/json/annotation/JsonType$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/json/annotation/JsonType$TriState;->YES:Lcom/instagram/common/json/annotation/JsonType$TriState;

    .line 25
    new-instance v0, Lcom/instagram/common/json/annotation/JsonType$TriState;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4}, Lcom/instagram/common/json/annotation/JsonType$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/json/annotation/JsonType$TriState;->NO:Lcom/instagram/common/json/annotation/JsonType$TriState;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/common/json/annotation/JsonType$TriState;

    sget-object v1, Lcom/instagram/common/json/annotation/JsonType$TriState;->DEFAULT:Lcom/instagram/common/json/annotation/JsonType$TriState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/common/json/annotation/JsonType$TriState;->YES:Lcom/instagram/common/json/annotation/JsonType$TriState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/common/json/annotation/JsonType$TriState;->NO:Lcom/instagram/common/json/annotation/JsonType$TriState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/common/json/annotation/JsonType$TriState;->$VALUES:[Lcom/instagram/common/json/annotation/JsonType$TriState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/common/json/annotation/JsonType$TriState;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/instagram/common/json/annotation/JsonType$TriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/json/annotation/JsonType$TriState;

    return-object v0
.end method

.method public static values()[Lcom/instagram/common/json/annotation/JsonType$TriState;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/instagram/common/json/annotation/JsonType$TriState;->$VALUES:[Lcom/instagram/common/json/annotation/JsonType$TriState;

    invoke-virtual {v0}, [Lcom/instagram/common/json/annotation/JsonType$TriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/common/json/annotation/JsonType$TriState;

    return-object v0
.end method
