.class public final enum LGo0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LGo0;

.field public static final synthetic B:[LGo0;

.field public static final enum x:LGo0;

.field public static final enum y:LGo0;

.field public static final enum z:LGo0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LGo0;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "UNKNOWN_SOURCE"

    invoke-direct {v0, v3, v2, v1}, LGo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGo0;->x:LGo0;

    .line 2
    new-instance v0, LGo0;

    const/4 v1, 0x1

    const-string v3, "FROM_MENU"

    invoke-direct {v0, v3, v1, v2}, LGo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGo0;->y:LGo0;

    .line 3
    new-instance v0, LGo0;

    const/4 v3, 0x2

    const-string v4, "FROM_INFOBAR"

    invoke-direct {v0, v4, v3, v1}, LGo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGo0;->z:LGo0;

    .line 4
    new-instance v0, LGo0;

    const/4 v4, 0x3

    const-string v5, "FROM_NOTIFICATION"

    invoke-direct {v0, v5, v4, v3}, LGo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGo0;->A:LGo0;

    const/4 v5, 0x4

    new-array v5, v5, [LGo0;

    .line 5
    sget-object v6, LGo0;->x:LGo0;

    aput-object v6, v5, v2

    sget-object v2, LGo0;->y:LGo0;

    aput-object v2, v5, v1

    sget-object v1, LGo0;->z:LGo0;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, LGo0;->B:[LGo0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LGo0;->w:I

    return-void
.end method

.method public static a(I)LGo0;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LGo0;->A:LGo0;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LGo0;->z:LGo0;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LGo0;->y:LGo0;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LGo0;->x:LGo0;

    return-object p0
.end method

.method public static values()[LGo0;
    .locals 1

    .line 1
    sget-object v0, LGo0;->B:[LGo0;

    invoke-virtual {v0}, [LGo0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGo0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LGo0;->w:I

    return v0
.end method
