.class public final enum Ll;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:Ll;

.field public static final synthetic B:[Ll;

.field public static final enum w:Ll;

.field public static final enum x:Ll;

.field public static final enum y:Ll;

.field public static final enum z:Ll;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ll;

    const/4 v1, 0x0

    const-string v2, "DESTROYED"

    invoke-direct {v0, v2, v1}, Ll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll;->w:Ll;

    .line 2
    new-instance v0, Ll;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, Ll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll;->x:Ll;

    .line 3
    new-instance v0, Ll;

    const/4 v3, 0x2

    const-string v4, "CREATED"

    invoke-direct {v0, v4, v3}, Ll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll;->y:Ll;

    .line 4
    new-instance v0, Ll;

    const/4 v4, 0x3

    const-string v5, "STARTED"

    invoke-direct {v0, v5, v4}, Ll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll;->z:Ll;

    .line 5
    new-instance v0, Ll;

    const/4 v5, 0x4

    const-string v6, "RESUMED"

    invoke-direct {v0, v6, v5}, Ll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll;->A:Ll;

    const/4 v6, 0x5

    new-array v6, v6, [Ll;

    .line 6
    sget-object v7, Ll;->w:Ll;

    aput-object v7, v6, v1

    sget-object v1, Ll;->x:Ll;

    aput-object v1, v6, v2

    sget-object v1, Ll;->y:Ll;

    aput-object v1, v6, v3

    sget-object v1, Ll;->z:Ll;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Ll;->B:[Ll;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ll;
    .locals 1

    .line 1
    sget-object v0, Ll;->B:[Ll;

    invoke-virtual {v0}, [Ll;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll;

    return-object v0
.end method
