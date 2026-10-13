.class public final enum Lcom/instagram/common/json/annotation/JsonField$TypeMapping;
.super Ljava/lang/Enum;
.source "JsonField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instagram/common/json/annotation/JsonField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/common/json/annotation/JsonField$TypeMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

.field public static final enum COERCED:Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

.field public static final enum EXACT:Lcom/instagram/common/json/annotation/JsonField$TypeMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    const-string v1, "EXACT"

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;->EXACT:Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    new-instance v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    const-string v1, "COERCED"

    invoke-direct {v0, v1, v3}, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;->COERCED:Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    sget-object v1, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;->EXACT:Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;->COERCED:Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;->$VALUES:[Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/common/json/annotation/JsonField$TypeMapping;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    return-object v0
.end method

.method public static values()[Lcom/instagram/common/json/annotation/JsonField$TypeMapping;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/instagram/common/json/annotation/JsonField$TypeMapping;->$VALUES:[Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    invoke-virtual {v0}, [Lcom/instagram/common/json/annotation/JsonField$TypeMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/common/json/annotation/JsonField$TypeMapping;

    return-object v0
.end method
