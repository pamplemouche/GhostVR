.class public final enum LRC;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LRC;

.field public static final enum B:LRC;

.field public static final enum C:LRC;

.field public static final enum D:LRC;

.field public static final enum E:LRC;

.field public static final enum F:LRC;

.field public static final enum G:LRC;

.field public static final enum H:LRC;

.field public static final synthetic I:[LRC;

.field public static final enum w:LRC;

.field public static final enum x:LRC;

.field public static final enum y:LRC;

.field public static final enum z:LRC;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, LRC;

    const/4 v1, 0x0

    const-string v2, "ACKNOWLEDGE_HANDLE_FAILURE"

    invoke-direct {v0, v2, v1}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->w:LRC;

    .line 2
    new-instance v0, LRC;

    const/4 v2, 0x1

    const-string v3, "INCOMING_MESSAGE_FAILURE"

    invoke-direct {v0, v3, v2}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->x:LRC;

    .line 3
    new-instance v0, LRC;

    const/4 v3, 0x2

    const-string v4, "OUTGOING_MESSAGE_FAILURE"

    invoke-direct {v0, v4, v3}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->y:LRC;

    .line 4
    new-instance v0, LRC;

    const/4 v4, 0x3

    const-string v5, "PERSISTENT_DESERIALIZATION_FAILURE"

    invoke-direct {v0, v5, v4}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->z:LRC;

    .line 5
    new-instance v0, LRC;

    const/4 v5, 0x4

    const-string v6, "PERSISTENT_READ_FAILURE"

    invoke-direct {v0, v6, v5}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->A:LRC;

    .line 6
    new-instance v0, LRC;

    const/4 v6, 0x5

    const-string v7, "PERSISTENT_WRITE_FAILURE"

    invoke-direct {v0, v7, v6}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->B:LRC;

    .line 7
    new-instance v0, LRC;

    const/4 v7, 0x6

    const-string v8, "PROTOCOL_VERSION_FAILURE"

    invoke-direct {v0, v8, v7}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->C:LRC;

    .line 8
    new-instance v0, LRC;

    const/4 v8, 0x7

    const-string v9, "REGISTRATION_DISCREPANCY"

    invoke-direct {v0, v9, v8}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->D:LRC;

    .line 9
    new-instance v0, LRC;

    const/16 v9, 0x8

    const-string v10, "NONCE_MISMATCH"

    invoke-direct {v0, v10, v9}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->E:LRC;

    .line 10
    new-instance v0, LRC;

    const/16 v10, 0x9

    const-string v11, "TOKEN_MISMATCH"

    invoke-direct {v0, v11, v10}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->F:LRC;

    .line 11
    new-instance v0, LRC;

    const/16 v11, 0xa

    const-string v12, "TOKEN_MISSING_FAILURE"

    invoke-direct {v0, v12, v11}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->G:LRC;

    .line 12
    new-instance v0, LRC;

    const/16 v12, 0xb

    const-string v13, "TOKEN_TRANSIENT_FAILURE"

    invoke-direct {v0, v13, v12}, LRC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRC;->H:LRC;

    const/16 v13, 0xc

    new-array v13, v13, [LRC;

    .line 13
    sget-object v14, LRC;->w:LRC;

    aput-object v14, v13, v1

    sget-object v1, LRC;->x:LRC;

    aput-object v1, v13, v2

    sget-object v1, LRC;->y:LRC;

    aput-object v1, v13, v3

    sget-object v1, LRC;->z:LRC;

    aput-object v1, v13, v4

    sget-object v1, LRC;->A:LRC;

    aput-object v1, v13, v5

    sget-object v1, LRC;->B:LRC;

    aput-object v1, v13, v6

    sget-object v1, LRC;->C:LRC;

    aput-object v1, v13, v7

    sget-object v1, LRC;->D:LRC;

    aput-object v1, v13, v8

    sget-object v1, LRC;->E:LRC;

    aput-object v1, v13, v9

    sget-object v1, LRC;->F:LRC;

    aput-object v1, v13, v10

    sget-object v1, LRC;->G:LRC;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, LRC;->I:[LRC;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LRC;
    .locals 1

    .line 1
    sget-object v0, LRC;->I:[LRC;

    invoke-virtual {v0}, [LRC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LRC;

    return-object v0
.end method
