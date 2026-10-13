.class public enum LJG;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LJG;

.field public static final enum B:LJG;

.field public static final enum C:LJG;

.field public static final enum D:LJG;

.field public static final enum E:LJG;

.field public static final enum F:LJG;

.field public static final enum G:LJG;

.field public static final enum H:LJG;

.field public static final enum I:LJG;

.field public static final enum J:LJG;

.field public static final enum K:LJG;

.field public static final enum L:LJG;

.field public static final enum M:LJG;

.field public static final enum N:LJG;

.field public static final enum O:LJG;

.field public static final enum P:LJG;

.field public static final synthetic Q:[LJG;

.field public static final enum y:LJG;

.field public static final enum z:LJG;


# instance fields
.field public final w:LKG;

.field public final x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, LJG;

    sget-object v1, LKG;->z:LKG;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3, v1, v2}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->y:LJG;

    .line 2
    new-instance v0, LJG;

    sget-object v1, LKG;->y:LKG;

    const/4 v4, 0x5

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v2, v1, v4}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->z:LJG;

    .line 3
    new-instance v0, LJG;

    sget-object v1, LKG;->x:LKG;

    const/4 v5, 0x2

    const-string v6, "INT64"

    invoke-direct {v0, v6, v5, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->A:LJG;

    .line 4
    new-instance v0, LJG;

    sget-object v1, LKG;->x:LKG;

    const/4 v6, 0x3

    const-string v7, "UINT64"

    invoke-direct {v0, v7, v6, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->B:LJG;

    .line 5
    new-instance v0, LJG;

    sget-object v1, LKG;->w:LKG;

    const/4 v7, 0x4

    const-string v8, "INT32"

    invoke-direct {v0, v8, v7, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->C:LJG;

    .line 6
    new-instance v0, LJG;

    sget-object v1, LKG;->x:LKG;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v4, v1, v2}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->D:LJG;

    .line 7
    new-instance v0, LJG;

    sget-object v1, LKG;->w:LKG;

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v0, v9, v8, v1, v4}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->E:LJG;

    .line 8
    new-instance v0, LJG;

    sget-object v1, LKG;->A:LKG;

    const/4 v9, 0x7

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v9, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->F:LJG;

    .line 9
    new-instance v0, LFG;

    sget-object v1, LKG;->B:LKG;

    const/16 v10, 0x8

    const-string v11, "STRING"

    invoke-direct {v0, v11, v10, v1, v5}, LFG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->G:LJG;

    .line 10
    new-instance v0, LGG;

    sget-object v1, LKG;->E:LKG;

    const/16 v11, 0x9

    const-string v12, "GROUP"

    invoke-direct {v0, v12, v11, v1, v6}, LGG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->H:LJG;

    .line 11
    new-instance v0, LHG;

    sget-object v1, LKG;->E:LKG;

    const/16 v12, 0xa

    const-string v13, "MESSAGE"

    invoke-direct {v0, v13, v12, v1, v5}, LHG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->I:LJG;

    .line 12
    new-instance v0, LIG;

    sget-object v1, LKG;->C:LKG;

    const/16 v13, 0xb

    const-string v14, "BYTES"

    invoke-direct {v0, v14, v13, v1, v5}, LIG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->J:LJG;

    .line 13
    new-instance v0, LJG;

    sget-object v1, LKG;->w:LKG;

    const/16 v14, 0xc

    const-string v15, "UINT32"

    invoke-direct {v0, v15, v14, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->K:LJG;

    .line 14
    new-instance v0, LJG;

    sget-object v1, LKG;->D:LKG;

    const/16 v15, 0xd

    const-string v14, "ENUM"

    invoke-direct {v0, v14, v15, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->L:LJG;

    .line 15
    new-instance v0, LJG;

    sget-object v1, LKG;->w:LKG;

    const/16 v14, 0xe

    const-string v15, "SFIXED32"

    invoke-direct {v0, v15, v14, v1, v4}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->M:LJG;

    .line 16
    new-instance v0, LJG;

    sget-object v1, LKG;->x:LKG;

    const/16 v15, 0xf

    const-string v14, "SFIXED64"

    invoke-direct {v0, v14, v15, v1, v2}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->N:LJG;

    .line 17
    new-instance v0, LJG;

    sget-object v1, LKG;->w:LKG;

    const/16 v14, 0x10

    const-string v15, "SINT32"

    invoke-direct {v0, v15, v14, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->O:LJG;

    .line 18
    new-instance v0, LJG;

    sget-object v1, LKG;->x:LKG;

    const/16 v15, 0x11

    const-string v14, "SINT64"

    invoke-direct {v0, v14, v15, v1, v3}, LJG;-><init>(Ljava/lang/String;ILKG;I)V

    sput-object v0, LJG;->P:LJG;

    const/16 v1, 0x12

    new-array v1, v1, [LJG;

    .line 19
    sget-object v14, LJG;->y:LJG;

    aput-object v14, v1, v3

    sget-object v3, LJG;->z:LJG;

    aput-object v3, v1, v2

    sget-object v2, LJG;->A:LJG;

    aput-object v2, v1, v5

    sget-object v2, LJG;->B:LJG;

    aput-object v2, v1, v6

    sget-object v2, LJG;->C:LJG;

    aput-object v2, v1, v7

    sget-object v2, LJG;->D:LJG;

    aput-object v2, v1, v4

    sget-object v2, LJG;->E:LJG;

    aput-object v2, v1, v8

    sget-object v2, LJG;->F:LJG;

    aput-object v2, v1, v9

    sget-object v2, LJG;->G:LJG;

    aput-object v2, v1, v10

    sget-object v2, LJG;->H:LJG;

    aput-object v2, v1, v11

    sget-object v2, LJG;->I:LJG;

    aput-object v2, v1, v12

    sget-object v2, LJG;->J:LJG;

    aput-object v2, v1, v13

    sget-object v2, LJG;->K:LJG;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, LJG;->L:LJG;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, LJG;->M:LJG;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, LJG;->N:LJG;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, LJG;->O:LJG;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, LJG;->Q:[LJG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILKG;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, LJG;->w:LKG;

    .line 3
    iput p4, p0, LJG;->x:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILKG;ILEG;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, LJG;->w:LKG;

    .line 6
    iput p4, p0, LJG;->x:I

    return-void
.end method

.method public static values()[LJG;
    .locals 1

    .line 1
    sget-object v0, LJG;->Q:[LJG;

    invoke-virtual {v0}, [LJG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJG;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
