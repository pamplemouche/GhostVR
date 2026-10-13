.class public final enum Lcom/oculus/localmedia/MediaSmartQueryType;
.super Ljava/lang/Enum;
.source "MediaSmartQueryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/localmedia/MediaSmartQueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ALBUMS:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ALBUMS_180:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ALBUMS_360:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ALBUMS_3D:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ALBUMS_PHOTOS:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ALBUMS_VIDEOS:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ATOZ:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ATOZ_AF:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ATOZ_GK:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ATOZ_LP:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ATOZ_QU:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ATOZ_VZ:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum RECENT:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum RECENT_LAST_MONTH:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum RECENT_LAST_WEEK:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum RECENT_LAST_YEAR:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum RECENT_OLDER:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum RECENT_TODAY:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum ROOT:Lcom/oculus/localmedia/MediaSmartQueryType;

.field public static final enum VR:Lcom/oculus/localmedia/MediaSmartQueryType;


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
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ROOT:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 8
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v4}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 9
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ATOZ"

    invoke-direct {v0, v1, v5}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 10
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ALBUMS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 11
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "VR"

    invoke-direct {v0, v1, v7}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->VR:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 13
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "RECENT_TODAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_TODAY:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 14
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "RECENT_LAST_WEEK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_WEEK:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 15
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "RECENT_LAST_MONTH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_MONTH:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 16
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "RECENT_LAST_YEAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_YEAR:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 17
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "RECENT_OLDER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_OLDER:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 19
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ATOZ_AF"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_AF:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 20
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ATOZ_GK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_GK:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 21
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ATOZ_LP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_LP:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 22
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ATOZ_QU"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_QU:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 23
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ATOZ_VZ"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_VZ:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 25
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ALBUMS_PHOTOS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_PHOTOS:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 26
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ALBUMS_VIDEOS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_VIDEOS:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 27
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ALBUMS_360"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_360:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 28
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ALBUMS_180"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_180:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 29
    new-instance v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    const-string v1, "ALBUMS_3D"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/oculus/localmedia/MediaSmartQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_3D:Lcom/oculus/localmedia/MediaSmartQueryType;

    .line 5
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/oculus/localmedia/MediaSmartQueryType;

    sget-object v1, Lcom/oculus/localmedia/MediaSmartQueryType;->ROOT:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/localmedia/MediaSmartQueryType;->VR:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_TODAY:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_WEEK:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_MONTH:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_YEAR:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_OLDER:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_AF:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_GK:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_LP:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_QU:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_VZ:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_PHOTOS:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_VIDEOS:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_360:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_180:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_3D:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->$VALUES:[Lcom/oculus/localmedia/MediaSmartQueryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSmartQueryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaSmartQueryType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/localmedia/MediaSmartQueryType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->$VALUES:[Lcom/oculus/localmedia/MediaSmartQueryType;

    invoke-virtual {v0}, [Lcom/oculus/localmedia/MediaSmartQueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/localmedia/MediaSmartQueryType;

    return-object v0
.end method
