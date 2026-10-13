.class public final enum LAS0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LAS0;

.field public static final enum B:LAS0;

.field public static final enum C:LAS0;

.field public static final enum D:LAS0;

.field public static final enum E:LAS0;

.field public static final synthetic F:[LAS0;

.field public static final enum x:LAS0;

.field public static final enum y:LAS0;

.field public static final enum z:LAS0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, LAS0;

    const/4 v1, 0x0

    const-string v2, "SINGLE"

    invoke-direct {v0, v2, v1, v1}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->x:LAS0;

    .line 2
    new-instance v0, LAS0;

    const/4 v2, 0x1

    const-string v3, "BOOLEAN_ARRAY"

    invoke-direct {v0, v3, v2, v2}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->y:LAS0;

    .line 3
    new-instance v0, LAS0;

    const/4 v3, 0x2

    const-string v4, "DOUBLE_ARRAY"

    invoke-direct {v0, v4, v3, v3}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->z:LAS0;

    .line 4
    new-instance v0, LAS0;

    const/4 v4, 0x3

    const-string v5, "INT_ARRAY"

    invoke-direct {v0, v5, v4, v4}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->A:LAS0;

    .line 5
    new-instance v0, LAS0;

    const/4 v5, 0x4

    const-string v6, "LONG_ARRAY"

    invoke-direct {v0, v6, v5, v5}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->B:LAS0;

    .line 6
    new-instance v0, LAS0;

    const/4 v6, 0x5

    const-string v7, "STRING_ARRAY"

    invoke-direct {v0, v7, v6, v6}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->C:LAS0;

    .line 7
    new-instance v0, LAS0;

    const/4 v7, 0x6

    const-string v8, "NULL"

    invoke-direct {v0, v8, v7, v7}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->D:LAS0;

    .line 8
    new-instance v0, LAS0;

    const/4 v8, -0x1

    const/4 v9, 0x7

    const-string v10, "UNRECOGNIZED"

    invoke-direct {v0, v10, v9, v8}, LAS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAS0;->E:LAS0;

    const/16 v8, 0x8

    new-array v8, v8, [LAS0;

    .line 9
    sget-object v10, LAS0;->x:LAS0;

    aput-object v10, v8, v1

    sget-object v1, LAS0;->y:LAS0;

    aput-object v1, v8, v2

    sget-object v1, LAS0;->z:LAS0;

    aput-object v1, v8, v3

    sget-object v1, LAS0;->A:LAS0;

    aput-object v1, v8, v4

    sget-object v1, LAS0;->B:LAS0;

    aput-object v1, v8, v5

    sget-object v1, LAS0;->C:LAS0;

    aput-object v1, v8, v6

    sget-object v1, LAS0;->D:LAS0;

    aput-object v1, v8, v7

    aput-object v0, v8, v9

    sput-object v8, LAS0;->F:[LAS0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LAS0;->w:I

    return-void
.end method

.method public static values()[LAS0;
    .locals 1

    .line 1
    sget-object v0, LAS0;->F:[LAS0;

    invoke-virtual {v0}, [LAS0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAS0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LAS0;->w:I

    return v0
.end method
