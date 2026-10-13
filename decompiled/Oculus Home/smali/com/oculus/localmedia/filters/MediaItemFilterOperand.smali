.class public final enum Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
.super Ljava/lang/Enum;
.source "MediaItemFilterOperand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/localmedia/filters/MediaItemFilterOperand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

.field public static final enum DIFFERENT:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

.field public static final enum EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

.field public static final enum GREATER:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

.field public static final enum GREATER_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

.field public static final enum LESS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

.field public static final enum LESS_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

.field public static final enum UNKNOWN:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->UNKNOWN:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 7
    new-instance v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v4}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 8
    new-instance v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    const-string v1, "DIFFERENT"

    invoke-direct {v0, v1, v5}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->DIFFERENT:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 9
    new-instance v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    const-string v1, "GREATER"

    invoke-direct {v0, v1, v6}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 10
    new-instance v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    const-string v1, "GREATER_OR_EQUALS"

    invoke-direct {v0, v1, v7}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 11
    new-instance v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    const-string v1, "LESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 12
    new-instance v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    const-string v1, "LESS_OR_EQUALS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    sget-object v1, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->UNKNOWN:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->DIFFERENT:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->$VALUES:[Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static evaluate(Lcom/oculus/localmedia/filters/MediaItemFilterOperand;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3
    .param p0, "operand"    # Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .param p1, "value"    # Ljava/lang/Comparable;
    .param p2, "compareTo"    # Ljava/lang/Comparable;

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 16
    .local v0, "compare":I
    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne p0, v2, :cond_1

    if-nez v0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v1

    .line 17
    :cond_1
    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne p0, v2, :cond_2

    if-gtz v0, :cond_0

    .line 18
    :cond_2
    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne p0, v2, :cond_3

    if-gez v0, :cond_0

    .line 19
    :cond_3
    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne p0, v2, :cond_4

    if-ltz v0, :cond_0

    .line 20
    :cond_4
    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne p0, v2, :cond_5

    if-lez v0, :cond_0

    .line 21
    :cond_5
    sget-object v2, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->DIFFERENT:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    if-ne p0, v2, :cond_6

    if-nez v0, :cond_0

    .line 22
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .locals 1
    .param p0, "operand"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    .line 39
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "!="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->DIFFERENT:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    goto :goto_0

    .line 30
    :cond_1
    const-string v0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, ">="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->GREATER_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "<"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    goto :goto_0

    .line 36
    :cond_4
    const-string v0, "<="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->LESS_OR_EQUALS:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    goto :goto_0

    .line 39
    :cond_5
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->UNKNOWN:Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    return-object v0
.end method

.method public static values()[Lcom/oculus/localmedia/filters/MediaItemFilterOperand;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->$VALUES:[Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    invoke-virtual {v0}, [Lcom/oculus/localmedia/filters/MediaItemFilterOperand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/localmedia/filters/MediaItemFilterOperand;

    return-object v0
.end method
