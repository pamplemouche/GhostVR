.class public final enum Lcom/facebook/common/util/UnitLocale;
.super Ljava/lang/Enum;
.source "UnitLocale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/util/UnitLocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/util/UnitLocale;

.field public static final enum IMPERIAL:Lcom/facebook/common/util/UnitLocale;

.field public static final enum METRIC:Lcom/facebook/common/util/UnitLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/facebook/common/util/UnitLocale;

    const-string v1, "METRIC"

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/util/UnitLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/UnitLocale;->METRIC:Lcom/facebook/common/util/UnitLocale;

    .line 10
    new-instance v0, Lcom/facebook/common/util/UnitLocale;

    const-string v1, "IMPERIAL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/common/util/UnitLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/UnitLocale;->IMPERIAL:Lcom/facebook/common/util/UnitLocale;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/common/util/UnitLocale;

    sget-object v1, Lcom/facebook/common/util/UnitLocale;->METRIC:Lcom/facebook/common/util/UnitLocale;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/common/util/UnitLocale;->IMPERIAL:Lcom/facebook/common/util/UnitLocale;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/common/util/UnitLocale;->$VALUES:[Lcom/facebook/common/util/UnitLocale;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/util/Locale;)Lcom/facebook/common/util/UnitLocale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/UnitLocale;->isImperial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/common/util/UnitLocale;->IMPERIAL:Lcom/facebook/common/util/UnitLocale;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/common/util/UnitLocale;->METRIC:Lcom/facebook/common/util/UnitLocale;

    goto :goto_0
.end method

.method public static getDefault()Lcom/facebook/common/util/UnitLocale;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/UnitLocale;->from(Ljava/util/Locale;)Lcom/facebook/common/util/UnitLocale;

    move-result-object v0

    return-object v0
.end method

.method private static isImperial(Ljava/lang/String;)Z
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LR"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GB"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MM"

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/util/UnitLocale;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/facebook/common/util/UnitLocale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/UnitLocale;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/util/UnitLocale;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/common/util/UnitLocale;->$VALUES:[Lcom/facebook/common/util/UnitLocale;

    invoke-virtual {v0}, [Lcom/facebook/common/util/UnitLocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/util/UnitLocale;

    return-object v0
.end method
