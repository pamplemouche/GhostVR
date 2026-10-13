.class public final enum Lcom/oculus/localmedia/MediaSort;
.super Ljava/lang/Enum;
.source "MediaSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/localmedia/MediaSort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/localmedia/MediaSort;

.field public static final enum DATE:Lcom/oculus/localmedia/MediaSort;

.field public static final enum DURATION:Lcom/oculus/localmedia/MediaSort;

.field public static final enum NAME:Lcom/oculus/localmedia/MediaSort;

.field public static final enum SIZE:Lcom/oculus/localmedia/MediaSort;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/oculus/localmedia/MediaSort;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    .line 7
    new-instance v0, Lcom/oculus/localmedia/MediaSort;

    const-string v1, "DATE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/localmedia/MediaSort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSort;->DATE:Lcom/oculus/localmedia/MediaSort;

    .line 8
    new-instance v0, Lcom/oculus/localmedia/MediaSort;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v4}, Lcom/oculus/localmedia/MediaSort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSort;->DURATION:Lcom/oculus/localmedia/MediaSort;

    .line 9
    new-instance v0, Lcom/oculus/localmedia/MediaSort;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v5}, Lcom/oculus/localmedia/MediaSort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSort;->SIZE:Lcom/oculus/localmedia/MediaSort;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/localmedia/MediaSort;

    sget-object v1, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/localmedia/MediaSort;->DATE:Lcom/oculus/localmedia/MediaSort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/localmedia/MediaSort;->DURATION:Lcom/oculus/localmedia/MediaSort;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/localmedia/MediaSort;->SIZE:Lcom/oculus/localmedia/MediaSort;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/localmedia/MediaSort;->$VALUES:[Lcom/oculus/localmedia/MediaSort;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSort;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/localmedia/MediaSort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaSort;

    return-object v0
.end method

.method public static values()[Lcom/oculus/localmedia/MediaSort;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->$VALUES:[Lcom/oculus/localmedia/MediaSort;

    invoke-virtual {v0}, [Lcom/oculus/localmedia/MediaSort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/localmedia/MediaSort;

    return-object v0
.end method
