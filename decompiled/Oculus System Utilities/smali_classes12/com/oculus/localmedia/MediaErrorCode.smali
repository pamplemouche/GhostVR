.class public final enum Lcom/oculus/localmedia/MediaErrorCode;
.super Ljava/lang/Enum;
.source "MediaErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/localmedia/MediaErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/localmedia/MediaErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/oculus/localmedia/MediaErrorCode;

.field public static final enum INVALID_TOKEN:Lcom/oculus/localmedia/MediaErrorCode;

.field public static final enum NONE:Lcom/oculus/localmedia/MediaErrorCode;

.field public static final enum NOT_AUTHORIZED:Lcom/oculus/localmedia/MediaErrorCode;

.field public static final enum READ_PERMISSION:Lcom/oculus/localmedia/MediaErrorCode;

.field public static final enum SERVER_DISABLED:Lcom/oculus/localmedia/MediaErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/oculus/localmedia/MediaErrorCode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/localmedia/MediaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaErrorCode;->NONE:Lcom/oculus/localmedia/MediaErrorCode;

    .line 11
    new-instance v0, Lcom/oculus/localmedia/MediaErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/oculus/localmedia/MediaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaErrorCode;->INTERNAL_ERROR:Lcom/oculus/localmedia/MediaErrorCode;

    .line 12
    new-instance v0, Lcom/oculus/localmedia/MediaErrorCode;

    const-string v1, "READ_PERMISSION"

    invoke-direct {v0, v1, v5}, Lcom/oculus/localmedia/MediaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaErrorCode;->READ_PERMISSION:Lcom/oculus/localmedia/MediaErrorCode;

    .line 13
    new-instance v0, Lcom/oculus/localmedia/MediaErrorCode;

    const-string v1, "SERVER_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/oculus/localmedia/MediaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaErrorCode;->SERVER_DISABLED:Lcom/oculus/localmedia/MediaErrorCode;

    .line 14
    new-instance v0, Lcom/oculus/localmedia/MediaErrorCode;

    const-string v1, "NOT_AUTHORIZED"

    invoke-direct {v0, v1, v7}, Lcom/oculus/localmedia/MediaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaErrorCode;->NOT_AUTHORIZED:Lcom/oculus/localmedia/MediaErrorCode;

    .line 15
    new-instance v0, Lcom/oculus/localmedia/MediaErrorCode;

    const-string v1, "INVALID_TOKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaErrorCode;->INVALID_TOKEN:Lcom/oculus/localmedia/MediaErrorCode;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/localmedia/MediaErrorCode;

    sget-object v1, Lcom/oculus/localmedia/MediaErrorCode;->NONE:Lcom/oculus/localmedia/MediaErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/localmedia/MediaErrorCode;->INTERNAL_ERROR:Lcom/oculus/localmedia/MediaErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/localmedia/MediaErrorCode;->READ_PERMISSION:Lcom/oculus/localmedia/MediaErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/localmedia/MediaErrorCode;->SERVER_DISABLED:Lcom/oculus/localmedia/MediaErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/localmedia/MediaErrorCode;->NOT_AUTHORIZED:Lcom/oculus/localmedia/MediaErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/localmedia/MediaErrorCode;->INVALID_TOKEN:Lcom/oculus/localmedia/MediaErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/localmedia/MediaErrorCode;->$VALUES:[Lcom/oculus/localmedia/MediaErrorCode;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromHttpStatusCode(I)Lcom/oculus/localmedia/MediaErrorCode;
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    .line 18
    const/16 v0, 0x191

    if-ne p0, v0, :cond_0

    .line 19
    sget-object v0, Lcom/oculus/localmedia/MediaErrorCode;->NOT_AUTHORIZED:Lcom/oculus/localmedia/MediaErrorCode;

    .line 25
    :goto_0
    return-object v0

    .line 20
    :cond_0
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_1

    .line 21
    sget-object v0, Lcom/oculus/localmedia/MediaErrorCode;->SERVER_DISABLED:Lcom/oculus/localmedia/MediaErrorCode;

    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x193

    if-ne p0, v0, :cond_2

    .line 23
    sget-object v0, Lcom/oculus/localmedia/MediaErrorCode;->READ_PERMISSION:Lcom/oculus/localmedia/MediaErrorCode;

    goto :goto_0

    .line 25
    :cond_2
    sget-object v0, Lcom/oculus/localmedia/MediaErrorCode;->INTERNAL_ERROR:Lcom/oculus/localmedia/MediaErrorCode;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/localmedia/MediaErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/oculus/localmedia/MediaErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/oculus/localmedia/MediaErrorCode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/localmedia/MediaErrorCode;->$VALUES:[Lcom/oculus/localmedia/MediaErrorCode;

    invoke-virtual {v0}, [Lcom/oculus/localmedia/MediaErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/localmedia/MediaErrorCode;

    return-object v0
.end method
