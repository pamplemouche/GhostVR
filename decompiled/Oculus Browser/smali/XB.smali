.class public final enum LXB;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum w:LXB;

.field public static final enum x:LXB;

.field public static final synthetic y:[LXB;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LXB;

    const-string v1, "REGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LXB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXB;->w:LXB;

    .line 2
    new-instance v0, LXB;

    const-string v1, "UNREGISTERED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LXB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXB;->x:LXB;

    const/4 v1, 0x2

    new-array v1, v1, [LXB;

    .line 3
    sget-object v4, LXB;->w:LXB;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, LXB;->y:[LXB;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LXB;
    .locals 1

    .line 1
    sget-object v0, LXB;->y:[LXB;

    invoke-virtual {v0}, [LXB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LXB;

    return-object v0
.end method
