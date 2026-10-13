.class public final enum LTM;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LTM;

.field public static final enum B:LTM;

.field public static final synthetic C:[LTM;

.field public static final enum x:LTM;

.field public static final enum y:LTM;

.field public static final enum z:LTM;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LTM;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LTM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTM;->x:LTM;

    .line 2
    new-instance v0, LTM;

    const/4 v2, 0x1

    const-string v3, "EQUALS"

    invoke-direct {v0, v3, v2, v2}, LTM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTM;->y:LTM;

    .line 3
    new-instance v0, LTM;

    const/4 v3, 0x2

    const-string v4, "NOT_EQUALS"

    invoke-direct {v0, v4, v3, v3}, LTM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTM;->z:LTM;

    .line 4
    new-instance v0, LTM;

    const/4 v4, 0x3

    const-string v5, "LESS_THAN"

    invoke-direct {v0, v5, v4, v4}, LTM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTM;->A:LTM;

    .line 5
    new-instance v0, LTM;

    const/4 v5, 0x4

    const-string v6, "GREATER_THAN"

    invoke-direct {v0, v6, v5, v5}, LTM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTM;->B:LTM;

    const/4 v6, 0x5

    new-array v6, v6, [LTM;

    .line 6
    sget-object v7, LTM;->x:LTM;

    aput-object v7, v6, v1

    sget-object v1, LTM;->y:LTM;

    aput-object v1, v6, v2

    sget-object v1, LTM;->z:LTM;

    aput-object v1, v6, v3

    sget-object v1, LTM;->A:LTM;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, LTM;->C:[LTM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LTM;->w:I

    return-void
.end method

.method public static a(I)LTM;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LTM;->B:LTM;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LTM;->A:LTM;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LTM;->z:LTM;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LTM;->y:LTM;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, LTM;->x:LTM;

    return-object p0
.end method

.method public static values()[LTM;
    .locals 1

    .line 1
    sget-object v0, LTM;->C:[LTM;

    invoke-virtual {v0}, [LTM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LTM;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LTM;->w:I

    return v0
.end method
