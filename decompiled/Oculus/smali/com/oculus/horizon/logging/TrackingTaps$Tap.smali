.class public final enum Lcom/oculus/horizon/logging/TrackingTaps$Tap;
.super Ljava/lang/Enum;
.source "TrackingTaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/logging/TrackingTaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/logging/TrackingTaps$Tap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/logging/TrackingTaps$Tap;

.field public static final enum BROWSE_ALL_GENRE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

.field public static final enum BROWSE_ALL_PRICE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

.field public static final enum BROWSE_ALL_SORT:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

.field public static final enum FEED_STORE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

.field public static final enum LIBRARY_MOVE_ITEM:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

.field public static final enum LIBRARY_VIEW_DETAILS:Lcom/oculus/horizon/logging/TrackingTaps$Tap;


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
    new-instance v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    const-string v1, "BROWSE_ALL_GENRE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/logging/TrackingTaps$Tap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->BROWSE_ALL_GENRE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    .line 11
    new-instance v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    const-string v1, "BROWSE_ALL_PRICE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/logging/TrackingTaps$Tap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->BROWSE_ALL_PRICE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    .line 12
    new-instance v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    const-string v1, "BROWSE_ALL_SORT"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/logging/TrackingTaps$Tap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->BROWSE_ALL_SORT:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    .line 13
    new-instance v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    const-string v1, "FEED_STORE"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/logging/TrackingTaps$Tap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->FEED_STORE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    .line 14
    new-instance v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    const-string v1, "LIBRARY_VIEW_DETAILS"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/logging/TrackingTaps$Tap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->LIBRARY_VIEW_DETAILS:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    .line 15
    new-instance v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    const-string v1, "LIBRARY_MOVE_ITEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/logging/TrackingTaps$Tap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->LIBRARY_MOVE_ITEM:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->BROWSE_ALL_GENRE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->BROWSE_ALL_PRICE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->BROWSE_ALL_SORT:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->FEED_STORE:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->LIBRARY_VIEW_DETAILS:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->LIBRARY_MOVE_ITEM:Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->$VALUES:[Lcom/oculus/horizon/logging/TrackingTaps$Tap;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/logging/TrackingTaps$Tap;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/logging/TrackingTaps$Tap;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/horizon/logging/TrackingTaps$Tap;->$VALUES:[Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    invoke-virtual {v0}, [Lcom/oculus/horizon/logging/TrackingTaps$Tap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/logging/TrackingTaps$Tap;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
